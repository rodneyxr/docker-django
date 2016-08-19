# Docker Django
Use Docker Compose and Docker to deploy Django in development and production environments.

While in development mode, `./code/` will be mounted within the container and any changes you make locally will be reflected
in the container.

## Commands

#### Build the image:

    docker-compose build

#### Run in development:

    docker-compose up

#### Run in production:
    
    docker-compose -f production.yml up

## Getting Started
  * Put your Django project in `./code/`
  * Make sure `./code/requirements.txt` includes at least the following:
    * Django==1.10
    * gunicorn (required for production)
    * psycopg2 (optional)
  * run `docker-compose build`
  * run `docker-compose up`
  * Go to http://127.0.0.1:8000 in your browser
