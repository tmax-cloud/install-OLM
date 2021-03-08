docker pull lightbend-docker-registry.bintray.io/lightbend/akka-cluster-demo:1.1.0
docker pull lightbend-docker-registry.bintray.io/lightbend/akkacluster-operator:v1.0.0

docker tag lightbend-docker-registry.bintray.io/lightbend/akka-cluster-demo:1.1.0 {registry}/akka-cluster-demo:1.1.0
docker tag lightbend-docker-registry.bintray.io/lightbend/akkacluster-operator:v1.0.0 {regsitry}/akkacluster-operator:v1.0.0

docker push {registry}/akka-cluster-demo:1.1.0
docker push {registry}/akkacluster-operator:v1.0.0
