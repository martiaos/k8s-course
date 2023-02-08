FROM python:3.10-alpine

RUN mkdir /app
WORKDIR /app
COPY src/* . /app/

RUN pip3 install -r requirements.txt

EXPOSE 5000
CMD ["python3", "/app/main.py"]