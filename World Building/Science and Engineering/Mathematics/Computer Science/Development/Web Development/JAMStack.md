Links to: [[Web Technologies]]

The term was coined by Netlify CEO.
The approach is simple and has existed before, but no one was really using it.

**Major services**
- Vercel
- Netlify

Note: Vercel and Netlify offer a PaaS model for presenting static content

[[Static site generators]]

Some NextJS Features:
- Periodic SSG after a period from new requests
- On Demand SSG
- Static Tweets (no iframes)

Doing > Viewing: Use React, Vue, etc. + NextJS/Gatsby
For content, use Nuxt, Jekyll, Hugo, Eleventy

Some Netlify features:
- Edge functions - no JS
- add JS/TS script to docroot/netlify/edge-functions
- Parse HTML elements and modify based on request data and queries
	- e.g. Add geolocation data based on request