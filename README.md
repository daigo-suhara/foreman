# 手順
## DNSレコードの追加
```sh
sudo vi /etc/hosts
```

```sh:/etc/hosts
172.16.2.11  foreman.example.com  foreman
127.0.0.1      localhost localhost.localdomain
```

## インストール
```sh
bash install.sh
```
