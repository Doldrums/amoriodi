clean:
	rm -rf ./build

deploy: build
	cd ./amoriodi && firebase deploy
	@echo "Visit https://amoriodi.xyz"

build: 
	cd ./amoriodi && webdev build -r  --output web:deploy  