# Memory Usage Monitor Script

This script is a simple shell script designed to monitor the system's RAM usage. It calculates the percentage of memory used and logs the data to a file. If the memory usage exceeds 80%, the script triggers an audible alert.

---

## Features

- **Memory Usage Calculation**: Calculates the percentage of memory currently used.
- **Logging**: Logs the memory usage percentage with a timestamp to a file named `mem_report.tsv`.
- **Alert System**: If memory usage exceeds 80%, an audible alert will be triggered using `espeak-ng`.
