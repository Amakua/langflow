# Use the base image from langflow
FROM langflowai/langflow:latest

# Set the working directory
WORKDIR /app

# Install additional dependencies
RUN pip install pdfplumber

# Copy your local code to the Docker image
COPY . /app

# Set the entrypoint to run your application
ENTRYPOINT ["python", "-m", "langflow", "run"]
