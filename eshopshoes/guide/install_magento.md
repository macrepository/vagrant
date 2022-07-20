## Magento installation
bin/magento setup:install \
--base-url=http://ecommerce.com/ \
--db-host=localhost \
--db-name=ecommerce \
--db-user=root \
--db-password=Macapobres@1 \
--backend-frontname=admin \
--admin-firstname=shem \
--admin-lastname=macapobres \
--admin-email=macapobresshem@gmail.com \
--admin-user=shem \
--admin-password=pwdnac255 \
--language=en_US \
--currency=USD \
--timezone=America/Chicago \
--use-rewrites=1 \
--search-engine=elasticsearch7 \
--elasticsearch-host=localhost.localdomain \
--elasticsearch-port=9200

## Change Mysql password
grep "A temporary password" /var/log/mysqld.log
mysql_secure_installation
service mysqld restart 

## Check elastic Search Running
curl localhost:9200 
