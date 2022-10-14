.PHONY: docker

docker:
	docker pull ubuntu
	docker build -t knittl/ubuntu .
	docker build -f Dockerfile-teach -t knittl/ubuntu:teach .
