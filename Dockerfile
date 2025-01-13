FROM n8nio/n8n

COPY workflow.json /home/node/.n8n/workflows/workflow.json

ENV N8N_PORT=5678
ENV NODE_ENV=production
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=user
ENV N8N_BASIC_AUTH_PASSWORD=password

CMD ["n8n", "start"]