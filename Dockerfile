FROM n8nio/n8n
COPY workflow.json /home/node/.n8n/workflows/workflow.json
ENV N8N_PORT=10000
ENV NODE_ENV=production
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=user
ENV N8N_BASIC_AUTH_PASSWORD=password
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Change the CMD to use the full path
CMD ["/usr/local/bin/n8n", "start"]