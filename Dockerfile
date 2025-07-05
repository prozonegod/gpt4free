FROM python:3.10-slim

WORKDIR /app
COPY . .

RUN pip install -U pip && pip install -r requirements.txt

CMD ["python", "-m", "g4f", "--port", "1337", "--debug"]
