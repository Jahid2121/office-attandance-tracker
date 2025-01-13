FROM node:18-alpine

# Install dependencies required for node-gyp and pm2
RUN apk add --update --no-cache \
    python3 \
    make \
    g++ \
    git \
    openssh-client

# Install n8n and pm2 globally
RUN npm install -g n8n pm2

# Create n8n directory and set it as working directory
WORKDIR /home/node/.n8n

# Copy workflow
COPY workflow.json /home/node/.n8n/workflows/workflow.json

ENV N8N_PORT=10000
ENV NODE_ENV=production
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=user
ENV N8N_BASIC_AUTH_PASSWORD=password
ENV N8N_PROTOCOL=https
ENV N8N_HOST=office-attandance-tracker.onrender.com
ENV N8N_ENDPOINT_REST=/
ENV PORT=10000
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
# Expose port
EXPOSE 10000

# Start n8n using pm2
CMD ["pm2-runtime", "n8n"]