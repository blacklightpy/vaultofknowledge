SSL (old)
TLS (new)

**Free providers**
- Let's Encrypt SSL/TLS
- Cloudflare SSL/TLS
	- Needs 2 Certificates: User>CF and CF>Server
	- User>CF is implied in Cloudflare CDN
	- CF>Server can be obtained using CF Origin Certificate (valid for 15 years)
	- CF Flexible encryption mode doesn't encrypt incoming requests to server, use Origin Certificate instead.