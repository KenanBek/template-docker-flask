# template-docker-flask
Template for Docker flask projects.

Build and Run Docker:

    docker build -t template-docker-flask:latest .
    docker run -d -p 5000:5000 template-docker-flask

If you are running on Windows using docker toolbox do not forget to run docker machine and setup env in your cmd:

    docker-machine env default
    & "C:\Program Files\Docker Toolbox\docker-machine.exe" env default | Invoke-Expression

