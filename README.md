# 🧪 FS Exam Kit

A ready-to-run Full Stack exam preparation kit with four project templates.
Each template is a complete Node.js + Express + MongoDB + Vanilla JS app — launch and modify in minutes.

---

## 📁 Repository Structure

```
fs-exam-kit/
│
├── crud-template/       ← Items CRUD (Create, Read, Update, Delete)
├── auth-template/       ← Login & Signup with JWT
├── blog-template/       ← Blog Posts with Categories & Tags
├── upload-template/     ← File Upload with Multer
│
├── start_exam.bat       ← Windows quick launcher
├── start_exam.sh        ← Mac/Linux quick launcher
└── README.md
```

---

## ⚡ Quick Start (Recommended)

### Windows
```bat
start_exam.bat
```

### Mac / Linux
```bash
chmod +x start_exam.sh
./start_exam.sh
```

The launcher will ask which template to run, install dependencies, and start the server.
Then open: **http://localhost:3000**

---

## 🚀 Manual Start (any template)

```bash
cd crud-template        # or auth-template / blog-template / upload-template
npm install
node server.js
```

Open: **http://localhost:3000**

---

## 🗺️ Templates Overview

### 1. 📦 CRUD Template (`crud-template/`)
**Routes:** `GET /api/items` · `POST /api/items` · `PUT /api/items/:id` · `DELETE /api/items/:id`

Full create/read/update/delete with inline edit form.

**To adapt:** Change `name`, `description`, `price` fields to your entity fields.

---

### 2. 🔐 Auth Template (`auth-template/`)
**Routes:** `POST /signup` · `POST /login` · `GET /profile` · `POST /logout`

JWT-based auth with bcrypt password hashing. Token stored in localStorage.

**To adapt:** Add extra fields to signup form and User model.

---

### 3. ✍️ Blog Template (`blog-template/`)
**Routes:** `GET /posts` · `POST /posts` · `PUT /posts/:id` · `DELETE /posts/:id`

Posts with title, author, content, category, and tags. Modal-based editor.

**To adapt:** Change `title`, `author`, `content`, `category`, `tags` fields to your needs.

---

### 4. 📁 Upload Template (`upload-template/`)
**Routes:** `POST /upload` · `GET /files` · `DELETE /files/:id`

Drag-and-drop file upload with Multer. Stores metadata in MongoDB, files on disk.

**To adapt:** Change allowed file types and size limit in `routes/api.js`.

---

## 🔧 Common Modifications

### Change MongoDB Database Name
Open `db.js` in any template:
```js
const MONGO_URI = "mongodb://localhost:27017/YOUR_DB_NAME";
```

### Change Port
Open `server.js`:
```js
const PORT = 3000; // change to 5000, 8080, etc.
```

### Add a New Field (CRUD example)
1. **`models/model.js`** — Add field to schema
2. **`routes/api.js`** — Destructure and save the field
3. **`public/index.html`** — Add input element
4. **`public/script.js`** — Include field in payload object

Look for these comment markers in every file:
```
===== ADD FIELDS HERE =====
===== MODIFY ENTITY NAME HERE =====
===== MODIFY DISPLAY FIELD =====
```

---

## 📦 Dependencies per Template

| Template | Dependencies |
|----------|-------------|
| crud-template | express, mongoose, cors |
| auth-template | express, mongoose, cors, bcrypt, jsonwebtoken |
| blog-template | express, mongoose, cors |
| upload-template | express, mongoose, cors, multer |

---

## ✅ Prerequisites

- Node.js (v16 or higher)
- MongoDB running locally (`mongod`) or Atlas URI
