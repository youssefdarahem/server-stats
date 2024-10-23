#!/bin/bash

# Function to display total CPU usage
cpu_usage() {
  echo "Total CPU usage:"
  top -bn1 | grep "Cpu(s)" | \
    awk '{print "User: " $2 "%, System: " $4 "%, Idle: " $8 "%"}'
}

# Function to display total memory usage
memory_usage() {
  echo "Total Memory usage:"
  free -h | awk 'NR==2{printf "Used: %s, Free: %s, Percentage: %.2f%%\n", $3,$4,$3*100/($3+$4)}'
}

# Function to display total disk usage
disk_usage() {
  echo "Total Disk usage:"
  df -h --total | grep 'total' | \
    awk '{printf "Used: %s, Free: %s, Percentage: %s\n", $3, $4, $5}'
}

# Function to display top 5 processes by CPU usage
top_cpu_processes() {
  echo "Top 5 processes by CPU usage:"
  ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6
}

# Function to display top 5 processes by memory usage
top_memory_processes() {
  echo "Top 5 processes by memory usage:"
  ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6
}

# Stretch goals
extra_stats() {
  echo "System info and other stats:"
  echo "OS version: $(cat /etc/os-release | grep 'PRETTY_NAME' | cut -d '=' -f2)"
  echo "Uptime: $(uptime -p)"
  echo "Load average: $(uptime | awk '{print $10,$11,$12}')"
  echo "Logged in users: $(who | wc -l)"
  echo "Failed login attempts: $(grep 'Failed' /var/log/auth.log | wc -l)"
}

# Displaying the stats
echo "Server Performance Stats:"
cpu_usage
echo ""
memory_usage
echo ""
disk_usage
echo ""
top_cpu_processes
echo ""
top_memory_processes
echo ""

# Uncomment the below line if you want the optional stats
# extra_stats
