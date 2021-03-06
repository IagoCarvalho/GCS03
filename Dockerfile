# Use an official Python runtime as a parent image
FROM python:2

# Copy the current directory contents into the container at /app
ADD . /code

# Set the working directory to /app
WORKDIR /code

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME pythoncontainer

# Run app.py when the container launches
CMD ["python", "app.py"]
