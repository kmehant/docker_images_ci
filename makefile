IMAGE_NAME=gnu-cobol
USER_NAME=kmehant

build: 
	docker build -t $(USER_NAME)/$(IMAGE_NAME):latest .

runcontainer: 
	docker run --rm $(USER_NAME)/$(IMAGE_NAME):latest

dockerpush:
	echo "$(DOCKER_PASSWORD)" | docker login -u "$(DOCKER_USERNAME)" --password-stdin
	docker push $(USER_NAME)/$(IMAGE_NAME):latest
	

dockerprod: build runcontainer dockerpush
	echo "success"


