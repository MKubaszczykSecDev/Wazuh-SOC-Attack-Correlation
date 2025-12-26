--------- Guide how to use git ---------

I have configured aliases in my ~/.bashrc to make these commands run instantly from any directory

+---------+------------------------------------------------+----------------------------------------------------------------+
|Command__|_Action_________________________________________|____When to use it______________________________________________|
+---------+------------------------------------------------+----------------------------------------------------------------+
|backup___|_Copies live Wazuh configs into your Git folder_|_Always run this before and after making a major rule change____|
|restore__|_Pushes Git files back to the Wazuh system______|_If you break your XML syntax and the manager won't start_______|
|git push_|_Sends your backed-up files to GitHub___________|_At the end of every session to save your progress online_______|
+---------+------------------------------------------------+----------------------------------------------------------------+

The Standard "Save Point" Workflow
When I complete a task, (with no issues) follow this exact sequence to ensure it is documented:

1.	Sync to local repo:
backup

2.	Commit the milestone:
cd ~/Wazuh-SOC-Attack-Correlation
git add .
git commit -m "Completed Task C.4: SQL Injection Detection Rules"

3.	Upload to GitHub:
git push origin main

4. Troubleshooting & Safety
•	The "Undo" Button  :  If I edit local_rules.xml and the Wazuh Dashboard shows an error, run restore to revert to your last known good backup.
•	Permission Fix     :  If my script ever says "Permission Denied," ensure you are running it as yourself (the aliases should handle the sudo).
•	Missing Files      :  If I add a new file type to my lab (like a new script in red-team), remember to edit backup.sh to include that file path.

5. File Map: Where things live
•	Rules/Decoders: ~/Wazuh-SOC-Attack-Correlation/wazuh-server/
•	Target Evidence: ~/Wazuh-SOC-Attack-Correlation/target-configs/ 
•	Attack Tools: ~/Wazuh-SOC-Attack-Correlation/red-team/payloads/
