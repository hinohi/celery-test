FROM pypy:3-slim

RUN groupadd -r app && useradd -r -g app app

COPY requirements.txt /
RUN pip install --no-cache -r requirements.txt

USER app
