#!/bin/bash

#Cria diretórios
echo "Criando diretórios..."
mkdir /publico /adm /ven /sec

#Cria grupos
echo "Criando grupos..."
groupadd -r GRP_ADM
groupadd -r GRP_VEN
groupadd -r GRP_SEC

#Altera permissão de pastas
echo "Alterando permissões..."
chown -R root:GRP_ADM /adm
chown -R root:GRP_VEN /ven
chown -R root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

#Cria usuários
echo "Criando usuários..."
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -e 2022-09-26
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -e 2022-09-26
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -e 2022-09-26
gpasswd -a carlos GRP_ADM
gpasswd -a maria GRP_ADM
gpasswd -a joao GRP_ADM

useradd debora -c "Debora"-s /bin/bash -m -p $(openssl passwd -crypt Senha123) -e 2022-09-26
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -e 2022-09-26
useradd roberto -c “"Roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -e 2022-09-26
gpasswd -a debora GRP_VEN
gpasswd -a sebastiana GRP_VEN
gpasswd -a roberto GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -e 2022-09-26
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -e 2022-09-26
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -e 2022-09-26
gpasswd -a josefina GRP_SEC
gpasswd -a amanda GRP_SEC
gpasswd -a rogerio GRP_SEC

echo "Finalizado!"
