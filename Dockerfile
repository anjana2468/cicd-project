
FROM python:3.8  # Use a specific Python version for better control

WORKDIR /data

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3-distutils \
    python3-setuptools \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*  # Clean up to reduce image size

# Install Django
RUN pip install --upgrade pip && \
    pip install django==3.2

# Copy the project files into the container
COPY . .

# Run migrations
RUN python manage.py migrate

# Expose the port the app will run on
EXPOSE 8000

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
