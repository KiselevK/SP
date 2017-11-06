
go
Use SPnubip
Create table Img
(
id_Img int not null identity(1,1) ,
Img_Url nvarchar (max) not null, 
constraint PK_id_Img primary key (id_Img asc)
)

Create table Development_Department
(
id_Development_Department int not null identity(1,1),
Title_Development_Department nvarchar(60) not null,
constraint UQ_Title_Development_Department Unique (Title_Development_Department),
constraint PK_id_Development_Department primary key (id_Development_Department asc)
)

create table Project_Category
(
id_Category int not null identity(1,1),
Title_category nvarchar(40) not null,
constraint UQ_Title_Category Unique (Title_Category),
constraint PK_id_Category primary key (id_Category asc)


)

Create table Project_Status
(
id_Status int not null IDENTITY (1,1), 
Proj_Status nvarchar(40) not null,
constraint UQ_Proj_Status Unique (Proj_Status),
constraint PK_id_Status primary key (id_Status asc)
)


Create table Project
(
id_Project int not null ,
id_Category int not null,
Title nvarchar (max) not null,
Author nvarchar(max) not null,
Area nvarchar(max) not null,
Novelty_of_Research_Work nvarchar(max) not null,
Efficiency nvarchar(max) not null,
Development_Form nvarchar(max) not null,
id_Development_Department int,
Phone nvarchar (20),
id_Status int not null,
constraint PK_id_Project primary key (id_Project asc),
CONSTRAINT [FK_Project_Project_Category]  FOREIGN KEY (id_Category)  REFERENCES Project_Category (id_Category),
CONSTRAINT [FK_Project_Development_Department] FOREIGN KEY (id_Development_Department)  REFERENCES Development_Department (id_Development_Department),
CONSTRAINT [FK_Project_Project_Status] FOREIGN KEY (id_Status)  REFERENCES Project_Status (id_Status)
)

create table Project_Img_Map
(
id_Proj_Img_map int  not null identity(1,1),
id_Project int not null,
id_Img int not null,
CONSTRAINT [UQ_id_Proj_Img_map] unique (id_Proj_Img_map),
constraint PK_id_Proj_Img_map primary key (id_Project asc),
CONSTRAINT [FK_Project_Img_Map_Project] Foreign key (id_Project) references Project (id_Project),
CONSTRAINT [FK_Project_Img_Map_Img] foreign key (id_Img) references Img (id_Img) 
)
