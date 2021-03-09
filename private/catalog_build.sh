opm alpha bundle generate --directory ./akka_1.0.0 --package akka-cluster-operator_custom --channels stable --default stable
docker build -t {registry}/my-manifest-bundle:0.0.1 -f bundle.Dockerfile .
docker push {registry}/my-manifest-bundle:0.0.1

opm index add --bundles {registry}/my-manifest-bundle:0.0.1 --tag {regsitry}/my-index:1.0.0 -c="docker"
docker push {registry}/my-index:1.0.0
