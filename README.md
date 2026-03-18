# Student Management System

A **Student Management System** built with **PHP** and **MySQL**, supporting full **CRUD operations** for managing Admins, Faculty, Students, Assignments, and Notices.

## App Screenshots

Below are some screenshots of the StudyMate application showcasing its features and user interface:

| Screenshot 1      | Screenshot 2      | Screenshot 3      |Screenshot 4       |
|-------------------|-------------------|-------------------|-------------------|
| ![Image1](https://github.com/rajatt04/rajatt04.github.io/blob/main/images/StudyMate/Screenshot_20260318_093117.jpg?raw=true) | ![Image2](https://github.com/rajatt04/rajatt04.github.io/blob/main/images/StudyMate/Screenshot_20260318_095245.jpg?raw=true) | ![Image3](https://github.com/rajatt04/rajatt04.github.io/blob/main/images/StudyMate/Screenshot_20260318_095344.jpg?raw=true) |![Image4](https://github.com/rajatt04/rajatt04.github.io/blob/main/images/StudyMate/Screenshot_20260318_095447.jpg?raw=true) |

| Screenshot 5      | Screenshot 6      | Screenshot 7      |Screenshot 8       |
|-------------------|-------------------|-------------------|-------------------|
| ![Image5](https://github.com/rajatt04/rajatt04.github.io/blob/main/images/StudyMate/Screenshot_20260318_095523.jpg?raw=true) | ![Image6](https://github.com/rajatt04/rajatt04.github.io/blob/main/images/StudyMate/Screenshot_20260318_095611.jpg?raw=true) | ![Image7](https://github.com/rajatt04/rajatt04.github.io/blob/main/images/StudyMate/Screenshot_2026_0318_093254.jpg?raw=true) |![Image8](https://github.com/rajatt04/rajatt04.github.io/blob/main/images/StudyMate/Screenshot_2026_0318_093315.jpg?raw=true) |

## 🛠️ Technologies Used

- **Frontend**: HTML, CSS, Bootstrap  
- **Backend**: PHP  
- **Database**: MySQL  

## ✅ Features

- **Authentication** for Admins, Faculty, and Students
- **CRUD Operations**:
  - Admin Management
  - Faculty Management
  - Student Management
  - Assignment Creation & Tracking
  - Notice Board Updates
- **Role-Based Access Control**  
  - Admin: Full control over the system  
  - Faculty: Manage assignments and student-related actions  
  - Students: View assignments and notices  

## 🗂️ Project Structure

```
/student-management-system/
├── main.php
├── about_us.php
├── contact_us.php
├── admin/
│   ├── dashboard.php
│   ├── manage_faculty.php
│   └── ...
├── faculty/
│   ├── dashboard.php
│   └── manage_assignments.php
├── student/
│   ├── dashboard.php
│   └── view_assignments.php
```

## ⚙️ Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone https://github.com/rajatt04/student-management-system.git
   ```

2. **Import the Database**
   - Create a MySQL database (e.g., `sms_db`)
   - Import the SQL file (`database.sql`) provided in the project

3. **Configure Database Connection**
   - Open `includes/db_connect.php`
   - Update database credentials

   ```php
   $host = 'localhost';
   $user = 'root';
   $password = '';
   $dbname = 'sms_db';
   ```

4. **Run the Application**
   - Access `main.php` via your local server (e.g., XAMPP, WAMP)

## 📌 Future Improvements

- Email notifications
- File upload for assignments
- Student performance analytics
- REST API integration

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
