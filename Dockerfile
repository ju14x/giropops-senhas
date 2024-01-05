FROM cgr.dev/chainguard/python:latest-dev as builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt --user

FROM cgr.dev/chainguard/python:latest
WORKDIR /app
COPY --from=builder /home/nonroot/.local/lib/python3.12/site-packages /home/nonroot/.local/lib/python3.12/site-packages
COPY . .
ENV REDIS_HOST=localhost
ENV APP_VERSION=2.0.0
EXPOSE 5000
ENTRYPOINT [ "python", "-m", "flask", "run", "--host=0.0.0.0" ]

