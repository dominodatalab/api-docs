echo "Converting apiary.apib to index.html using aglio"
NOCACHE=1 BENCHMARK=1 aglio \
	--theme-variables aglio_overrides/aglio_styles.less \
  --theme-template aglio_overrides/triple.jade \
	-i apiary.apib \
	-o index.html

echo "Converting apiary.apib to Swagger 2.0 JSON using apib2swagger"
apib2swagger -i apiary.apib -o swagger_2.0.json

# echo "Converting apiary.apib to Swagger 2.0 YAML using apitransformer.com"
# curl \
#   -F "file=@apiary.apib" \
#   https://apitransformer.com/api/transform?output=swagger20yaml \
#   > swagger_2.0.yaml

# sleep 5 

# echo "Converting apiary.apib to Swagger 2.0 JSON using apitransformer.com"
# curl \
#   -F "file=@apiary.apib" \
#   https://apitransformer.com/api/transform?output=swagger20json \
#   > swagger_2.0.json

# sleep 5 

# echo "Converting apiary.apib to RAML 0.8 YAML using apitransformer.com"
# curl \
#   -F "file=@apiary.apib" \
#   https://apitransformer.com/api/transform?output=raml08 \
#   > raml_0.8.yaml
