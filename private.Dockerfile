FROM quay.io/hedgedoc/hedgedoc:1.10.0

ARG UID=10000
COPY --chown=$UID /oauth-index.js /hedgedoc/lib/web/auth/oauth2/index.js

ENV CMD_EMAIL=false
ENV CMD_DEFAULT_PERMISSION=limited
ENV CMD_ALLOW_FREEURL=true
ENV CMD_ALLOW_ANONYMOUS=false
ENV CMD_ALLOW_ANONYMOUS_EDITS=false
ENV CMD_OAUTH2_AUTHORIZATION_URL=https://auth.ietf.org/api/openid/authorize
ENV CMD_OAUTH2_PROVIDERNAME="IETF Datatracker"
ENV CMD_OAUTH2_SCOPE="openid email profile roles"
ENV CMD_OAUTH2_TOKEN_URL=https://auth.ietf.org/api/openid/token
ENV CMD_OAUTH2_USER_PROFILE_DISPLAY_NAME_ATTR=name
ENV CMD_OAUTH2_USER_PROFILE_EMAIL_ATTR=email
ENV CMD_OAUTH2_USER_PROFILE_URL=https://auth.ietf.org/api/openid/userinfo
ENV CMD_OAUTH2_USER_PROFILE_USERNAME_ATTR=name
ENV CMD_OAUTH2_ROLES_CLAIM=roles
