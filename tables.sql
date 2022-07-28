/*create table Author(
Author_ID varchar(255) primary key,
Author_Name varchar(255) not null
);*/

/*create table Publisher(
Publisher_ID varchar(255) primary key,
Publisher_Name varchar(255) not null
);*/


/*create table Books(
Book_ID varchar(255) primary key,
Book_Name varchar(255) not null,
Author_ID varchar(255) foreign key references Author(Author_ID),
Price int not null,
Publisher_ID varchar(255) foreign key references Publisher(Publisher_ID)
);*/

/*create table Credit_card_details(
Credit_card_number varchar(255) primary key,
Credit_card_type varchar(255) not null,
Expiry_date date not null
);*/

/*create table Customer(
Customer_ID varchar(255) primary key,
Customer_Name varchar(255) not null,
Street_Address varchar(255) not null,
City varchar(255) not null,
Phone_Number varchar(255) not null,
Credit_card_number varchar(255) foreign key references Credit_card_details(Credit_card_number)
);*/

/*create table Shipping_type(
Shipping_type varchar(255) primary key,
Shipping_price int not null
);*/

/*create table Shopping_cart(
Shopping_cart_ID int primary key,
Book_ID varchar(255) foreign key references Books(Book_ID),
Price int not null,
Date date not null,
Quantity int not null
);*/

/*create table Order_and_details(
Order_ID int primary key,
Customer_ID varchar(255) foreign key references Customer(Customer_ID),
Shipping_type varchar(255) foreign key references Shipping_type(Shipping_type),
Date_of_purchase date not null,
Shopping_cart_ID int foreign key references Shopping_cart(Shopping_cart_ID)
);*/

/*create table Purchase_history(
Customer_ID varchar(255) foreign key references Customer(Customer_ID),
Order_ID int foreign key references Order_and_details(Order_ID) 
);*/
