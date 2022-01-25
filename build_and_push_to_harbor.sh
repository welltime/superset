THIS=`readlink -f "${BASH_SOURCE[0]}"`
DIR=`dirname "${THIS}"`
cd $DIR

docker build -t k8s-prod1-harbor.mcn.ru/superset/superset:latest . &&
	  docker push k8s-prod1-harbor.mcn.ru/superset/superset:latest
