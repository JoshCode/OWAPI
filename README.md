# OW API Docker
This server is a simple way to get read-only information about player statistics in the game
Overwatch by Blizzard, based on https://github.com/SunDwarf/OWAPI, but made in Docker container form for convenience.

## Game data
This API does not aim to expose data about the heroes, maps, etc in the game. For that, use 
https://github.com/jamesmcfadden/overwatch-api.
 
## API Docs
OWAPI has a very simple RESTful API to get information.  
As the API is read-only, the only method required is `GET`.  

See the [doc](/api.md) for more information. 


### Running an instance

OWAPI-Docker has a few requirements:

 - Docker v17.12.x (tested on community edition build c97c6d6)
 - Only tested on amd64 architectures
 
**Installation steps:**

 1. **Pull the Docker image.**
 
     `docker pull joshcode/owapi`
     
 2. **Run the Docker image.**
 
     `docker run -p 4444:4444 --name owapi joshcode/owapi`

     This starts a Docker container with the name 'owapi' from the image 'joshcode/owapi', and it maps Docker port 4444 to host port 4444. If you want to run the server on a different port, change the second port number.