#!/bin/bash
# Updated Backup script for MKubaszczykSecDev (Options C & E)
REPO_DIR="$HOME/Wazuh-SOC-Attack-Correlation"

echo "Backing up Wazuh Server and Red Team Logic..."

# 1. Wazuh Server Logic
sudo cp /var/ossec/etc/ossec.conf $REPO_DIR/wazuh-server/
sudo cp /var/ossec/etc/rules/local_rules.xml $REPO_DIR/wazuh-server/rules/
sudo cp /var/ossec/etc/decoders/local_decoders.xml $REPO_DIR/wazuh-server/decoders/
sudo cp /var/ossec/etc/shared/default/agent.conf $REPO_DIR/wazuh-server/agent.conf

# 2. Target Hardening (Placeholder for files you'll pull from Victim VM)
# Once you harden the victim, uncomment these or copy them manually to these paths:
# sudo cp /etc/apache2/apache2.conf $REPO_DIR/target-configs/apache/
# sudo cp /etc/mysql/mysql.conf.d/mysqld.cnf $REPO_DIR/target-configs/mysql/

# 3. Red Team Evidence (Capturing your payloads)
# Adjust the path below to wherever you store your attack scripts
if [ -f "$HOME/payloads/shell.php" ]; then
    cp $HOME/payloads/shell.php $REPO_DIR/red-team/payloads/
fi

echo "Backup complete. Files organized in modular folders."
