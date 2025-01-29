# Stable official Python runtime base image
FROM python:3.11-alpine

# Metadata
LABEL maintainer="your-email@example.com"
LABEL version="1.0"
LABEL description="A simple Python application"

# Working directory
WORKDIR /app

# Copy the Python script into the container
COPY app.py .

# Run the Python script when the container starts
CMD ["python", "app.py"]
