# Use official Python base image
FROM --platform=linux/arm64/v8 arm64v8/python:3.11

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port (if running a web app)
EXPOSE 80

# Define the command to run the app
CMD ["python", "app.py"]
