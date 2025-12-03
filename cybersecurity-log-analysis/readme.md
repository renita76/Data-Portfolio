# 🔐 Cybersecurity Log Analysis — Suspicious Activity Detection

## 📌 Project Overview
This project analyzes raw system logs to detect suspicious behavior and early signs of cyber threats.  
It demonstrates beginner-to-intermediate cybersecurity analysis using structured log review techniques.

The goal is to identify:
- Failed login attempts  
- Unauthorized access  
- Possible malware indicators  
- Repeated access from suspicious IPs  
- Brute force attack patterns  

---

## 🛠️ Tools Used
- Excel / CSV log viewer
- Linux-style log formats (syslog/auth.log)
- GitHub
- Markdown documentation

---

## 📂 Dataset
The dataset simulates real-world server logs and contains fields such as:
- Timestamp  
- Event type  
- Username  
- Source IP  
- Status (success/failure)  
- System event description  

➡️ **Dataset stored in:**  
`/dataset/server_logs.csv`

---

## 🔎 Skills Demonstrated
- Log filtering  
- Pattern detection  
- Counting failed attempts  
- Identifying repeated IP access  
- Basic threat classification  
- Documentation of findings  

---

## 📜 Example Queries / Filters

### 1. Failed Login Attempts
```
grep "Failed password" auth.log
```

### 2. Top Offending IP Addresses
```bash
awk '{print $11}' auth.log | sort | uniq -c | sort -nr
```

### 3. Suspicious Access Patterns
```
grep "invalid user" auth.log
```

---

## 🚨 Common Findings (Example)
- Repeated failed logins from a single IP  
- Attempts to log in as root  
- Invalid user enumeration  
- Access attempts outside business hours  

---

## 📑 Incident Summary Template Included
- Executive summary  
- Observed behavior  
- Attack type classification  
- Recommendations for mitigation  

---

## 🧩 Folder Structure
```
cybersecurity-log-analysis/
│── README.md
│── dataset/
│── analysis/
│── screenshots/
```

