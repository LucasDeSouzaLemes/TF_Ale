# Plano de Testes - TF01

Este guia detalha como validar se a implantação da **Nova Tech Systems** foi realizada com sucesso, seguindo os critérios de avaliação da tarefa.

## 1. Validação do Servidor (Nginx)
Após rodar o script de instalação, execute:
```bash
# Verificar se o serviço está ativo e habilitado no boot
sudo systemctl is-active nginx
sudo systemctl is-enabled nginx

# Validar a sintaxe da configuração
sudo nginx -t
```
**Resultado esperado:** O status deve ser `active` e a sintaxe `ok`.

## 2. Acesso e Navegação
1. Acesse `http://localhost` no navegador.
2. Clique em todos os links do menu (Home, Sobre, Serviços, Contato).
**Resultado esperado:** Todas as páginas devem carregar com o estilo CSS aplicado e sem erros 404 nos links internos.

## 3. Teste de Página 404 Personalizada
Tente acessar uma URL que não existe, como: `http://localhost/teste-erro`.
**Resultado esperado:** Deve ser exibida a página estilizada da Nova Tech Systems com o título "404", e não a página padrão branca do Nginx.

## 4. Validação de Logs
Realize alguns acessos ao site e verifique se os logs estão sendo registrados nos arquivos personalizados:
```bash
# Verificar logs de acesso
ls -l /var/log/nginx/novatech_access.log
sudo tail /var/log/nginx/novatech_access.log
```
**Resultado esperado:** O arquivo deve existir e conter os registros dos seus acessos recentes.

## 5. Verificação de Permissões
Verifique se os arquivos em `/var/www/novatech` possuem as permissões corretas:
```bash
ls -la /var/www/novatech/website
```
**Resultado esperado:** Diretórios devem ter `drwxr-xr-x` (755) e arquivos `-rw-r--r--` (644).

## 6. Teste de Responsividade
Abra o site no navegador, aperte `F12` para abrir as ferramentas do desenvolvedor e alterne para o modo "Dispositivo Móvel".
**Resultado esperado:** O layout deve se ajustar (o cabeçalho deve empilhar e as fontes devem permanecer legíveis).

---

## 7. Como instalar o WSL (Windows Subsystem for Linux)
Caso você ainda não tenha o Linux no seu Windows, siga estes passos rápidos:

1. Abra o **PowerShell** (ou Terminal) como **Administrador**.
2. Digite o seguinte comando e aperte Enter:
   ```powershell
   wsl --install
   ```
3. Aguarde o processo terminar e **reinicie o seu computador**.
4. Após reiniciar, o Ubuntu abrirá automaticamente para terminar a instalação. Siga as instruções para criar seu **usuário** e **senha**.

---

## 8. Testando o Projeto via WSL
Com o WSL instalado, siga este passo a passo para testar a implantação:

1. Abra o terminal do seu **Ubuntu** no Windows.
2. Navegue até a pasta do projeto (o Windows mapeia seus arquivos em `/mnt/c/`):
   ```bash
   cd /mnt/c/Users/Yago/Desktop/Tf-Ale
   ```
3. Dê permissão e execute o script de instalação:
   ```bash
   sudo chmod +x scripts/install.sh
   ./scripts/install.sh
   ```
4. O script instalará o Nginx e configurará tudo dentro do Linux.
5. **No seu navegador do Windows**, acesse: `http://localhost`.

O site que está rodando dentro do Linux (WSL) ficará visível no seu navegador Windows normalmente!
