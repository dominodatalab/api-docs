echo "Converting api_blueprint.apib =to=> index.html using aglio"
NOCACHE=1 BENCHMARK=1 aglio \
	--theme-variables aglio_overrides/aglio_styles.less \
  --theme-template triple \
	-i api_blueprint.apib \
	-o index.html

echo "Converting api_blueprint.apib =to=> Swagger 2.0 JSON using apib2swagger"
apib2swagger -i api_blueprint.apib -o swagger_2.0.json

echo "Converting Swagger 2.0 JSON =to=> Open API 3.0 JSON using api-spec-converter"
api-spec-converter -f swagger_2 -t openapi_3 -c swagger_2.0.json > openapi_3.0.json
