wget https://dl.grafana.com/oss/release/grafana-8.2.3-1.x86_64.rpm
yum install -y ./grafana-8.2.3-1.x86_64.rpm
rm grafana*

systemctl daemon-reload
systemctl start grafana-server
