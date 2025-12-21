#!/bin/bash
# Restore script for Wazuh-SOC-Attack-Correlation
REPO_DIR="$HOME/Wazuh-SOC-Attack-Correlation"

echo "Restoring configurations from Git to live Wazuh System..."

# Pushing saved files back to production paths
sudo cp $REPO_DIR/wazuh-server/ossec.conf /var/ossec/etc/ossec.conf
sudo cp $REPO_DIR/wazuh-server/rules/local_rules.xml /var/ossec/etc/rules/local_rules.xml
sudo cp $REPO_DIR/wazuh-server/decoders/local_decoders.xml /var/ossec/etc/decoders/local_decoders.xml
sudo cp $REPO_DIR/wazuh-server/agent.conf /var/ossec/etc/shared/default/agent.conf

echo "Restore complete. Restarting Wazuh Manager to apply changes..."
sudo systemctl restart wazuh-manager
