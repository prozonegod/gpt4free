FROM python:3.10-slim

# Install git and ffmpeg (for pydub warning)
RUN apt-get update && apt-get install -y git ffmpeg

WORKDIR /app
COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt

CMD ["python", "-m", "g4f", "--port", "1337", "--debug"]
