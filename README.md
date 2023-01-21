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
