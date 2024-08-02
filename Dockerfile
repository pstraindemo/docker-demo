# runtime
FROM python:3.8-slim

# set the working directory in the container
WORKDIR /app

# copy the current directory into the container at /app
COPY . /app/

# install needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# make port 80 available outside the container
EXPOSE 80

# define environment variables
ENV NAME world

# Run app.py 
CMD ["python", "app.py"]

