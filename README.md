# linux-web-workshop


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


```
sudo apt install python3 python3-venv libaugeas0
sudo vim /etc/needrestart/needrestart.conf
sudo python3 -m venv /opt/certbot/
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
```

```
sudo certbot certonly --standalone -d kplr85.my.to
```

```
sudo apt-get install postfix
```
```
echo "This is the body of the email" | mail -s "This is the subject line" -r from@linux.org <YOUR_EMAIL_ADDRESS_GOES_HERE>


- **BONUS : **
Write a Bash script that test all your colleague's websites and validate an HTTPS connection is set and that the page contains their names
