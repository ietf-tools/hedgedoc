# hedgedoc
Modified version of Hedgedoc with Datatracker roles support

## Usage

```
ghcr.io/ietf-tools/hedgedoc:latest
```

### Environment Variables:

#### DB Configuration

- `CMD_DB_URL`: PostgreSQL Connection String
- `PGSSLMODE`: *(optional)* SSL Connection Mode (e.g. `require`). See [accepted values](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNECT-SSLMODE)
- `NODE_EXTRA_CA_CERTS`: *(optional)* Path to additional CA certificates for the DB connection. (e.g. `/ca/some-cert.crt`)

#### General Configuration

- `CMD_DOMAIN`: The hostname of the site
- `CMD_PROTOCOL_USESSL`: Whether to use HTTPS (should be set to `true`)
- `CMD_SESSION_SECRET`: Some random string to use encrypt the sessions.

#### OAuth2 Configuration

- `CMD_OAUTH2_CLIENT_ID`: OAuth2 Client ID
- `CMD_OAUTH2_CLIENT_SECRET`: OAuth2 Client Secret
- `CMD_OAUTH2_ACCESS_ROLE`: Roles mappings that are allowed to login, in the following format:
  ```
  tuple1-left,tuple1-right;tuple2-left,tuple2-right;...
  ```
  Example value:
  ```
  member,tools;chair,tools
  ```
