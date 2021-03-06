USE [HealthcareSystem]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 30/09/2021 21:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[author_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Apointments]    Script Date: 30/09/2021 21:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apointments](
	[appointment_id] [int] IDENTITY(1,1) NOT NULL,
	[patient_id] [int] NULL,
	[doctor_id] [int] NULL,
	[date] [date] NULL,
	[slot_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[appointment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 30/09/2021 21:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[date] [date] NULL,
	[description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor_Feedbacks]    Script Date: 30/09/2021 21:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor_Feedbacks](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[rate] [int] NULL,
	[patient_id] [int] NULL,
	[doctor_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 30/09/2021 21:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[doctor_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
	[phone] [nvarchar](10) NULL,
	[email] [nvarchar](max) NULL,
	[role] [nvarchar](max) NULL,
	[type_id] [int] NULL,
	[description] [nvarchar](max) NULL,
	[account_id] [int] NULL,
	[image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 30/09/2021 21:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[patient_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
	[phone] [nvarchar](10) NULL,
	[email] [nvarchar](max) NULL,
	[account_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 30/09/2021 21:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[reservation_id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[patient_id] [int] NULL,
	[service_id] [int] NULL,
	[price] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[reservation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service_Feedbacks]    Script Date: 30/09/2021 21:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Feedbacks](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[rate] [int] NULL,
	[patient_id] [int] NULL,
	[service_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 30/09/2021 21:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[service_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[type_id] [int] NULL,
	[description] [nvarchar](max) NULL,
	[price] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialities]    Script Date: 30/09/2021 21:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialities](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timetable]    Script Date: 30/09/2021 21:34:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timetable](
	[slot_id] [int] IDENTITY(1,1) NOT NULL,
	[time] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[slot_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([account_id], [username], [password], [author_id]) VALUES (1, N'benhnhan1', N'123', 2)
INSERT [dbo].[Accounts] ([account_id], [username], [password], [author_id]) VALUES (2, N'benhnhan2', N'abcd', 2)
INSERT [dbo].[Accounts] ([account_id], [username], [password], [author_id]) VALUES (4, N'benhnhan4', N'12345', 2)
INSERT [dbo].[Accounts] ([account_id], [username], [password], [author_id]) VALUES (5, N'benhnhanmoi', N'12345', 2)
INSERT [dbo].[Accounts] ([account_id], [username], [password], [author_id]) VALUES (7, N'hoangxuanan', N'an1234', 2)
INSERT [dbo].[Accounts] ([account_id], [username], [password], [author_id]) VALUES (10, N'viethoang1306', N'abc', 2)
INSERT [dbo].[Accounts] ([account_id], [username], [password], [author_id]) VALUES (11, N'admin', N'admin', 0)
INSERT [dbo].[Accounts] ([account_id], [username], [password], [author_id]) VALUES (12, N'doctor1', N'12345', 1)
INSERT [dbo].[Accounts] ([account_id], [username], [password], [author_id]) VALUES (14, N'doctor3', N'12345', 1)
INSERT [dbo].[Accounts] ([account_id], [username], [password], [author_id]) VALUES (15, N'doctor4', N'12345', 1)
INSERT [dbo].[Accounts] ([account_id], [username], [password], [author_id]) VALUES (16, N'doctor5', N'12345', 1)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctors] ON 

INSERT [dbo].[Doctors] ([doctor_id], [name], [gender], [dob], [phone], [email], [role], [type_id], [description], [account_id], [image]) VALUES (1, N'Phiplippe Macaire', 1, CAST(N'1984-06-28' AS Date), N'0913028592', N'philippe02@gmail.com', N'Head of Department of Anesthesiology - pain relief', 1, N'"Professor, Doctor, Doctor Philippe Macaire has devoted more than 30 years in the field of 
Anesthesia - pain treatment, is a strong expert in: Anesthesia and resuscitation in pediatric surgery;
Difficult airway management and difficult intubation; Ultrasound-guided vertebral plane (ESP) 
anesthesia for open-heart and thoracic surgery, new technique for the treatment of non-opioid pain; 
Monitoring ventilation for obese patients during bariatric surgery; Palliative care for the sick."', 12, N'https://vinmec-prod.s3.amazonaws.com/images/15_08_2019_03_13_38_444466.jpeg')
INSERT [dbo].[Doctors] ([doctor_id], [name], [gender], [dob], [phone], [email], [role], [type_id], [description], [account_id], [image]) VALUES (3, N'Reinel Martin', 1, CAST(N'1975-06-11' AS Date), N'0385923123', N'martin12n@gmail.com', N'Cardiologist', 4, N'"Master, Dr. Reinel Martin Alvarez Plasencia has 23 years of experience working in the field of Cardiology,
especially with strong expertise in echocardiography and the treatment of cardiovascular 
diseases including hypertension, arterial disease. coronary, valvular diseases, heart failure, 
cardiomyopathies, cardiovascular diseases systemic disorders, dyslipidemia,
congenital heart disease and arrhythmias."', 14, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMJzEZNXtuRhy2YQE3p4mRfv6VhCsN2mWSEw&usqp=CAU')
SET IDENTITY_INSERT [dbo].[Doctors] OFF
GO
SET IDENTITY_INSERT [dbo].[Patients] ON 

INSERT [dbo].[Patients] ([patient_id], [name], [gender], [dob], [phone], [email], [account_id]) VALUES (1, N'nguyen van nam', 1, CAST(N'1900-01-01' AS Date), N'0123456678', N'nguyenvanmanh@gmail.com', 1)
INSERT [dbo].[Patients] ([patient_id], [name], [gender], [dob], [phone], [email], [account_id]) VALUES (2, N'benh nhan ba', 0, CAST(N'1900-01-01' AS Date), N'1231231231', N'123@gmail.com', 2)
INSERT [dbo].[Patients] ([patient_id], [name], [gender], [dob], [phone], [email], [account_id]) VALUES (4, N'tran van teo', 1, CAST(N'1991-10-20' AS Date), N'0123987987', N'teo@gmail.com', 5)
INSERT [dbo].[Patients] ([patient_id], [name], [gender], [dob], [phone], [email], [account_id]) VALUES (5, N'Trinh Viet Hoang', 1, CAST(N'2001-06-21' AS Date), N'0865032554', N'hoangtvhe151161@fpt.edu.vn', 10)
SET IDENTITY_INSERT [dbo].[Patients] OFF
GO
SET IDENTITY_INSERT [dbo].[Specialities] ON 

INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (1, N'Anesthetics & Recovery ')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (2, N'Autism & Cerebral Palsy ')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (3, N'Beauty ')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (4, N'Cardiology ')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (5, N'Dentistry')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (6, N'Dermatology')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (7, N'Endocrinology')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (8, N'Fertility')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (9, N'Gastroenterology')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (10, N'Gynecology & Obstetrics')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (11, N'Hematology & Blood Transfusion')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (12, N'Infectious Disease')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (13, N'Neurology')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (14, N'Nutrition')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (15, N'Oncology')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (16, N'Ophthalmology')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (17, N'Orthopedic')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (18, N'Pediatrics')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (19, N'Pharmacy')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (20, N'Physical Therapy & Rehabilitation ')
INSERT [dbo].[Specialities] ([type_id], [name]) VALUES (21, N'Resuscitation & Emergency')
SET IDENTITY_INSERT [dbo].[Specialities] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Accounts__F3DBC572F2A1E24F]    Script Date: 30/09/2021 21:34:49 ******/
ALTER TABLE [dbo].[Accounts] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Apointments]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctors] ([doctor_id])
GO
ALTER TABLE [dbo].[Apointments]  WITH CHECK ADD FOREIGN KEY([patient_id])
REFERENCES [dbo].[Patients] ([patient_id])
GO
ALTER TABLE [dbo].[Apointments]  WITH CHECK ADD FOREIGN KEY([slot_id])
REFERENCES [dbo].[Timetable] ([slot_id])
GO
ALTER TABLE [dbo].[Doctor_Feedbacks]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Doctors] ([doctor_id])
GO
ALTER TABLE [dbo].[Doctor_Feedbacks]  WITH CHECK ADD FOREIGN KEY([patient_id])
REFERENCES [dbo].[Patients] ([patient_id])
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Accounts] ([account_id])
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD FOREIGN KEY([type_id])
REFERENCES [dbo].[Specialities] ([type_id])
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Accounts] ([account_id])
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD FOREIGN KEY([patient_id])
REFERENCES [dbo].[Patients] ([patient_id])
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [dbo].[Services] ([service_id])
GO
ALTER TABLE [dbo].[Service_Feedbacks]  WITH CHECK ADD FOREIGN KEY([patient_id])
REFERENCES [dbo].[Patients] ([patient_id])
GO
ALTER TABLE [dbo].[Service_Feedbacks]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [dbo].[Services] ([service_id])
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD FOREIGN KEY([type_id])
REFERENCES [dbo].[Specialities] ([type_id])
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD CHECK  ((NOT [phone] like '%[^0-9]%' AND len([phone])>=(8) AND len([phone])<=(10)))
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD CHECK  ((NOT [phone] like '%[^0-9]%' AND len([phone])>=(8) AND len([phone])<=(10)))
GO
