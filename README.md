[![Build Status](https://travis-ci.org/naturalis/swagger-ui.svg?branch=master)](https://travis-ci.org/naturalis/swagger-ui)

**This is a fork from https://github.com/swagger-api/swagger-ui in order to customise the look of the generated 
API reference documentation for the endpoints and models of the Naturalis Biodiversity API (NBA).**

### How to run
In order to run, the URL at which the swagger API definition is served must be passed in the
environment variable `API_URL`:

`docker run -p 80:8080 -e VALIDATOR_URL=null -e API_URL=http://localhost:8080/swagger.json naturalis/swagger-ui`

Open a browser and swagger-ui will run under http://localhost:80 
Note that validation of the API definition is disabled in the above example.
