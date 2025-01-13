FROM n8nio/n8n:latest

# Copy workflow
COPY workflow.json /home/node/.n8n/workflows/workflow.json

# Set environment variables
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

EXPOSE 10000

CMD ["n8n", "start"]