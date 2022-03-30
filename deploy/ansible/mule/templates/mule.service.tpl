[Unit]

Description = Mule Runtime service

After = network.target

[Service]

User = mule

ExecStart = /opt/mule/bin/mule start

ExecStop = /opt/mule/bin/mule stop

Type=forking

[Install]

WantedBy = multi-user.target