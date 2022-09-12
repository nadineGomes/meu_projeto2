#!/bin/bash

# Salvandoas rotas depois do reboot
sudo route -n > routes_after
sudo ss -nltup > ports_after
sudo iptables-save > iptablesfw_after
sudo systemctl -t service --all > services_after
sudo ip a > ips_after

# Comparando os arquivos
echo "
  == ROTAS ==
"
diff routes_after routes_before -s
echo "
  == SERVICES ==
"
diff services_after services_before -s
echo "
  == PORTS ==
"
diff ports_after ports_before -s
echo "
  == IPTABLES ==
"
diff iptablesfw iptablesfw_after -s
echo "
  == IPS ==
"
diff ips_after ips_before -s
