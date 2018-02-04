export MESSAGE="Howdy!"
#node src/index
# docker run -it --rm --name my-running-script -v "$PWD":/usr/src/app -w /usr/src/app node:4 node your-daemon-or-script.js
docker run --rm \
--name load-balanced-app \
-p 8081:8080 \
-e "MESSAGE=First instance" \
-w /usr/src/app \
-v "$PWD"/src:/usr/src/app \
node:8.9-alpine node index.js


