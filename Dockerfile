FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y

RUN pip install -r requirements.txt

# Create necessary directories
RUN mkdir -p /app/artifacts
RUN mkdir -p /app/templates

CMD ["python3", "app.py"]