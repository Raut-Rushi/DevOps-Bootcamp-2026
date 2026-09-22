Imagine your application process is:

‣ java -jar application.jar

* The application suddenly becomes unresponsive.

Your Team Lead asks:

# "Find out whether the application is running."

> ps aux | grep java 
or
> ps aux | grep application.jar

- Then suppose you find:

→ rushi  4521  98.5  ... java -jar application.jar

- What does:

» 4521 represent?
→PID (Process ID) of the Java application.

- And what does:

» 98.5 probably represent? 
→CPU usage percentage (%CPU) of the Java process.
