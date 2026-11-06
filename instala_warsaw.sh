#!/bin/bash

if [[ "$EUID" = 0 ]]; then
    echo "Iniciando a instalação ..."
else
    echo "Necessário acesso root. Encerrando"
    exit 1
fi

echo '### Instalando a dependencia execstack ###'
dnf install execstack

echo '### Instalando o Modulo Warsaw ###'
rpm -ivh --nodigest --nosignature warsaw-2.22.1-6.x86_64.rpm

echo '### Configurando Servicos ###'
systemctl stop warsaw.service
execstack -s /usr/local/bin/warsaw/core
chattr +i /usr/local/bin/warsaw/core
chattr +a /usr/local/bin/warsaw
systemctl start warsaw.service

echo '### Gravando Certificado Auto Assinado ###'
sleep 30s
cp /usr/local/etc/warsaw/rootca.crt /etc/pki/ca-trust/source/anchors/warsaw-ca.crt
update-ca-trust

echo '### Modulo Instalado ###'

exit 0
