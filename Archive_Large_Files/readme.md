# Directory File Archiver Script

A Bash script that identifies files larger than 50MB in a specified directory, compresses them using `gzip`, and moves them into an `archive` folder.

## 🚀 Features
* **Size Filtering:** Targets files strictly larger than 50MB.
* **Safe Compression:** Compresses files to `.gz` format before moving.
* **Auto-Initialization:** Automatically creates the `archive/` subdirectory if it missing.
* **Shallow Search:** Operates only on the immediate directory level (`-maxdepth 1`).

## 📋 Prerequisites
* Linux/Unix-like environment
* Bash shell
* `gzip` utilities

## 🛠️ Usage

1. **Make the script executable:**
   ```bash
   chmod +x archive_script.sh
   ```

2. **Run the script:**
   ```bash
   ./archive_script.sh /path/to/target_directory
   ```

## ⚠️ Notes
* Do not include a trailing slash in your target directory path to ensure clean log formatting.
* The script terminates immediately (`exit 1`) if any `gzip` or `mv` command fails to prevent data loss.
