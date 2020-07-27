docker-image: protoc-generate ## build noriio/nori docker image
	docker build -f Dockerfile -t ${DOCKER_IMAGE}:${DOCKER_TAG} .
.PHONY: docker-image

docker-push: ## push docker image to registry
	docker push ${DOCKER_IMAGE}:${DOCKER_TAG}
.PHONY: docker-push