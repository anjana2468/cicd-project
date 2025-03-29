FROM python:3.8

WORKDIR /data

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3-distutils \
    python3-setuptools \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*  # Clean up to reduce image size

# Install Django
RUN pip install --upgrade pip && pip install django==3.2

# Copy project files into the container
COPY . .

# Expose the application port
EXPOSE 8000

# Run migrations and start the server
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]

