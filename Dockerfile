FROM python:3.6.12-alpone
WORKDIR /app
RUN apt-get update && pip install flask
COPY 111.py app.py
EXPOSE 8081
ENTRYPOINT ["python","app.py"]
