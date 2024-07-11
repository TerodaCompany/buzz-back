FROM python:3.10.13

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .
COPY requirements2.txt .

# Install dependencies
RUN pip install -r requirements.txt
RUN pip install --no-dependencies -r requirements2.txt

# Copy the rest of the application code
COPY . .

# Expose the port on which your Flask app will run
EXPOSE 8080

# Run the Flask application
CMD ["python", "run.py"]