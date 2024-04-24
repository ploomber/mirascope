FROM python:3.11-slim

# mirascope dependencies require psycopg2, which requires libpq-dev and gcc
RUN apt-get update && apt-get install -y libpq-dev gcc

RUN mkdir /app
WORKDIR /app

RUN pip install pipx --no-cache-dir
ENV PATH="/root/.local/bin:${PATH}"

RUN pipx install poetry

COPY . .
RUN poetry install

RUN poetry run mkdocs build --site-dir /app/site
WORKDIR /app/site

CMD ["python", "-m", "http.server", "80"]

