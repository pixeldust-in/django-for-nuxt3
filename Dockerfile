FROM python:3.9

ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONHASHSEED=random \
    PYTHONDONTWRITEBYTECODE=1 \
    # pip:
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100


# System deps:
RUN \
    apt-get update && \
    pip install -U pip setuptools && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN pip install -e .