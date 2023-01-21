# linux-web-workshop


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
