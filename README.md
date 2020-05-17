# finviz-frame
RPI 4 based finviz stockmap frame.

Fetches stock map data from finviz and shows it on your raspberry pi display.
Finviz is awesome, subscribe to it!

![Photo](/images/finviz-display.jpg)

## Components
 * Raspberry Pi 4: https://www.raspberrypi.org/products/raspberry-pi-4-model-b/
 * Raspberry Pi Display: https://www.raspberrypi.org/products/raspberry-pi-touch-display/
 * NeeGo display case: https://www.amazon.com/Raspberry-Screen-Monitor-Touchscreen-Display/dp/B081VT2CPW

Follow the NeeGo assembly instructions to put it all together.

## Software

I used Pyxian SDK from Renetec: https://www.renetec.io/pages/pyxian-download
It allows one to develop RPi graphical apps with just HTML and Javascript.  Great fit for this
usecase.

 * Download Pyxian from the URL above
 * Flash it to the SD card
 * Boot your RPI4 and configure WiFi from the Web UI
 * Copy the files from this repo to the /home/pi/.inox/apps/ directory on your Raspberry Pi
 * Install cacerts: sudo apt-get install ca-cacert
 * Add update.sh script to the crontab so it runs periodically using crontab -e.  This is what I used: `*/5 * * * * /home/pi/.inox/apps/finviz/update.sh`
 * You should see the finviz app in the *Installed Apps* secton of the Pyxis UI.  Start it from there.
 * Enjoy!
