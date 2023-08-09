FROM nginx:1.24-alpine

RUN echo "proxy_set_header Host \$host;" >> /etc/nginx/proxy_params;
RUN echo "proxy_set_header X-Real-IP \$proxy_protocol_addr;" >> /etc/nginx/proxy_params
RUN echo "proxy_set_header X-Forwarded-For \$proxy_protocol_addr;" >> /etc/nginx/proxy_params
RUN echo "proxy_set_header X-Forwarded-Proto \$scheme;" >> /etc/nginx/proxy_params

COPY nginx.conf /etc/nginx/templates/default.conf.template

