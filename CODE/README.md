
STEP BY STEP WORKFLOW
- First save the script in monitor.sh file
- In the monitor.sh file give the keywords which are required for you analysis
- Save it and give permission
             - $ chmod u+x monitor.sh
- Now create an log file or install apache2 you can find access.log
             - /var/log/apache2/access.log 
- After creating this access.log file run this along with monitor.sh and your path 
             - ./monitor.sh  /var/log/apache2/access.log	
             - It wil start monitoring the access.log file
          - ![image](https://github.com/NeerajKumarReddy040/Monitor-and-log-analysis/assets/65441025/c26d8cc3-284b-4a95-b26c-1bcad6b4d053)

- If any registers or redirect or new entry will directed to monitor.sh and give the output 
- IF any KEYWORD found in the logs during entry it  will give output as
	     - Found keyword 'password' in log entry: insert your password=11234
          - ![image](https://github.com/NeerajKumarReddy040/Monitor-and-log-analysis/assets/65441025/46cfe125-88ac-4331-8c32-35aea1827e0b)

- If not it will print what have you registered in the log file
- to Exit monitoring ctrl+c
