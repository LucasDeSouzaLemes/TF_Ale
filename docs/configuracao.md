# Passo a Passo da Configuração Técnica - TF01

Este documento descreve as etapas realizadas para configurar o servidor e o ambiente da **Nova Tech Systems**.

## 1. Preparação do Ambiente
- Criação da estrutura de pastas conforme o padrão exigido (`website`, `nginx`, `scripts`, `docs`).
- Inicialização do arquivo `README.md` com as informações do aluno e da empresa.

## 2. Desenvolvimento do Website
- Implementação de 5 páginas HTML5 semânticas: `index.html`, `sobre.html`, `servicos.html`, `contato.html` e `404.html`.
- Criação de um sistema de design responsivo em `css/style.css` utilizando variáveis CSS para facilitar a manutenção.

## 3. Configuração do Servidor Web (Nginx)
- Criação do arquivo `nginx/site.conf` definindo:
    - O `root` apontando para a pasta do site.
    - Configuração de logs de acesso e erro em arquivos dedicados.
    - Mapeamento da página de erro 404 personalizada.
    - Regras de segurança para negar acesso a arquivos sensíveis (começados por ponto).

## 4. Automação e Deploy
- Desenvolvimento do script `scripts/install.sh` que executa:
    1. Instalação do pacote `nginx` via `apt`.
    2. Criação do diretório `/var/www/novatech`.
    3. Cópia dos arquivos do projeto para o servidor local.
    4. Ativação do Virtual Host através de links simbólicos em `/etc/nginx/sites-enabled/`.
    5. Reinicialização do serviço para aplicar as mudanças.

## 5. Ajustes de Segurança e Permissões
- Aplicação de permissões `755` para diretórios e `644` para arquivos.
- Configuração do usuário proprietário como o usuário atual e o grupo como `www-data` (padrão do Nginx).
