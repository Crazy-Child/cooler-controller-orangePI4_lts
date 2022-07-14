# cooler-controller-orangePI4_lts
The script turns on / off the fan depending on the temperature of the processor. The on/off temperature can be changed in cooler_controller.sh with the command:
```bash
nano cooler_controller.sh
```

For the script to work, you need to install [WiringOP](https://github.com/orangepi-xunlong/wiringOP.git) from Orange Pi.


### Installation process
Enter password if needed

```bash
git clone https://github.com/Crazy-Child/cooler-controller-orangePI4_lts.git
cd cooler-controller-orangePI4_lts
sudo sh install.sh
sudo reboot
```

After installation, change the settings using the command
```bash
nano my_scripts/cooler_controller/cooler_controller.sh
sudo reboot
```
or
```bash
sudo nano /root/my_scripts/cooler_controller/cooler_controller.sh
sudo reboot
```

### Components
* Cooler
* Transistor npn
* Some wires

### Wiring
|               |                           |
| ------------- |:-------------------------:|
| Fan 5V        | OrangePI 5V               |
| Fan GND       | Transistor Collector (C)  |
| GPIO1_C2 (wPi6 )        | Transistor Base (B)       | 
| GND           | Transistor Emitter (E)    |



![pinout](https://github.com/Crazy-Child/cooler-controller-orangePI4_lts/raw/main/img/1033818249.jpg)


### Orange Pi 4/4B/4 LTS

 ```
 +------+-----+----------+------+---+OrangePi 4+---+---+--+----------+-----+------+
 | GPIO | wPi |   Name   | Mode | V | Physical | V | Mode | Name     | wPi | GPIO |
 +------+-----+----------+------+---+----++----+---+------+----------+-----+------+
 |      |     |     3.3V |      |   |  1 || 2  |   |      | 5V       |     |      |
 |   64 |   0 | I2C2_SDA | ALT3 | 0 |  3 || 4  |   |      | 5V       |     |      |
 |   65 |   1 | I2C2_SCL | ALT3 | 0 |  5 || 6  |   |      | GND      |     |      |
 |  150 |   2 |     PWM1 |   IN | 0 |  7 || 8  | 1 | ALT2 | I2C3_SCL | 3   | 145  |
 |      |     |      GND |      |   |  9 || 10 | 1 | ALT2 | I2C3_SDA | 4   | 144  |
 |   33 |   5 | GPIO1_A1 |   IN | 0 | 11 || 12 | 1 | OUT  | GPIO1_C2 | 6   | 50   |
 |   35 |   7 | GPIO1_A3 |  OUT | 0 | 13 || 14 |   |      | GND      |     |      |
 |   92 |   8 | GPIO2_D4 |  OUT | 1 | 15 || 16 | 0 | IN   | GPIO1_C6 | 9   | 54   |
 |      |     |     3.3V |      |   | 17 || 18 | 0 | IN   | GPIO1_C7 | 10  | 55   |
 |   40 |  11 | SPI1_TXD | ALT2 | 1 | 19 || 20 |   |      | GND      |     |      |
 |   39 |  12 | SPI1_RXD | ALT2 | 1 | 21 || 22 | 0 | IN   | GPIO1_D0 | 13  | 56   |
 |   41 |  14 | SPI1_CLK | ALT3 | 1 | 23 || 24 | 1 | ALT3 | SPI1_CS  | 15  | 42   |
 |      |     |      GND |      |   | 25 || 26 | 0 | IN   | GPIO4_C5 | 16  | 149  |
 |   64 |  17 | I2C2_SDA | ALT3 | 0 | 27 || 28 | 0 | ALT3 | I2C2_SCL | 18  | 65   |
 |      |     |  I2S0_RX |      |   | 29 || 30 |   |      | GND      |     |      |
 |      |     |  I2S0_TX |      |   | 31 || 32 |   |      | I2S_CLK  |     |      |
 |      |     | I2S0_SCK |      |   | 33 || 34 |   |      | GND      |     |      |
 |      |     | I2S0_SI0 |      |   | 35 || 36 |   |      | I2S0_SO0 |     |      |
 |      |     | I2S0_SI1 |      |   | 37 || 38 |   |      | I2S0_SI2 |     |      |
 |      |     |      GND |      |   | 39 || 40 |   |      | I2S0_SI3 |     |      |
 +------+-----+----------+------+---+----++----+---+------+----------+-----+------+
 | GPIO | wPi |   Name   | Mode | V | Physical | V | Mode | Name     | wPi | GPIO |
 +------+-----+----------+------+---+OrangePi 4+---+---+--+----------+-----+------+
```
