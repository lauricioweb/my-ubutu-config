instalando php myadmin
sudo apt update && sudo apt upgrade -y

sudo apt install apache2 mysql-server php php-mbstring php-zip php-gd php-json php-curl php-mysql -y

sudo systemctl restart apache2

sudo apt install phpmyadmin -y

sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin


🔹 Se o login do phpMyAdmin der erro:
Se o root não estiver funcionando, altere o método de autenticação:

Acesse o MySQL com sudo:

bash
Copiar
Editar
sudo mysql
Mude a autenticação para mysql_native_password:

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'senhafacil2040';
FLUSH PRIVILEGES;
EXIT;
Agora tente logar no phpMyAdmin com root e a senha que definiu.

