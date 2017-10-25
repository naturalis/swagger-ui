FROM alpine:3.5

MAINTAINER hettling

ENV VERSION "v2.2.10"
ENV FOLDER "swagger-ui-2.2.10"
ENV API_URL "http://localhost:8080/v2/reference-doc"
ENV API_KEY "**None**"
ENV OAUTH_CLIENT_ID "**None**"
ENV OAUTH_CLIENT_SECRET "**None**"
ENV OAUTH_REALM "**None**"
ENV OAUTH_APP_NAME "**None**"
ENV OAUTH_ADDITIONAL_PARAMS "**None**"
ENV SWAGGER_JSON "/app/swagger.json"
ENV PORT 80

## Port where the NBA runs on
ENV NBA_PORT 8080
	
RUN apk add --update nginx
RUN mkdir -p /run/nginx

COPY nginx.conf /etc/nginx/


# create swagger directory
RUN mkdir -p /usr/share/nginx/html/endpoints-reference/
# copy swagger files to the `/js` folder
ADD ./dist/* /usr/share/nginx/html/endpoints-reference/
ADD ./docker-run.sh /usr/share/nginx/

EXPOSE 8080

CMD ["sh", "/usr/share/nginx/docker-run.sh"]
