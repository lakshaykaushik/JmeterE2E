# Steps to install Grafana on a Centos 8 machine.

## Step 1: Setup yum repo for grafana

`cat <<EOF | sudo tee /etc/yum.repos.d/grafana.repo
[grafana]
name=grafana
baseurl=https://packages.grafana.com/oss/rpm
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://packages.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt
EOF `

## Step 2: Install grafana

`sudo yum -y install grafana`

## Step 3: Start Grafana

`systemctl start grafana-server.service `

## Step4 : Enable Grafana

`systemctl start --now grafana-server.service `

## Step5: Open port 3000 on to access Grafana Dashboard

