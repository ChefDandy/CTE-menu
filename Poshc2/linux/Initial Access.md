service persistence

sudo vim /etc/systemd/system/dropper.service

## ???

[Unit]
Description=My Python Dropper Script Service
After=network.target

[Service]
User=root
WorkingDirectory=/srv/dropper
ExecStart=/usr/bin/python3 /home/simspace/Downloads/python_dropper.py
Restart=always

[Install]
WantedBy=multi-user.target

## Persistence

sudo systemctl daemon-reload

sudo systemctl enable dropper.service

sudo systemctl start dropper.service

sudo crontab -e

0 */4 * * * systemctl restart dropper.service