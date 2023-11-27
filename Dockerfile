FROM python:2.7-slim
# Set the working directory to /app
LABEL version="1.0" 
LABEL mantainer="Sheida Moazeni <sheydami98@gmail.com>"
LABEL description="Python project with flask and redish. Lab wWek 11"
# Use an official Python runtime as a parent image
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app
# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
# Make port 80 available to the world outside this container
EXPOSE 80
# Define environment variable
ENV NAME Sheida
# Run app.py when the container launches
CMD ["python", "app.py"]