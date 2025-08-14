# 🐧 Tangent Notes Backup Script

This repository provides a simple shell script that creates a compressed backup of your **Tangent Notes** workspace and uploads it to a cloud storage provider of your choice using [`rclone`](https://rclone.org/).

## 📝 Why Use This Script?

Tangent Notes stores all your notes as local Markdown files on your machine. While this offers full control and transparency, it also introduces the risk of data loss in case of:

- Hardware failure
- Accidental deletion
- Operating system issues

This backup script ensures that your workspace is regularly and safely backed up to a remote location like Google Drive, Dropbox, OneDrive, or any cloud storage supported by `rclone`.

---

## 🔧 Prerequisites

Before using the script, you must install and configure `rclone`.

### 1. Install `rclone`

On **Fedora** (or other RPM-based Linux distros), install it with:

```bash
sudo dnf install rclone

## 🚀 How to Use

1. Run command bellow:
```bash
chmod +x backup_tanget_notes.sh && ./backup_tanget_notes.sh
