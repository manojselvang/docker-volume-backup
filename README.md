# Docker Volume Backup

Minimal project to:

* Generate logs in a Docker volume
* Backup the volume

---

## Prerequisites

* Docker installed

---

## Repo Structure

```
docker-volume-backup/
├── backup.sh
├── start-log-generator.sh
├── archive/
└── README.md
```

---

## Usage

### 1. Start log generator

```bash
./start-log-generator.sh
```

Creates a container that writes a sample log into the volume.

---

### 2. Create backup

```bash
./backup.sh
```

Backups are stored in:

```
./archive/
```

---

#
* Backup uses `tar.gz`
* Volume is mounted read-only during backup
