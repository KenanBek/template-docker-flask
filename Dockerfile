FROM ubuntu:latest
LABEL Kanan Rahimov "mail@kenanbek.me"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

COPY ./app /app
COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

WORKDIR /app
ENV PYTHONPATH=/app

ENTRYPOINT ["python"]
CMD ["app.py"]
