#!/bin/bash

echo "Criando diretótios......."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos......."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios com atribuições aos grupos......."

useradd carlos -c "Carlos de Jesus" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João Antonio Silva " -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria das Graças" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Debora Fernanda Sous " -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Ferreira" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto Serpa" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina Gomes" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda Simionato" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogério Pires" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões......."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm 
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado......."
