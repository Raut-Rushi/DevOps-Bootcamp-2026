# "Rushi, prepare the server structure for our application. Create the required directories, configure permissions, create a deployment script, run the application, and verify the process."

- "MISSION 1 — Create Server Structure":

- Go to your bootcamp directory.

- > cd DevOps-Bootcamp-2026

- Create:

- > mkdir Day-07
- > cd Day-07

- Now create:

- > mkdir production-server
- > cd production-server

- Then:

- > mkdir app
- > mkdir backup
- > mkdir logs
- > mkdir scripts

- Inside app:

- > mkdir app/config
---------------------------------------------------------------------------------------------------------------------------------
- 🧩 MISSION 2 — Create Application Files

- Go to:

- > cd app

- Create:

- > touch application.sh
- > touch application.log

- Go into config:

- > cd config

- Create:

- > touch app.conf

- Go back:

- > cd ../..

- Check everything:

- > find .
---------------------------------------------------------------------------------------------------------------------------------
- 🧩 MISSION 3 — Configure the Application

- Go to:

- > cd app

- Put this inside "application.sh" ↯

- > ```#!/bin/bash```

- > ```echo "TechNova application started"```

- > ```while true```
- > ```do```
    - > ```echo "$(date) - Application is running" >> application.log```
    - > ```sleep 5```
- > ```done```

- This simulates a continuously running application
---------------------------------------------------------------------------------------------------------------------------------
- 🔐 MISSION 4 — Make It Executable

- Run:

- ```chmod 755 application.sh```

- Check:

- ```ls -l application.sh```

- You should see something like:

- -rwxr-xr-x

- 🔥 You are using the Day 4 knowledge.
---------------------------------------------------------------------------------------------------------------------------------
- 🧩 MISSION 5 — Start the Application

- Run:

- ```./application.sh &```

- Notice the "&"

- It means:

- Run the application in the background.

- Now:

- ```jobs```

- You should see something similar to:

- [1]+ Running ./application.sh &
---------------------------------------------------------------------------------------------------------------------------------
- 🔎 MISSION 6 — Find the Process

- Run:

- ```ps```

- You can also try:

- ```ps aux | grep application.sh```

- You should find your application.

- You are now using:

- Day 5 → Processes
- Day 6 → Background processes
---------------------------------------------------------------------------------------------------------------------------------
- 📜 MISSION 7 — Check the Application Log

- Wait approximately 5–10 seconds.

- Then:

- ```cat application.log```

- You should see something similar to:

- Tue Sep 23 05:15:01 ... - Application is running
- Tue Sep 23 05:15:06 ... - Application is running
- Tue Sep 23 05:15:11 ... - Application is running

-🔥 Congratulations.

- You have created a tiny continuously running application that produces logs
---------------------------------------------------------------------------------------------------------------------------------
- 👀 MISSION 8 — Monitor the Log

- Run:

- ```tail -f application.log```

- Watch the lines appear every few seconds.

- This is a very important DevOps concept.


- Stop tail -f:

- PRESS → Ctrl + C
---------------------------------------------------------------------------------------------------------------------------------
- 🚨 MISSION 9 — Production Troubleshooting

- Now imagine your Team Lead asks:

- "Is the application actually running?"

- Don't answer based on guessing.

- Check:

- ```ps aux | grep application.sh```

- Then:

- ```jobs```

- Then check the log:

- ```tail application.log```

- You're collecting evidence.

- That's the DevOps mindset.
---------------------------------------------------------------------------------------------------------------------------------
- 💾 MISSION 10 — Backup Configuration

- Now imagine you're about to modify:

- > app.conf

- Never modify an important configuration blindly.

- Go to:

- ```cd app/config```

- Then:

- ```echo "PORT=8080" > app.conf```    (in bash terminal)

- Create a backup:

- ```cp app.conf ../../backup/app.conf.backup```

- Check:

- ```ls ../../backup```

- You should see:

- app.conf.backup

- 🔥 This is a real-world habit:

- Backup before changing production configuration.
---------------------------------------------------------------------------------------------------------------------------------
- 🚀 MISSION 13 — Create Deployment Script

- Go to:

- ```cd ../../scripts```

- Create:

- ```touch deploy.sh```

- Open it and put:

- ```#!/bin/bash```

- ```echo "Starting deployment..."```

- ```echo "Creating backup..."```

- ```echo "Deploying application..."```

- ```echo "Deployment completed successfully."```

- Make executable:

- ```chmod 755 deploy.sh```

- Run:

- ```./deploy.sh```

- Expected:

- Starting deployment...
- Creating backup...
- Deploying application...
- Deployment completed successfully.
---------------------------------------------------------------------------------------------------------------------------------
# COMPLETED SCENARIO 1 SUCCESSFULLY✓