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

We need to use WP API here.
- The documentation for changing theme is here: https://developer.wordpress.com/docs/api/1.1/post/sites/%24site/themes/mine/
- The documentation for obtaining the OAuth token is here: https://developer.wordpress.com/docs/oauth2/
- The documentation for creating the client secrets is here: 

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
