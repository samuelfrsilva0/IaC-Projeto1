#!/bin/bash

echo "Criado usuarios do sistema...."

useradd guest12 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest12 -e
useradd guest13 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest13 -e
useradd guest14 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest14 -e
useradd guest15 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest15 -e

echo "Finalizado!!"
