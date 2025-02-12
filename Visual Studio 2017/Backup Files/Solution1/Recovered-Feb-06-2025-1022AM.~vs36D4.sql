create Database LibraryManagementStudio;

Use LibraryManagementStudio;

Create Table Books (
id INT Primary Key,
Name varchar (50) not null,
ISBN varchar (20),
Genre varchar (10)
)

Create Table Members (
id INT Primary Key,
Name varchar (50) not null, 
email varchar (50)
)

Create Table loans (
SN INT Primary Key,
Book_id int not null,
member_id int not null,
Date_of_borrow varchar (10),
Date_of_return varchar (10),
FOREIGN KEY (BOOK_ID) REFERENCES Books (id),
FOREIGN KEY (Member_ID) REFERENCES Members (id)
)