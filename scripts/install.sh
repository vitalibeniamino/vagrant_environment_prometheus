yum -y install wget
wget https://github.com/prometheus/prometheus/releases/download/v2.31.1/prometheus-2.31.1.linux-amd64.tar.gz
tar xvfz prometheus-*.tar.gz
cd prometheus-*
mv prometheus promtool /usr/local/bin
cd ..
rm -rf prometheus-*
