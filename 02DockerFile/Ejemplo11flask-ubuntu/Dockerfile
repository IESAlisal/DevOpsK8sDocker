FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y python3-venv python3-dev python3-pip
RUN pip install Flask

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]
