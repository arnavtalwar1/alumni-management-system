# Legacy Link — Alumni Management System

A web-based Alumni Management System built with PHP and MySQL, designed to connect alumni with their institution and fellow graduates.

---

## 📋 Table of Contents

- [About](#about)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Requirements](#requirements)
- [Installation & Setup](#installation--setup)
- [Running the Application](#running-the-application)
- [Default Credentials](#default-credentials)
- [Database](#database)
- [Authors](#authors)

---

## About

**Legacy Link** is an alumni portal that allows institutions to maintain a directory of their alumni, manage events, post job/career opportunities, host discussion forums, and share a gallery — all from a centralized admin dashboard.

---

## Features

### Public (Guest)
- View alumni directory
- Browse the gallery
- View upcoming events
- Contact the institution

### Alumni (Registered Users)
- Create and manage a personal profile
- Browse and apply for job/career listings
- Participate in discussion forums
- View events and gallery

### Admin
- Full control over alumni registrations (approve/reject)
- Manage events, job postings, forums, and gallery
- Customize site settings (name, contact, cover image, etc.)
- Manage all user accounts

---

## Tech Stack

| Layer      | Technology              |
|------------|-------------------------|
| Backend    | PHP 8.x                 |
| Database   | MySQL (via MySQLi)      |
| Frontend   | HTML5, CSS3, JavaScript |
| UI Library | Bootstrap 4             |
| Icons      | Font Awesome            |
| Server     | Apache (XAMPP)          |

---

## Project Structure

```
alumni/
├── admin/                  # Admin panel pages & backend logic
│   ├── db_connect.php      # Database connection config
│   ├── admin_class.php     # Core admin PHP class
│   ├── ajax.php            # AJAX request handler
│   ├── assets/             # Admin uploads & assets
│   └── ...                 # Other admin pages
├── assets/                 # Public assets (images, etc.)
├── css/                    # Stylesheets
├── js/                     # JavaScript files
├── database/
│   └── alumni_db.sql       # MySQL database dump
├── index.php               # Main entry point (routes pages)
├── home.php                # Homepage content
├── alumni_list.php         # Alumni directory
├── gallery.php             # Gallery page
├── careers.php             # Jobs/careers listing
├── forum.php               # Discussion forum
├── about.php               # About page
├── login.php               # Alumni login form
├── signup.php              # Alumni registration form
├── my_account.php          # Account management
├── setup_db.bat            # Windows DB setup helper script
└── README.md               # This file
```

---

## Requirements

- **XAMPP** (or any Apache + PHP + MySQL stack)
  - PHP 8.x
  - Apache HTTP Server
  - MySQL / MariaDB
- Web browser (Chrome, Firefox, Edge, etc.)

---

## Installation & Setup

### 1. Clone / Copy the Project

Place the project folder inside your XAMPP `htdocs` directory:

```
C:\xampp\htdocs\alumni\
```

Or create a symlink/junction pointing to your project location.

### 2. Start XAMPP Services

Open the **XAMPP Control Panel** and start:
- ✅ **Apache**
- ✅ **MySQL**

> ⚠️ If you have a standalone **MySQL 8.0** service installed, it may conflict with XAMPP's MySQL on port `3306`. Stop the MySQL80 Windows service before starting XAMPP MySQL:
> ```powershell
> Start-Process powershell -ArgumentList "-Command Stop-Service MySQL80 -Force" -Verb RunAs
> ```

### 3. Import the Database

**Option A — phpMyAdmin (GUI):**
1. Open [http://localhost/phpmyadmin](http://localhost/phpmyadmin)
2. Create a new database named `alumni_db`
3. Click **Import** → choose `database/alumni_db.sql` → click **Go**

**Option B — Command Line:**
```bash
mysql -u root alumni_db < database/alumni_db.sql
```

**Option C — Setup Script (Windows):**
```bash
setup_db.bat
```

### 4. Configure Database Connection

Edit `admin/db_connect.php` if needed:

```php
<?php
$conn = new mysqli('localhost', 'root', '', 'alumni_db')
    or die("Could not connect to mysql" . mysqli_error($con));
?>
```

| Parameter | Default     | Description            |
|-----------|-------------|------------------------|
| Host      | `localhost` | MySQL server host      |
| User      | `root`      | MySQL username         |
| Password  | *(empty)*   | MySQL password (XAMPP) |
| Database  | `alumni_db` | Database name          |

---

## Running the Application

Once Apache and MySQL are running, open your browser and navigate to:

```
http://localhost/alumni/
```

---

## Default Credentials

| Role    | URL                               | Username | Password |
|---------|-----------------------------------|----------|----------|
| Admin   | `http://localhost/alumni/admin/`  | *(set during DB import)* | *(set during DB import)* |
| Alumni  | `http://localhost/alumni/` → Login | *(register via signup)* | — |

---

## Database

The database `alumni_db` contains the following tables:

| Table           | Description                          |
|-----------------|--------------------------------------|
| `users`         | Registered alumni accounts           |
| `alumnus_bio`   | Extended alumni profile/bio info     |
| `events`        | Institution events                   |
| `event_commits` | Alumni RSVPs/commitments to events   |
| `careers`       | Job/career postings                  |
| `forum_topics`  | Discussion forum threads             |
| `forum_comments`| Comments on forum threads            |
| `gallery`       | Gallery media entries                |
| `courses`       | Courses offered                      |
| `system_settings`| Site-wide settings (name, logo, etc.)|

---

## Authors

**Arnav Talwar & Aniket Sharma**

> Copyright © 2025 — Legacy Link. All rights reserved.
