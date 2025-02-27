# For a new site (my trick)

If you've never had a blog that used Sela in the past, all you have to do is visit this link, and create a new blog through that form:

https://wordpress.com/start/with-theme/domains-theme-preselected?ref=calypshowcase&theme=sela&theme_type=free&intervalType=yearly

> [!INFO] How did I find this?
> Basically, I just opened up the theme selection page with another theme, Sequential, and hovered over the "choose site" button, and saw that it had this URL:
> 
> https://wordpress.com/start/with-theme/domains-theme-preselected?ref=calypshowcase&theme=sequential&theme_type=free&intervalType=yearly
> 
> I just replaced `sequential` with `sela` and visited the URL, and voila, it built me a new site with that theme, even though it claimed that Sela was dead after the procedure completed. But there was a launch site button, so when I clicked it, it built the site with Sela as the theme.

# For a site that once had Sela (classic interface URL trick)

> [!INFO] How I figured this out
> 
> This was easy, there were a few community posts telling you how to use this URL if you had a blog that used the theme before it was retired.

I hear that it should be possible by visiting this URL: your-blog.wordpress.com/wp-admin/themes.php?search=sela

https://your-blog.wordpress.com/wp-admin/themes.php should list all the themes you had installed with the classic view, and it should include retired themes you installed in the past.

# For a site that never had Sela (API method)

> [!INFO] How I figured this out
> 
> How I figured this out was, when I realized that I could create a fresh site with Sela as the starting theme by copying the URL of the "choose site" button, which would only let you create a new site with that theme, I wanted to see if I could find a similar URL to set the theme for an already existing site. But when I select a site and visit the theme selector, I only found an activate button that doesn't show the URL.
> 
> With a little help, I realized I could use the Developer Tools to inspect the GET/POST requests to figure out what's going on. And I saw that it was making a POST request to an endpoint with just the theme name as the payload value. And soon, I saw that this endpoint was officially documented in the WordPress.com Developer Resources.
> 
> And it definitely did work for legacy themes too.

We need to use WordPress REST API here. The documentation for changing theme is here: https://developer.wordpress.com/docs/api/1.1/post/sites/%24site/themes/mine/

This requires sending a POST request, with the site authentication. There are two ways to do this.
## Easy way: With the Development Console

When you use the Development Console, you are already logged in to WordPress.com in your browser, so there is no further token required for authentication.

- Login to your Wordpress.com account
- Visit https://developer.wordpress.com/docs/api/console/
- Ensure that the dropdowns on the top left are selected to "WP.COM API" and "v1.1"
- Now, the search bar is to be used for finding the available requests. The default selection would be "GET".
- Type in "themes/mine"
- It will show two results, a GET request and a POST request, under the themes heading.
- Choose the POST request (it will be `POST /site/$site/themes/mine`)
- Then, replace the `$site` value with `your-blog.wordpress.com`
- Then, there will be a section at the bottom asking you to fill in the parameters.
- There, in the `themes` attribute, fill in `sela`.

## The hard way: with API access tokens

If you are sending a POST request from outside the browser, you'll need to get an authorization key to prove that you are authorized to make changes to your blog. For this, you'll need to set up a client application, and authorize it to access your blog with OAuth 2.0. It will give you a time limited code, which you have to use along with your client secrets to get a full auth token, you have to use that to send the POST request.

- The REST API Getting started guide is here: https://developer.wordpress.com/docs/api/getting-started/
- The interface for creating the client secrets is here: https://developer.wordpress.com/apps/
- The documentation for obtaining the OAuth token is here: https://developer.wordpress.com/docs/oauth2/

### Step 1: Create the Client Application

- Go to https://developer.wordpress.com/apps/
- Fill in the title like "Theme Changer" or "bla"
- Fill in the description (it is compulsory)
- Fill in the website URL (make it anything, like `http://google.com`) (it is compulsory, and should have `http://` or `https://`)
- Fill in the redirect URL as `http://localhost` (will explain why below)
- Fill in the captcha question's answer
- Leave the type as "Web"
- Click "Create Application"
- On the next page, click "Update"
- Scroll down, and from the "OAuth Information" section, copy the Client ID and Client Secret

The reason you have to put in the redirect URL as http://localhost is that, when you authorize the application, the browser will redirect you to the address: http://your-redirect-url?code=abcd1234&some_bla_bla. So if your redirect URL is http://localhost, it will redirect the page to the invalid page, http://localhost?code=abcd1234&blablabla. You could then just copy the code from there (which in this example is abcd1234).

### Step 2: Get the OAuth access token

So now to get this code, you need to visit this link after replacing `CLIENT_ID` with the Client ID value you copied earlier (the URL assumes you put the redirect URL as http://localhost), and RESPONSE_TYPE as either `code` or `token`. According to the documentation, `code` is preferred for server side programs where we intent to store the full OAuth token permanently, while `token` is preferred for client side programs where we need a temporary token, and that lasts for two weeks.

https://public-api.wordpress.com/oauth2/authorize?client_id=CLIENT_ID&redirect_uri=http://localhost&response_type=RESPONSE_TYPE

---
#### Easy option: If you use RESPONSE_TYPE as token

- After editing CLIENT_ID, visit: https://public-api.wordpress.com/oauth2/authorize?client_id=CLIENT_ID&redirect_uri=http://localhost&response_type=token
- You will be redirected to http://localhost?#access_token=YOUR_TOKEN&expires_in=1209600&token_type=bearer&site_id=SITE_ID&scope=
- Copy what appears as `YOUR_TOKEN` and `SITE_ID`.

This is the easy way to get the access token.
#### Longer option: If you use RESPONSE_TYPE as code
- After editing CLIENT_ID, visit: https://public-api.wordpress.com/oauth2/authorize?client_id=CLIENT_ID&redirect_uri=http://localhost&response_type=code
- You will be redirected to http://localhost?code=YOUR_CODE&blablabla
- Copy what appears as `YOUR_CODE`.

Now make the following POST request using cURL, by running the following command in your terminal (Command Prompt, for Windows users), after replacing `CLIENT_ID`, `CLIENT_SECRET` and `YOUR_CODE` with the values you copied earlier.

```sh
curl -X POST "https://public-api.wordpress.com/oauth2/token" -d "client_id=CLIENT_ID" -d "client_secret=CLIENT_SECRET" -d "redirect_uri=http://localhost" -d "grant_type=authorization_code" -d "code=YOUR_CODE"

```

Then you will get a response in the following fashion: 

```JSON
{"access_token":"YOUR_ACCESS_TOKEN","token_type":"bearer","blog_id":"SITE_ID","blog_url":"http:\/\/your-blog.wordpress.com","scope":""}
```

Copy the access token, blog ID and you already know the blog URL.

This is the long way to get the access token.

### Step 3. Send the POST request

Now run either of the following (both are the same), after replacing `YOUR_SITE` and `YOUR_ACCESS_TOKEN`. YOUR_SITE can either be the address of your site (without `https://`) or the `SITE_ID` you got earlier.

Option 1:
```sh
curl -X POST https://public-api.wordpress.com/rest/v1.1/sites/YOUR_SITE/themes/mine -H "Authorization: Bearer YOUR_ACCESS_TOKEN" -H "Content-Type: application/json" -d '{"theme": "sela"}'
```

Option 2:
```sh
curl https://public-api.wordpress.com/rest/v1/sites/YOUR_SITE/themes/mine -H 'authorization: Bearer YOUR_ACCESS_TOKEN' --data-urlencode 'theme=sela'
```

If it is successful, you'll see a JSON response with the theme ID and name of Sela.
