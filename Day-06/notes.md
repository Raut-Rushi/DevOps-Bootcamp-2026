

### 1. Process

A **process** is a program that is currently running.

-Example:
When you open Chrome, it runs as one or more processes.

```
ps
```

---

### 2. Service

A **service** is a program that runs in the background and provides a function to the system or other applications.

-Example:
Nginx is a service that handles web requests.

```
sudo systemctl status nginx
```

---

### 3. PID

**PID (Process ID)** is a unique number given to every running process.

-Example:

```
nginx → PID 1234
```

You can use it to control the process:

```
kill 1234
```

---

### 4. Background Process

A **background process** runs without blocking your terminal, so you can continue using the terminal.

-Example:

```
sleep 30 &
```

`&` → runs the command in the background.

Check it with:

```
jobs
```

---

### 5. `systemctl`

`systemctl` is used to **start, stop, restart, and check Linux services**.

-Examples:

```
sudo systemctl start nginx
```

```
sudo systemctl stop nginx
```

```
sudo systemctl restart nginx
```

```
sudo systemctl status nginx
```

**Remember:**

> `systemctl` → Manage services.

---

### 6. Package Manager

A **package manager** is a tool used to **install, update, remove, and manage software** on Linux.

Examples:

```
Ubuntu/Debian → apt
Red Hat/Fedora → dnf
```

---

### 7. `apt`

`apt` is the package manager commonly used in **Ubuntu/Debian Linux**.

Install software:

```
sudo apt install nginx
```

Remove software:

```bash
sudo apt remove nginx
```

---

# ⭐ `apt update` vs `apt upgrade`

This is very important.

### `apt update`

```
sudo apt update
```

**Meaning:**
Downloads the latest information about available packages and updates.

👉 It **does NOT actually upgrade your installed software**.

Think:

> 📋 `update` = Check what updates are available.

---

### `apt upgrade`

```
sudo apt upgrade
```

**Meaning:**
Actually installs the available updates for your installed packages.

Think:

> 📦 `upgrade` = Install the available updates.

### Easy memory:

```text
apt update
     ↓
Check/refresh available updates
     ↓
apt upgrade
     ↓
Install those updates
```

### 🧠 One-line revision

```text
Process          → Running program
Service          → Background program providing a function
PID              → Unique number of a process
Background       → Process running without blocking terminal
systemctl        → Manage services
Package Manager  → Tool to install/manage software
apt              → Ubuntu/Debian package manager
apt update       → Refresh available package information
apt upgrade      → Install available package updates
```

