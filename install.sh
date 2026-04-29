# OSのアップデート
sudo dnf update -y

# EPELとリポジトリ追加
sudo dnf install -y https://yum.theforeman.org/releases/3.18/el9/x86_64/foreman-release.rpm
sudo dnf install -y https://yum.puppet.com/puppet8-release-el-9.noarch.rpm

sudo dnf install -y foreman-installer

hostnamectl set-hostname foreman.example.com

# インストール実行（環境に合わせてネットワーク値を変更してください）
sudo foreman-installer \
  --enable-foreman-proxy \
  --foreman-proxy-tftp=true \
  --foreman-proxy-dhcp=true \
  --foreman-proxy-dhcp-interface=enp0s20f0u4 \
  --foreman-proxy-dhcp-range="172.16.10.100 172.16.10.150" \
  --foreman-proxy-dhcp-gateway=172.16.0.1 \
  --foreman-proxy-dns=true \
  --foreman-proxy-dns-interface=enp0s20f0u4 \
  --foreman-proxy-dns-forwarders=8.8.8.8 \
  --enable-foreman-plugin-discovery
