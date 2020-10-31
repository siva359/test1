FROM python:latest
WOKDIR /app
RUN pip install flask
COPY 111.py app.py
ENTRYPOINT ["python","app.py"]
