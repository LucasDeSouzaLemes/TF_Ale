#!/bin/bash

# TF01 - Script de Instalação Automática - CloudSync Solutions
# Autor: Equipe de Implantação

echo "Iniciando a instalação da infraestrutura CloudSync Solutions..."

# 1. Atualizar sistema e instalar Nginx
sudo apt update
sudo apt install -y nginx

# 2. Criar diretório do site e configurar permissões
sudo mkdir -p /var/www/cloudsync
sudo cp -r . /var/www/cloudsync/
sudo chown -R $USER:www-data /var/www/cloudsync
sudo chmod -R 755 /var/www/cloudsync

# 3. Configurar Virtual Host
sudo cp nginx/site.conf /etc/nginx/sites-available/cloudsync
sudo ln -sf /etc/nginx/sites-available/cloudsync /etc/nginx/sites-enabled/
sudo rm -f /etc/nginx/sites-enabled/default

# 4. Verificar e Reiniciar Nginx
sudo nginx -t && sudo systemctl restart nginx
sudo systemctl enable nginx

echo "Instalação concluída com sucesso! Acesse http://localhost"
