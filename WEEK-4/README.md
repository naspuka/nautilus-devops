- Created a React app(client) and an express app(server)
- added a development dockerfile to my client, server and nginx app(Dockerfile.dev).
- created an 'app' working directory in the Dockerfile to host the server, client and nginx folder.
- Ran npm install to intall packages for both client and server Dockerfile.
- Added a command(CMD) to start both the server and client app.

- created a default.conf file in my nginx folder which re-routes an endpoint when hit to client and server respectively(django & nest).
- added both client and server upstream, and also added /django and /nest location.

- added a docker-compose file which includes the version and the services needed to run the application
- 3 services are added to the docker-compose file which contains each build dockerfile.dev from each of the 3 services and a volume containing snapshot of constant packages.
- pushed the existing images from running docker-compose up to docker hub(docker tag week-4_nginx:latest naspuka/nginx_endpoint_api & docker push naspuka/nginx_endpoint_api)