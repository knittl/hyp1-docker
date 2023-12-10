.PHONY: docker push

docker:
	docker pull ubuntu
	docker build -t knittl/ubuntu .
	docker build -f Dockerfile-teach -t knittl/ubuntu:teach .

push:
	docker push knittl/ubuntu
	docker push knittl/ubuntu:teach
