cd ~/github/wiki
rm -rf _book

git pull
gitbook build

rm -rf ~/wikipage
cp -rf _book/. ~/wikipage

cd ~/github/wiki-publisher

docker stop wiki-web
docker rm wiki-web
docker image rm wiki-web
docker build -t wiki-web .
docker run -p 8082:8082 --name wiki-web -d wiki-web