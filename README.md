# Domino API Documentation

This repository includes our [**web-based API documentation**](https://dominodatalab.github.io/api-docs) and machine-readable versions in [API Blueprint](api_blueprint.apib) and [Swagger 2.0](swagger_2.0.json) formats.

Need help? Email us at support@dominodatalab.com

## Libraries & SDKs

* [Python](https://github.com/dominodatalab/python-domino)
* [R](https://github.com/dominodatalab/r-package)

## Build Instructions

### Input:
* `api_blueprint.apib` is our API documented using the [API Blueprint](https://apiblueprint.org) standard

### Output from running `convert.sh`:
* `index.html` are our human-readable web documentation converted from the API Blueprint file using [aglio](https://github.com/danielgtaylor/aglio)
* `swagger_2.0.json` is a Swagger 2.0 JSON version converted by [apib2swagger](https://github.com/kminami/apib2swagger)

### Dependencies

- `npm install -g apib2swagger aglio api-spec-converter`