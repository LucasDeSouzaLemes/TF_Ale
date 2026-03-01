#!/bin/bash

# TF01 - Script de Instalação Automática - Nova Tech Systems
# Autor: Equipe de Implantação

echo "Iniciando a instalação da infraestrutura Nova Tech Systems..."

# 1. Atualizar sistema e instalar Nginx
sudo apt update
sudo apt install -y nginx

# 2. Criar diretório do site e configurar permissões
sudo mkdir -p /var/www/novatech
sudo cp -r . /var/www/novatech/
sudo chown -R $USER:www-data /var/www/novatech
sudo chmod -R 755 /var/www/novatech

# 3. Configurar Virtual Host
sudo cp nginx/site.conf /etc/nginx/sites-available/novatech
sudo ln -sf /etc/nginx/sites-available/novatech /etc/nginx/sites-enabled/
sudo rm -f /etc/nginx/sites-enabled/default

# 4. Verificar e Reiniciar Nginx
sudo nginx -t && sudo systemctl restart nginx
sudo systemctl enable nginx

echo "Instalação concluída com sucesso! Acesse http://localhost"
