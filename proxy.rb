port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
tproxy-port: 7895
ipv6: false
mode: rule
log-level: silent
allow-lan: true
external-controller: 0.0.0.0:9090
secret: ""
bind-address: "*"
unified-delay: true
profile:
  store-selected: true
dns:
  enable: true
  ipv6: false
  enhanced-mode: redir-host
  listen: 127.0.0.1:7874
  nameserver:
    - 1.1.1.1
    - 1.0.0.1
  fallback:
    - https://cloudflare-dns.com/dns-query
    - https://dns.google/dns-query
  default-nameserver:
    - 8.8.8.8
    - 8.8.4.4
proxies:
  - name: sshocean-polix12
    server: us5.xv2ray.net
    port: 443
    type: vmess
    uuid: 
    alterId: 0
    cipher: auto
    tls: true
    skip-cert-verify: true
    servername: us5.xv2ray.net
    network: ws
    ws-opts:
      path: /vmess
      headers:
        Host: us5.xv2ray.net
    udp: true
proxy-groups:
  - name: SSHOCEAN
    type: select
    proxies:
      - sshocean-polix12
      - DIRECT
rules:
  - MATCH,SSHOCEAN
