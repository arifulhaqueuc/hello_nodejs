echo "stopping all containers"
docker kill $(docker ps -q)
echo "removing all containers"
docker rm $(docker ps -a -q)
echo "removing all containers images"
docker rmi $(docker images -q)


# HOST='localhost'
# BROWSER_PORT=8000
# # Define Docker port number that gave in Dockerfile
# DOC_PORT=8080
# # Define a Docker container name randomly
# DOC_CONT_NAME=dfsitecont1
# # Define the Docker image name from previous step
# DOC_IMG_NAME=dfsiteimg1
# # Build the required docker image
# docker build --tag $DOC_IMG_NAME .
# # Run the Docker command
# docker run \
# 	--publish $BROWSER_PORT:$DOC_PORT \
# 	--detach \
# 	--name $DOC_CONT_NAME \
# 	$DOC_IMG_NAME


docker build --tag bulard189 .


docker run \
	--publish 8000:8080 \
	--detach \
	--name bPPPbUU bulard189


docker container ls

echo "View the output: localhost:8000"