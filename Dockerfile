FROM python:latest
WORKDIR /app
RUN apt-get update
RUN pip install flask
COPY 111.py app.py
EXPOSE 8081
ENTRYPOINT ["python","app.py"]
