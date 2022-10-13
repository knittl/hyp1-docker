.PHONY: docker

docker:
	docker pull ubuntu
	docker build -t knittl/ubuntu .
