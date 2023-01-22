# Setting up & Securing an Apache Web Server on UBUNTU 22.04


```
sudo cp /var/www/html/index.html /var/www/html/index.ubuntu.html

sudo apt-get install apache2 -y

curl checkip.amazonaws.com
```
![image](https://user-images.githubusercontent.com/28993140/213912238-1a1a844f-4d31-482a-af2d-19b0cc5772c7.png)

- Goto https://freedns.afraid.org/

- create an account

- Go to subdomains

![image](https://user-images.githubusercontent.com/28993140/213912372-43e16d53-5267-4920-b23e-f0676cabd76a.png)

- Add 'my.to' by selecting it in the available subdomains list and activate it.

- Add a subdomain called <YOUR_NAME>.my.to, and assign the *PUBLIC* IP of your linux machine 

  (you can check your linux machine'spublic IP by typing `curl checkip.amazonaws.com`)

- go to your web page using the newly assigned domain name in the free DNS

![image](https://user-images.githubusercontent.com/28993140/213912743-66f0795b-856d-44fd-aa8e-4421bf648aed.png)


![image](https://user-images.githubusercontent.com/28993140/213912386-ebbf335a-d5a6-42a7-ada0-cc9931bce998.png)

![image](https://user-images.githubusercontent.com/28993140/213912627-1031cbef-e58a-48fa-b0e9-86aadef4315c.png)



- Install certbot

```
sudo apt-get install certbot -y
```

- Stop you Apache Server

`sudo service apache2 stop`

- request a certificate from "lets'encrypt"

`sudo certbot certonly --standalone -d <YOUR-NAME>.my.to`

![image](https://user-images.githubusercontent.com/28993140/213913290-f1d78933-1225-4787-87a1-74c9aa95e748.png)
![image](https://user-images.githubusercontent.com/28993140/213913311-39a055c7-51bd-4167-802c-d46cd9f6688b.png)


- save your default server configuration

```
sudo cp /etc/apache2/sites-enabled/000-default.conf /etc/apache2/sites-enabled/000-default.conf.save
```

- edit your configuration file and add the 443 VirutalHost Entry and specify the generated key and certificate

![image](https://user-images.githubusercontent.com/28993140/213913697-67a88595-e47d-4bc8-96a1-0cd51835d998.png)

- activate ssl on your ubuntu linux instance

`sudo a2enmod ssl`

- Test your apache configuration and check that the ouput is `Syntax OK`

`sudo apachectl configtest`

- Start you Apache Server

`sudo service apache2 start`

- check that your connection is secure via https : https://<YOUR_DOMAIN_NAME>

![image](https://user-images.githubusercontent.com/28993140/213914381-bda8531f-a373-4825-9537-024cb3c7cc6f.png)

![image](https://user-images.githubusercontent.com/28993140/213914447-e626c261-a889-4a85-9eed-82b2a4da30a3.png)

- Display the certificate

![image](https://user-images.githubusercontent.com/28993140/213914483-0c74cd88-afd6-4953-a781-6a6bbdbdc1b3.png)

![image](https://user-images.githubusercontent.com/28993140/213914503-128dab1c-9f96-4bf3-bebb-b3fcc39ff192.png)

- install postfix to send an automated email from the server

```
sudo apt-get install postfix
```

```
echo "This is the body of the email" | mail -s "This is the subject line" -r from@linux.org <YOUR_EMAIL_ADDRESS_GOES_HERE>
```


- **BONUS : **
Write a Bash script that test all your colleague's websites and validate an HTTPS connection is set and that the page contains their names
