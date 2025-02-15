# Server Stats Script

## Overview

This project provides a shell script, `server-stats.sh`, that analyzes basic server performance statistics. It is designed to run on any Linux server and provides insights into CPU usage, memory usage, disk usage, and the most resource-intensive processes.

### Features:

- **CPU Usage**: Displays total CPU usage, showing user, system, and idle percentages.
- **Memory Usage**: Shows used and free memory, including the percentage of memory in use.
- **Disk Usage**: Displays total disk usage with used, free, and percentage stats.
- **Top 5 Processes by CPU**: Lists the top 5 processes based on CPU consumption.
- **Top 5 Processes by Memory**: Lists the top 5 processes based on memory consumption.
- **Stretch Goals**: Optionally, the script can display additional stats such as OS version, uptime, load average, number of logged-in users, and failed login attempts.

## Requirements

- A Linux environment.
- Bash shell.

## Installation & Usage

1. Clone this repository or download the `server-stats.sh` script.
2. Make the script executable:
   ```bash
   chmod +x server-stats.sh
   ```
3. Run the script:
   ```bash
   ./server-stats.sh
   ```

### Optional Stats

To include optional stats like OS version, uptime, load average, logged-in users, and failed login attempts, uncomment the `extra_stats` function call at the end of the script.

## Project Roadmap

For a detailed roadmap of this project, check [this link](https://roadmap.sh/projects/server-stats).
