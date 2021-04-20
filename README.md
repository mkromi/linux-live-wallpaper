# Linux-live-wallpaper
Live wallpaper changer for linux. Inspired from [thedevsaddam](https://github.com/thedevsaddam/ubuntu-live-wallpaper)


### Installation

Open terminal ( ctrl+alt+t ) and go to __Home__ directory

```bash
cd ~
```
Install __jq__ dependency.

```bash
sudo apt install jq
```
Set environment variable __DISPLAY__ to __0__

```bash
export DISPLAY=:0
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

Go to the directory

```bash
cd linux-live-wallpaper
```

Run for the first time

```bash
./app.sh
```

To change wallpaper automatically open crontab in edit mode

```bash
crontab -e
```

Copy the line below and paste
```bash
*/5 * * * * /bin/bash /home/YOUR_USER_NAME/linux-live-wallpaper/app.sh
```
Replace YOUR_USER_NAME by your user name.

_Note:  To get username type `whoami` in interminal_

The Cron job will run the script every five minutes and change the wallpaper. You can configure the Cron job to change the refresh time.

__If  you want set wallpaper tags__
```bash
cd ~
cd linux-live-wallpaper
```
then run the command below:

```bash
./configure.sh
```

#### These tags are already configured.
* food
* nature
* people
* technology
* buildings
* objects

__Note:__ Tags are the keyword to find specific wallpapers.

### Dependencies:
* [jq](https://packages.debian.org/search?keywords=jq)

### Credits:
* [Image source](https://source.unsplash.com)

### **License**
The **linux-live-wallpaper** is a open-source application licensed under the [MIT License](LICENSE).
