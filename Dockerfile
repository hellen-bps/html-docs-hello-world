# Usa uma imagem base do Nginx
FROM nginx:alpine

# Remove os arquivos padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do seu site para a pasta do nginx
COPY . /usr/share/nginx/html

# Expõe a porta padrão do nginx
EXPOSE 80

# O comando padrão já inicia o Nginx no foreground, então não precisa mudar

