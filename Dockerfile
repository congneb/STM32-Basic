# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy file
COPY requirements.txt .

# Install the dependencies listed in requirments.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files in local machine into Docker image
COPY . .

# Command to run python
CMD [ "python3", "my_script.py" ]
