THIS=`readlink -f "${BASH_SOURCE[0]}"`
DIR=`dirname "${THIS}"`
cd $DIR

sha=$(git rev-parse HEAD)
docker rmi k8s-prod1-harbor.mcn.ru/superset/superset:latest &&
docker build -t k8s-prod1-harbor.mcn.ru/superset/superset:$sha \
    -t k8s-prod1-harbor.mcn.ru/superset/superset:latest . &&
    docker push k8s-prod1-harbor.mcn.ru/superset/superset:$sha &&
    docker push k8s-prod1-harbor.mcn.ru/superset/superset:latest
