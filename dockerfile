# Stable official Python runtime base image
FROM python:3.11-alpine

# Metadata
LABEL maintainer="your-email@example.com"
LABEL version="1.0"
LABEL description="A simple Python application"

# Working directory
WORKDIR /app

# Copy source code into the container
COPY src/main.py /app/main.py

# Install dependencies (if any requirements file exists)
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run the Python application when the container starts
CMD ["python", "main.py"]
