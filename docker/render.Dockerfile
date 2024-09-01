# Use the base image from langflow
FROM langflowai/langflow:latest

# Set the working directory
WORKDIR /app

# Copy your local code to the Docker image
COPY . /app

# Install dependencies using poetry
RUN poetry install

# Set the entrypoint to run your application
ENTRYPOINT ["python", "-m", "langflow", "run"]
