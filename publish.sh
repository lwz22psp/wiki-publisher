cd ~/github/wiki
rm -rf _book

git pull
gitbook build

cd ~/github/wiki-publisher

rm -rf wikipage
cp -rf ~/github/wiki/_book/. wikipage



docker stop wiki-web
docker rm wiki-web
docker image rm wiki-web
docker build -t wiki-web .
docker run -p 8082:80 --name wiki-web -d wiki-web