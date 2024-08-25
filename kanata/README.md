## Systemd daemon process

Link to `.config`

```bash
ln -s ~/dotfiles/kanata ~/.config/kanata
```

# Instructions

In Linux, kanata needs to be able to access the input and uinput subsystem to inject events. To do this, your user needs to have permissions. Follow the steps in this page to obtain user permissions.

### 1. If the uinput group does not exist, create a new group

```bash
sudo groupadd uinput
```

### 2. Add your user to the input and the uinput group

```bash
sudo usermod -aG input $USER
sudo usermod -aG uinput $USER
```

Make sure that it's effective by running `groups`. You might have to logout and login.

### 3. Make sure the uinput device file has the right permissions.

#### Create a new file:
`/etc/udev/rules.d/99-input.rules`

#### Insert the following in the code
```bash
KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
```

#### Machine reboot or run this to reload
```bash
sudo udevadm control --reload-rules && sudo udevadm trigger
```

#### Verify settings by following command:
```bash
ls -l /dev/uinput
```

#### Output:
```bash
crw-rw---- 1 root date uinput /dev/uinput
```

### 4. Make sure the uinput drivers are loaded

You may need to run this command whenever you start kanata for the first time:

```
sudo modprobe uinput
```
### 5a. To create and enable a systemd daemon service

Run this command first:
```bash
mkdir -p ~/.config/systemd/user

Then add this to: `~/.config/systemd/user/kanata.service`:

```
[Unit]
Description=Kanata keyboard remapper
Documentation=https://github.com/jtroo/kanata

[Service]
Environment=PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:${HOME}/.cargo/bin
Environment=DISPLAY=:0
Type=simple
# $(which kanata) should work in theory but did not for me
# ExecStart=/usr/bin/sh -c 'exec $(which kanata) --cfg $HOME/.config/kanata/config.kbd'
ExecStart=/usr/bin/sh -c 'exec $HOME/.cargo/bin/kanata --cfg $HOME/.config/kanata/config.kbd'
Restart=no

[Install]
WantedBy=default.target
```

Then run

```
systemctl --user daemon-reload
systemctl --user enable kanata.service
systemctl --user start kanata.service
systemctl --user status kanata.service   # check whether the service is running
```

For more information use the following install guide found at:

https://github.com/jtroo/kanata/blob/main/docs/setup-linux.md
