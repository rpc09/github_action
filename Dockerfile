FROM python:3.8.5-alpine3.12

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["ddtrace-run", "python", "app.py"]
