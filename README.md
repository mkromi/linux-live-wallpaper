# Linux-live-wallpaper
Live wallpaper changer for linux. Inspired from [thedevsaddam](https://github.com/thedevsaddam/ubuntu-live-wallpaper)


### Installation

Open terminal ( ctrl+alt+t ) and go to __Home__ directory

```bash
cd ~
```

Clone the repository

```bash
git clone https://github.com/mkromi/linux-live-wallpaper.git
```
or download the zip file manually and unzip to __Home__ directory

Change permission to 777

```bash
sudo chmod -R 777 linux-live-wallpaper
```
Open crontab in edit mode

```bash
crontab -e
```

Copy the line below and paste
```bash
*/5 * * * * /bin/sh /home/YOUR_USER_NAME/linux-live-wallpaper/app.sh
```
Replace YOUR_USER_NAME by your user name.

_Note:  To get username type `whoami` in interminal_

The Cron job will run the script every five minutes and change the wallpaper. You can configure the Cron job to change the refresh time.

### Credits:
* [Image source](https://source.unsplash.com)

### **License**
The **linux-live-wallpaper** is a open-source application licensed under the [MIT License](LICENSE).