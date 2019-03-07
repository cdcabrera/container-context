# Container Context

Run a container against a local run script. 

Contains `Dockerfile`s aimed at my own need to double check OS context when testing shell scripts.

## Requirements
The basic requirements:
 * [Docker](https://docs.docker.com/engine/installation/)
 * If you want to use the convenience NPM scripts you'll need...
   *  [NodeJS and NPM](https://nodejs.org/)

## How to use
1. First you'll need to build the images... Make sure Docker is running.
1. Then either
    ```shell
    $ cd [./src/[CONTAINER YOU WANT]]
    $ docker build -t [MADE UP NAME YOU WANT] .
    $ docker run -it --rm -v "$(pwd):/data" --entrypoint=/bin/sh --name [MADE UP NAME YOU USED BEFORE] [MADE UP NAME YOU USED BEFORE]
    ```
    Or use the correlating `package.json` NPM scripts
    ```shell
    $ npm run [CONTAINER YOU WANT]:build
    $ npm run [CONTAINER YOU WANT]
    ```
1. To exit, normally you could hit the key combo `ctrl-c`, but more likely you'll need to type...
   ```shell
   $ exit
   ```
   This should bring the container down so it's not running in the background.
   If you get frustrated and shut the terminal instance down, you'll probably leave the container 
   hanging out in the background. To get a list of containers running...
   ```shell
   $ docker ps
   ```
   To shut down the specific one you want you can type
   ```shell
   $ docker stop [ID OR NAME]
   ```
   
