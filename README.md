# Warsaw Fedora 4x

Shell Script para instalar o módulo Warsaw (Guardião) no Fedora 4x. Testado até o Fedora 45.

Funciona para qualquer banco que utilize o Warsaw: Banco do Brasil, Bradesco, Itaú, ...

Utiliza o binário original do warsaw v2.22.1.

Ao baixar, certifique-se que o script instala_warsaw.sh tenha permissão de execução e execute como administrador:

```shell

chmod +x instala_warsaw.sh

sudo ./instala_warsaw.sh

```

OBS1: após instalação é preciso permitir explicitamente que o browser acesse conteúdo no computador local acessando o site que depende do Warsaw.

OBS2: alguns browsers, por exemplo Librewolf, precisam carregar diretamente o certificado autoasinado (/usr/local/etc/warsaw/rootca.crt) ou o módulo de certificados builtin (NSS:Root Certs - libnssckbi.so) para acesso aos certificados instalados a nível do sistema operacional (ver: Configurações - Privacidade e Segurança - Conexão e segurança de software - Configurações Avançadas - Certificados - Gerenciador de Dispositivos de Segurança). 

Dúvidas adicionais, envia um email: warsaw_fedora@outlook.com.br
