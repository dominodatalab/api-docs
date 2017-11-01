echo "Converting api_blueprint.apib to index.html using aglio"
NOCACHE=1 BENCHMARK=1 aglio \
	--theme-variables aglio_overrides/aglio_styles.less \
  --theme-template aglio_overrides/triple.jade \
	-i api_blueprint.apib \
	-o index.html

echo "Converting api_blueprint.apib to Swagger 2.0 JSON using apib2swagger"
apib2swagger -i api_blueprint.apib -o swagger_2.0.json
