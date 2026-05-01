# Docker Volume Backup

Minimal project to:

* Generate logs in a Docker volume
* Backup the volume

---

## Prerequisites

* Docker installed

---

## Repo Structure
docker-volume-backup/
├── backup.sh
├── start-log-generator.sh
├── archive/
└── README.md

## Usage

### 1. Start log generator

```bash id="1z6v4v"
./start-log-generator.sh
```

---

### 2. Create backup

```bash id="0j3e0m"
./backup.sh
```

Backups are stored in:

```id="klpxf6"
./archive/
```

---

## Notes

* Volume: `transaction-logs`
* Backup uses `tar.gz`
* Volume is mounted read-only during backup

---
