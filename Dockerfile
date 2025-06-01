# Base image
FROM python:3.12.10

# Set the working directory in the container
WORKDIR /app

# Copy all project files to the container, preserving structure (including templates)
COPY /task1 .

# Install dependencies if requirements.txt exists
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Expose port 80
EXPOSE 80

# Set the default command to run the app
CMD ["python", "matches.py"]