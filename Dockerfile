FROM python:3.12-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
ENV REDIS_HOST=localhost
ENV APP_VERSION=1.0.0
EXPOSE 5000
CMD [ "flask", "run", "--host=0.0.0.0" ]

