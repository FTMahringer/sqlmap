# Use the latest Python 3.13.2 slim image
FROM python:3.13.2-slim

# Install dependencies
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Clone the latest sqlmap from GitHub
RUN git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git /opt/sqlmap

# Set working directory
WORKDIR /opt/sqlmap

# Create a volume for sqlmap output
VOLUME /var/sqlmap

# Set default command and entrypoint
CMD ["-h"]
