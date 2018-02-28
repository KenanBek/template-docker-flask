# template-docker-flask

Docker template for Python Flask projects.

Build and Run Docker:

    docker build -t template-docker-flask:latest .
    docker run -d -p 5000:5000 --name tdf template-docker-flask

If you are running on Windows using Docker Toolbox do not forget to run docker machine and setup env in your cmd:

    docker-machine env default
    & "C:\Program Files\Docker Toolbox\docker-machine.exe" env default | Invoke-Expression

After changes in source code you can updated app in docker using following commands:

    docker rm -f tdf
    docker run -d -p 5000:5000 --name tdf template-docker-flask

This command is the same as following:

    docker stop tdf
    docker rm tdf
    docker run -d -p 5000:5000 --name tdf template-docker-flask

Here 'tdf' is a name which we set for our container.