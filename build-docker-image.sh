docker build -t fireworks-web:v1.0.0 .

#tag name
docker tag fireworks-web:v1.0.0 liuzy/fireworks-web:latest

# push to docker hub
docker push liuzy/fireworks-web:latest

# clean docker images
# shellcheck disable=SC2006
imagesId=`docker images | grep fireworks-web | awk '{print $3}'`
echo $imagesId
for str in $imagesId
do
  docker rmi $str -f
done