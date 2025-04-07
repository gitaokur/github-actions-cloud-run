FROM python:3.9-slim

WORKDIR /app

COPY requirement.txt .

EXPOSE 8080

RUN pip install --no-cache-dir -r requirement.txt

COPY . .

CMD ["python", "app.py"]
