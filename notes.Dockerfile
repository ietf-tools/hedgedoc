FROM quay.io/hedgedoc/hedgedoc:1.9.9

ARG UID=10000
COPY --chown=$UID /s3-upload.js /hedgedoc/lib/web/imageRouter/s3.js

ENV CMD_ALLOW_ANONYMOUS=false
ENV CMD_ALLOW_ANONYMOUS_EDITS=true
ENV CMD_ALLOW_FREEURL=true
ENV CMD_AUTO_VERSION_CHECK=false
ENV CMD_COOKIE_POLICY=none
ENV CMD_CSP_ALLOW_FRAMING=false
ENV CMD_DEFAULT_PERMISSION=editable
ENV CMD_EMAIL=false
ENV CMD_ENABLE_STATS_API=true
ENV CMD_OAUTH2_AUTHORIZATION_URL=https://auth.ietf.org/api/openid/authorize
ENV CMD_OAUTH2_PROVIDERNAME=IETF Datatracker
ENV CMD_OAUTH2_SCOPE=openid email profile
ENV CMD_OAUTH2_TOKEN_URL=https://auth.ietf.org/api/openid/token
ENV CMD_OAUTH2_USER_PROFILE_URL=https://auth.ietf.org/api/openid/userinfo
ENV CMD_OAUTH2_USER_PROFILE_DISPLAY_NAME_ATTR=name
ENV CMD_OAUTH2_USER_PROFILE_EMAIL_ATTR=email
ENV CMD_OAUTH2_USER_PROFILE_USERNAME_ATTR=name
ENV CMD_PROTOCOL_USESSL=true
ENV CMD_URL_ADDPORT=false