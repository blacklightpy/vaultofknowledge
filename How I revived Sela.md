# For a new site

If you've never had a blog that used Sela in the past, all you have to do is visit this link, and create a new blog through that form:

https://wordpress.com/start/with-theme/domains-theme-preselected?ref=calypshowcase&theme=sela&theme_type=free&intervalType=yearly

How did I find this? Basically, I just opened up the theme selection page with another theme, Sequential, and hovered over the "choose site" button, and saw that it had this URL:

https://wordpress.com/start/with-theme/domains-theme-preselected?ref=calypshowcase&theme=sequential&theme_type=free&intervalType=yearly

I just replaced `sequential` with `sela` and visited the URL, and voila, it built me a new site with that theme, even though it claimed that Sela was dead after the procedure completed. But there was a launch site button, so when I clicked it, it built the site with Sela as the theme.

# For a site that once had Sela

I hear that it should be possible by visiting this URL: your-blog.wordpress.com/wp-admin/themes.php?search=sela

https://your-blog.wordpress.com/wp-admin/themes.php should list all the themes you had installed with the classic view, and it should include retired themes you installed in the past.

# For a site that never had Sela

We need to use WordPress REST API here.

The documentation for changing theme is here: https://developer.wordpress.com/docs/api/1.1/post/sites/%24site/themes/mine/

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

## Hard way: With API Keys

If you are sending a POST request from outside the browser, you'll need to get an authorization key. For this, you'll need to set up a client application, and authorize it to access your blog with OAuth 2.0. It will give you a time limited code, which you have to use along with your client secrets to get a full auth token, you have to use that to send the POST request.

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

So now to get this code, you need to visit this link after replacing CLIENT_ID and CLIENT_SECRET with the Client ID and Client Secret with the values you copied earlier: 

```sh
curl -X POST https://public-api.wordpress.com/rest/v1.1/sites/clashofclansspeical.wordpress.com/themes/mine \
-H "Authorization: Bearer YOUR_ACCESS_TOKEN" \
-H "Content-Type: application/json" \
-d '{"theme": "sela"}'
```

```sh
curl https://public-api.wordpress.com/rest/v1/sites/clashofclansspeical.wordpress.com/themes/mine \
-H 'authorization: Bearer S)QpqmmF8sWp75b6!7NbP656S#yhFO^ukfLGS#c1VR#(Ru5hc#qX@ELFh#Si4c3M' \
--data-urlencode 'theme=sela'
```
