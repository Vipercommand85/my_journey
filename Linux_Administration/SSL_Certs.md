# Prerequisites
* Linux system running CentOS or RHEL
* currently on the internet
* valid DNS entry for desired domain

## Initial installation
```bash
yum install httpd mod_ssl epel-release -y
```
* **epel-release** is a repo that has a lot of quality third part packages for RHEL based systems utlizing the **certbot** application
```bash
yum install cerbot -y
```
* next will need to install the **Apache** plugin
* can search using the following command
```bash
yum search certbot
```
```bash
yum install python2-certbot-apache -y
```

## Ensure that the web server is started
```bash
systemctl start httpd
```
* this command will allow the web service to start automatically should the system need to reboot
```bash
systemctl enable httpd
```
* command will show the DocumentRoot folded for a specified service
*  **-r** is a recursive option
*  **-i** will ignore case
```bash
grep -ri DocumentRoot /etc/httpd
```

## Adding firewall rules with firewall-cmd
```bash
firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service=https
```
* after issuing these commands without errors, you will need to reload the firewall service
```bash
firewall-cmd --reload
```
 
## Setting up the SSL Cert utilizing Certbot command
* if you do not supply any arguement to the command, you will be prompted for all the needed information at command line
```bash
certbot --apache -d [domain-name]
```
* will have the option to chose HTTP and HTTPS traffic allowed or only HTTPS that redirect HTTP to HTTPS

* default location for SSL config: **/etc/httpd/conf.d/ssl.conf
* comment above **SSLProtocol all -SSLv2** & **SSL Cipher Suite** # Inscure:
```bash
# Insecure:
#SSLProtocol all -SSLv2
SSLProtocol all -SSLv2 -SSLv3

# SSL Cipger Suite
# Insecure:
# SSLCipherSuite HIGH:MEDIUM:!aNULL:!MD5:!SEED:!IDEA
SSLCipherSuite EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH
```
* ideal to run a config test after making configuration changes to ensure that there is no misconfiguration present
```bash
apachectl configtest
```
* next restart the web server
```bash
systemctl restart httpd
```
* can use the following command to renew any outdated certificates
* all certificates are valid for 90 days
```bash
certbot renew
```

## Ideal to create a CRON job to handle this renewel autoamtically
```bash
crontab -e
```
* will allow you to edit this file
```bash
# Renew SSL Certs every 90 Days
@monthly  /usr/bin/certbot renew &>/var/log/certbot.cronlog
```
* **&>/var/log/certbot.cronlog** will hold all output created by the commnad
