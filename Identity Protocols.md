# Record Keeping
- Lightweight Directory Access Protocol (LDAP)
- Domain Name Service (DNS)

# Authentication
Used to verify a user

- Simple Authentication and Security Layer (SASL): 
	- SASL is an authentication protocol base for Apache. For example, mod_authz_ldap authentication method queries LDAP for credentials and verifies against it.
- Security Assertion Markup Language (SAML)

# Authorization
Used to authorize a user. (e.g. Any user regardless of who it is may be able to do something if they are authorized)

- OAuth 2.0

# Authentication and Authorization
- OpenID Connect

> [!NOTE] 
> OpenID Uses JWT.
> Also, Gitea's Demo allows entering custom OpenID URI.
> Gitea also claims to have WebAuthn, but I haven't seen it in practice.