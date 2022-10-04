 #!/bin/bash
 
 echo "IaC 2 - em uma distribuição Oracle Linux 8.6."
 echo "Atualizando e baixando arquivos..."
 yum update -y
 yum install apache unzip -y
 cd /tmp
 wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
 
 echo "Descompactando arquivo .zip..."
 unzip main.zip
 
 echo "Copiando arquivos ...."
 cd linux-site-dio-main
 cp -R * /var/www/html/
 
 echo "Acesse o endereço https://localhost:80 para acesso ao site."