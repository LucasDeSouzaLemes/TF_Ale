# TF01 - Nova Tech Systems

- **Nome:** Yago Canton
- **RA:** 6324598
- **Curso:** Análise e Desenvolvimento de Sistemas

- **Nome:** Nova Tech Systems
- **Ramo:** Soluções de TI e Infraestrutura de Redes
- **Descrição:** Especializada em simplificar a gestão de infraestrutura tecnológica com foco em automação, segurança e alta disponibilidade.

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
- Logs personalizados em `/var/log/nginx/novatech_*.log`
- Permissões configuradas para garantir segurança (755 nos diretórios)
- Página 404 customizada integrada ao Nginx

## Comandos Úteis
```bash
# Verificar status do Nginx
sudo systemctl status nginx

# Ver logs de acesso
sudo tail -f /var/log/nginx/novatech_access.log

# Ver logs de erro
sudo tail -f /var/log/nginx/novatech_error.log
```
