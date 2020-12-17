# Base Image
FROM python:stretch 

# Copy files to the file system
COPY . /app
WORKDIR /app

# Shell commands
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Executable which defines image
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"] 
