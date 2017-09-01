[![Build Status](https://travis-ci.org/naturalis/swagger-ui.svg?branch=master)](https://travis-ci.org/naturalis/swagger-ui)

**This is a fork from https://github.com/swagger-api/swagger-ui in order to customise the look of the generated API reference documentation for the endpoints and models of the Naturalis Biodiversity API (NBA).**

### How to run
docker run -p 80:8080 naturalis/swagger-ui

Open a browser and swagger-ui will run under http://localhost:80 assuming that there is a swagger JSON served under http://localhost:8080/v2/reference-doc 

