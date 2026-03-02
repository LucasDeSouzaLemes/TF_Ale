# TF01 - CloudSync Solutions

- **Nome:** Lucas de Souza Lemes
- **RA:** 6324582
- **Curso:** Análise e Desenvolvimento de Sistemas

- **Nome:** CloudSync Solutions
- **Ramo:** Soluções em Nuvem e Sincronização de Dados
- **Descrição:** Especializada em integração de sistemas em nuvem, sincronização de dados em tempo real e soluções escaláveis para empresas modernas.

#   # Como Executar

### Pré-requisitos
- Ubuntu 20.04+ ou similar
- Acesso sudo

### Instalação
```bash
# Navegue até a pasta do projeto
cd Tf-Ale

# Execute o script de instalação
chmod +x scripts/install.sh
./scripts/install.sh
```

### Acesso
Site principal: [http://localhost](http://localhost)
Páginas disponíveis:
- `/` (Home)
- `/sobre.html`
- `/servicos.html`
- `/contato.html`

## Configurações Aplicadas
- Nginx configurado com virtual host personalizado
- Logs personalizados em `/var/log/nginx/cloudsync_*.log`
- Permissões configuradas para garantir segurança (755 nos diretórios)
- Página 404 customizada integrada ao Nginx

## Comandos Úteis
```bash
# Verificar status do Nginx
sudo systemctl status nginx

# Ver logs de acesso
sudo tail -f /var/log/nginx/cloudsync_access.log

# Ver logs de erro
sudo tail -f /var/log/nginx/cloudsync_error.log
```
