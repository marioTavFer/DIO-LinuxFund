# Script para criar infraestrutura de usuarios, grupo de usuários e diretorios e permissões.
#
# primeiro mudar para root, só depois executar script.
#
# dono de todos os diretórios criados é o root.
# no dir "publico" acesso total a todos usuários
# usuários de cada grupo - acesso total à sua pasta
# usuários de outros grupos - sem acesso

# Criação dos diretórios
mkdir /home/ven
mkdir /home/adm
mkdir /home/sec
mkdir /home/publico

# Criação dos grupos
groupadd GRP_VEN
groupadd GRP_ADM
groupadd GRP_SEC


# criação de usuários e associando a grupos"

useradd carlos -c "carlos Silva" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -6 Senha123)
passwd carlos -e
useradd maria -c "maria Silva" -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -6 Senha123)
passwd maria -e
useradd joao_ -c joao_Silva -m -s /bin/bash -g GRP_ADM -p $(openssl passwd -6 Senha123)
passwd joao_ -e

useradd debora -c "debora Silva" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -6 Senha123)
passwd debora -e
useradd sebastiana -c "sebastiana Silva" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -6 Senha123)
passwd sebastiana -e
useradd roberto -c "roberto Silva" -m -s /bin/bash -g GRP_VEN -p $(openssl passwd -6 Senha123)
passwd roberto -e

useradd josefina -c "josefina Silva" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -6 Senha123)
passwd josefina -e
useradd amanda -c "amanda Silva" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -6 Senha123)
passwd amanda -e
useradd rogerio -c "rogerio Silva" -m -s /bin/bash -g GRP_SEC -p $(openssl passwd -6 Senha123)
passwd rogerio -e


# Definição de propriedade e permissões
chown -R :GRP_VEN /home/ven
chown -R :GRP_ADM /home/adm
chown -R :GRP_SEC /home/sec


chmod 770 /home/ven
chmod 770 /home/adm
chmod 770 /home/sec
chmod 777 /home/publico


