# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory
WORKDIR /code

# Copy the current directory contents into the container at /code
COPY . /code

# Install the dependencies
RUN pip install --upgrade pip
RUN pip install django django-ninja confluent-kafka

# Expose port 8000 for Django
EXPOSE 8000

# Command to run Django app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
