FROM python:3.11-slim as builder
WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

FROM builder as runner

COPY . .

EXPOSE 5000

<<<<<<< HEAD
ENV MONGO_IP="examen_andres"
=======
ENV MONGO_IP="mongo"
>>>>>>> releases.quacker_dao
ENV MONGO_PORT="27017"

CMD ["python", "app.py"]
