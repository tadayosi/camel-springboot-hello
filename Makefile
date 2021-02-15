ORG = tadayosi
APP = camel-springboot-hello
VERSION = 0.0.1-SNAPSHOT

springboot-run:
	mvn spring-boot:run

docker-build:
	mvn docker:build

docker-run:
	docker run -it --rm $(ORG)/$(APP):$(VERSION)

k8s-run:
	kubectl run $(APP) --labels="app=camel" --image=$(ORG)/$(APP):$(VERSION)

k8s-build:
	mvn k8s:build

k8s-push:
	mvn k8s:push

k8s-deploy:
	mvn k8s:resource k8s:deploy -DskipTests

oc-build:
	mvn oc:build

oc-push:
	mvn oc:push

oc-deploy:
	mvn oc:resource oc:deploy -DskipTests

# deprecated
fabric8-setup:
	mvn io.fabric8:fabric8-maven-plugin:3.5.42:setup
