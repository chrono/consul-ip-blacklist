consul-ip-blacklist
===================

manage some blacklisting using consul

ex usage: `./consul-extract-leaves.sh http://127.0.0.1:8500/v1/kv/ip-blocklist/haproxy | ./iplist-to-ipset.sh shadow | sudo ipset restore`
