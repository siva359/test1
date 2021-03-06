FROM python:3.6.12-alpine
WORKDIR /app
RUN pip install flask
COPY 111.py app.py
EXPOSE 8081
ENTRYPOINT ["python","app.py"]
