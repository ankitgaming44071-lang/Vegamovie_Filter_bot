FROM python:3.12-slim

WORKDIR /app

# 👇 ye sab install karo (IMPORTANT)
RUN apt-get update && apt-get install -y \
    git \
    gcc \
    libjpeg-dev \
    zlib1g-dev \
    && apt-get clean

COPY . /app/

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

CMD ["python3", "bot.py"]
