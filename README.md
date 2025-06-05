🌹 Rose Valley - E-Commerce Website
Rose Valley is a full-featured e-commerce platform built as part of the final year BCA project. It allows users to browse, add to cart, and purchase various flowers online. Admins have a separate dashboard to manage products, orders, and user inquiries.

📌 Project Overview
Project Title: Rose Valley
Submitted by: Mohammad Sajid
Institution: I.T. Sheliya Jafri BCA College, Sedrana
Affiliation: Hemchandracharya North Gujarat University, Patan
Academic Year: 2021-2022

📸 Screenshots
Page	Preview
Login	
Home	
Cart	
Admin Panel	

💡 Features
👤 User Features
Register & Login

Browse Products

Add to Cart / Wishlist

Place Orders

Contact Admin

🛠️ Admin Features
Admin Login

Add / Update / Delete Products

View Orders

Manage Users & Messages

🛠️ Tech Stack
Layer	Technology
Frontend	HTML, CSS, Bootstrap
Backend	Java (Servlets & JSP), Hibernate
Database	PostgreSQL
Server	Apache Tomcat
Tools	IntelliJ IDEA, XAMPP (initial dev)
ORM	Hibernate

🧱 Database Schema
Tables:

register – Stores user credentials and role

product – Stores flower details

cart – User cart items

order – Purchase details

contact – Messages from users

wishlist – User wishlisted items

ER diagram and data dictionary are available in the /docs folder.

📂 Folder Structure
pgsql
Copy
Edit
rose-valley/
├── src/
│   ├── com/
│   │   ├── servlets/
│   │   ├── Tables/
│   │   ├── helper/
│   │   └── service/
├── WebContent/
│   ├── admin/
│   ├── css/
│   ├── js/
│   ├── flower images/
│   └── *.jsp
├── hibernate.cfg.xml
├── README.md
└── rose valley Documentation source file.pdf
⚙️ Setup Instructions
Prerequisites
Java JDK 20

Apache Tomcat 10.x

PostgreSQL

IntelliJ IDEA

Maven (if applicable)

Steps
Clone the repository:

bash
Copy
Edit
git clone https://github.com/your-username/rose-valley.git
Open the project in IntelliJ IDEA.

Configure Tomcat Server.

Setup PostgreSQL DB and update hibernate.cfg.xml with DB credentials.

Run the project and access via http://localhost:8080/RoseValley.

🔄 Future Enhancements
Add Payment Gateway integration

Enable product reviews and ratings

Improve mobile responsiveness

Add filtering and sorting in the product list

🙏 Acknowledgements
Guide: Mr. SirajAli Sir

Inspired by: floward.com, sunflowerflorist.ca

Developed with support from faculty, friends, and open-source community

📃 License
This project is part of an academic submission. For educational use only.
