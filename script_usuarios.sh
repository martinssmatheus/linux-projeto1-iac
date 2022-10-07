#!/bin/bash

echo "Criando Diretórios...."

sudo mkdir /primeiro_projeto
sudo mkdir /primeiro_projeto/publico
sudo mkdir /primeiro_projeto/adm
sudo mkdir /primeiro_projeto/ven
sudo mkdir /primeiro_projeto/sec

echo "Diretórios Criados..."

echo "Criando Grupos de Usuários..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Grupos Criados..."

echo "Criando Usuarios..."

sudo useradd carlos -c "Carlão" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM 
sudo passwd carlos -e

sudo useradd maria -c "Maria Thereza" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM 
sudo passwd maria -e

sudo useradd joao -c "Joao do Caminhão" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM 
sudo passwd joao -e

sudo useradd debora -c "debora" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN 
sudo passwd debora -e

sudo useradd sebastiana -c "Tiana" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN 
sudo passwd sebastiana -e

sudo useradd roberto -c "Robertinho" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN 
sudo passwd roberto -e

sudo useradd josefina -c "Fininha" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC 
sudo passwd josefina -e

sudo useradd amanda -c "Amandinha" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC 
sudo passwd amanda -e

sudo useradd rogerio -c "Rogerinho Brabão" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC 
sudo passwd rogerio -e

echo "Usuarios Criados..."

echo "Definição de owner dos Diretórios..."

sudo chown root:root /primeiro_projeto
sudo chown root:root /primeiro_projeto/publico
sudo chown root:GRP_ADM /primeiro_projeto/adm
sudo chown root:GRP_VEN /primeiro_projeto/ven
sudo chown root:GRP_SEC /primeiro_projeto/sec

echo "Definição OK..."

echo "Definição das Permissões dos Diretórios"

sudo chmod 777 /primeiro_projeto
sudo chmod 777 /primeiro_projeto/publico
sudo chmod 770 /primeiro_projeto/adm
sudo chmod 770 /primeiro_projeto/ven
sudo chmod 770 /primeiro_projeto/sec

echo "Definição das Permissões OK..."

echo "Finalizado!!!"
