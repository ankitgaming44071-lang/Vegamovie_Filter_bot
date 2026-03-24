FROM python:3.12-slim

WORKDIR /app

# 👇 ye line add karo (IMPORTANT)
RUN apt-get update && apt-get install -y git

COPY . /app/

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

CMD ["python3", "bot.py"]
