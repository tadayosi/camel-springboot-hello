spring-run:
	mvn spring-boot:run

docker-build:
	mvn docker:build

docker-run:
	docker run -it --rm tadayosi/camel-springboot-hello
