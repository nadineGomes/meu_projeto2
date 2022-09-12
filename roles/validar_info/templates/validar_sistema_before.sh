#!/bin/bash

# Salvando as informações antes do reboot
sudo route -n > routes_before
sudo ss -nltup > ports_before
sudo iptables-save > iptablesfw
sudo systemctl -t service --all > services_before
sudo ip a > ips_before
