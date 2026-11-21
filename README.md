## Restore & Save script 

I have configured aliases in my ~/.bashrc to make these commands run instantly from any directory

* backup_________Copies live Wazuh configs into your Git folder___Always run this before and after making a major rule change
* restore_________Pushes Git files back to the Wazuh system_______If you break your XML syntax and the manager won't start

The Standard "Save Point" Workflow
When I complete a task, (with no issues) follow this exact sequence to ensure it is documented:

--- 

1.	Sync to local repo:
backup

2.	Commit the milestone:
cd ~/Wazuh-SOC-Attack-Correlation
git add .
git commit -m "Completed Task C.4: SQL Injection Detection Rules"

3.	Upload to GitHub:
git push origin main

4. File Map: Where things live
Rules/Decoders: ~/Wazuh-SOC-Attack-Correlation/wazuh-server/
Target Evidence: ~/Wazuh-SOC-Attack-Correlation/target-configs/ 
Attack Tools: ~/Wazuh-SOC-Attack-Correlation/red-team/payloads/
