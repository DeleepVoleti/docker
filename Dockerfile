FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/index.html
RUN useradd dilip
USER dilip 
# should not let containere to run with root access
COPY index.html /usr/share/nginx/html/index.html
CMD ["nginx","-g", "daemon off;"]