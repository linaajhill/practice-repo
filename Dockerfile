FROM python:3.9-slim

# Set the working folder inside the container
WORKDIR /app

# Install git safely
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Copy your local code files into the container space
COPY . /app

# Grant permission for the entrypoint shell script to execute
RUN chmod +x /app/.github/scripts/entrypoint.sh
RUN chmod +x /app/.github/scripts/update_readme.sh

# Tell Docker what command to run when it springs to life
ENTRYPOINT ["/app/.github/scripts/entrypoint.sh"]