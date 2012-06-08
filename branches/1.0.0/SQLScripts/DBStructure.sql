USE [OpenConfigurator_DEV]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/19/2011 00:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([ID], [Email], [Password]) VALUES (1, N'Radu', N'hej123!')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[FeatureGroup_Types]    Script Date: 10/19/2011 00:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureGroup_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FixedLowerBound] [int] NULL,
	[FixedUpperBound] [int] NULL,
 CONSTRAINT [PK_FeatureGroup_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FeatureGroup_Types] ON
INSERT [dbo].[FeatureGroup_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (1, N'OR', 1, NULL)
INSERT [dbo].[FeatureGroup_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (2, N'XOR', 1, 1)
INSERT [dbo].[FeatureGroup_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (3, N'Custom OR', NULL, NULL)
SET IDENTITY_INSERT [dbo].[FeatureGroup_Types] OFF
/****** Object:  Table [dbo].[Feature_Types]    Script Date: 10/19/2011 00:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FixedLowerBound] [int] NULL,
	[FixedUpperBound] [int] NULL,
 CONSTRAINT [PK_Feature_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Feature_Types] ON
INSERT [dbo].[Feature_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (1, N'Mandatory', 1, 1)
INSERT [dbo].[Feature_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (2, N'Optional', 0, 1)
INSERT [dbo].[Feature_Types] ([ID], [Name], [FixedLowerBound], [FixedUpperBound]) VALUES (3, N'Cloneable', 0, NULL)
SET IDENTITY_INSERT [dbo].[Feature_Types] OFF
/****** Object:  Table [dbo].[Attribute_Types]    Script Date: 10/19/2011 00:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attribute_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attribute_Types] ON
INSERT [dbo].[Attribute_Types] ([ID], [Name]) VALUES (1, N'Constant')
INSERT [dbo].[Attribute_Types] ([ID], [Name]) VALUES (2, N'Dynamic')
INSERT [dbo].[Attribute_Types] ([ID], [Name]) VALUES (3, N'User Input')
SET IDENTITY_INSERT [dbo].[Attribute_Types] OFF
/****** Object:  Table [dbo].[Attribute_DataTypes]    Script Date: 10/19/2011 00:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute_DataTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attribute_DataTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attribute_DataTypes] ON
INSERT [dbo].[Attribute_DataTypes] ([ID], [Name]) VALUES (1, N'Integer')
INSERT [dbo].[Attribute_DataTypes] ([ID], [Name]) VALUES (2, N'Boolean')
INSERT [dbo].[Attribute_DataTypes] ([ID], [Name]) VALUES (3, N'String')
SET IDENTITY_INSERT [dbo].[Attribute_DataTypes] OFF
/****** Object:  Table [dbo].[Models]    Script Date: 10/19/2011 00:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Models](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Models] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 10/19/2011 00:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[ParentFeatureID] [int] NULL,
	[FeatureTypeID] [int] NOT NULL,
	[FeatureGroupID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[LowerBound] [int] NULL,
	[UpperBound] [int] NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attributes]    Script Date: 10/19/2011 00:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attributes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FeatureID] [int] NOT NULL,
	[AttributeTypeID] [int] NOT NULL,
	[DataTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Attributes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rule_Types]    Script Date: 10/19/2011 00:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rule_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rule_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Rule_Types] ON
INSERT [dbo].[Rule_Types] ([ID], [Name]) VALUES (1, N'Composition Rules')
INSERT [dbo].[Rule_Types] ([ID], [Name]) VALUES (2, N'Consequence Rules')
INSERT [dbo].[Rule_Types] ([ID], [Name]) VALUES (3, N'Global Constraints')
SET IDENTITY_INSERT [dbo].[Rule_Types] OFF
/****** Object:  Table [dbo].[FeatureGroups]    Script Date: 10/19/2011 00:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureGroups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[ParentFeatureID] [int] NOT NULL,
	[FeatureGroupTypeID] [int] NOT NULL,
	[LowerBound] [int] NULL,
	[UpperBound] [int] NULL,
 CONSTRAINT [PK_FeatureGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rules]    Script Date: 10/19/2011 00:50:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rules](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelID] [int] NOT NULL,
	[RuleTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Expression] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Attributes_Attribute_DataTypes]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[Attributes]  WITH CHECK ADD  CONSTRAINT [FK_Attributes_Attribute_DataTypes] FOREIGN KEY([DataTypeID])
REFERENCES [dbo].[Attribute_DataTypes] ([ID])
GO
ALTER TABLE [dbo].[Attributes] CHECK CONSTRAINT [FK_Attributes_Attribute_DataTypes]
GO
/****** Object:  ForeignKey [FK_Attributes_Attribute_Types]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[Attributes]  WITH CHECK ADD  CONSTRAINT [FK_Attributes_Attribute_Types] FOREIGN KEY([AttributeTypeID])
REFERENCES [dbo].[Attribute_Types] ([ID])
GO
ALTER TABLE [dbo].[Attributes] CHECK CONSTRAINT [FK_Attributes_Attribute_Types]
GO
/****** Object:  ForeignKey [FK_Attributes_Features]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[Attributes]  WITH CHECK ADD  CONSTRAINT [FK_Attributes_Features] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Features] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attributes] CHECK CONSTRAINT [FK_Attributes_Features]
GO
/****** Object:  ForeignKey [FK_FeatureGroups_FeatureGroup_Types]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[FeatureGroups]  WITH CHECK ADD  CONSTRAINT [FK_FeatureGroups_FeatureGroup_Types] FOREIGN KEY([FeatureGroupTypeID])
REFERENCES [dbo].[FeatureGroup_Types] ([ID])
GO
ALTER TABLE [dbo].[FeatureGroups] CHECK CONSTRAINT [FK_FeatureGroups_FeatureGroup_Types]
GO
/****** Object:  ForeignKey [FK_FeatureGroups_Features]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[FeatureGroups]  WITH CHECK ADD  CONSTRAINT [FK_FeatureGroups_Features] FOREIGN KEY([ParentFeatureID])
REFERENCES [dbo].[Features] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeatureGroups] CHECK CONSTRAINT [FK_FeatureGroups_Features]
GO
/****** Object:  ForeignKey [FK_FeatureGroups_Models]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[FeatureGroups]  WITH CHECK ADD  CONSTRAINT [FK_FeatureGroups_Models] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Models] ([ID])
GO
ALTER TABLE [dbo].[FeatureGroups] CHECK CONSTRAINT [FK_FeatureGroups_Models]
GO
/****** Object:  ForeignKey [FK_Features_Feature_Types]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[Features]  WITH CHECK ADD  CONSTRAINT [FK_Features_Feature_Types] FOREIGN KEY([FeatureTypeID])
REFERENCES [dbo].[Feature_Types] ([ID])
GO
ALTER TABLE [dbo].[Features] CHECK CONSTRAINT [FK_Features_Feature_Types]
GO
/****** Object:  ForeignKey [FK_Features_FeatureGroups]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[Features]  WITH CHECK ADD  CONSTRAINT [FK_Features_FeatureGroups] FOREIGN KEY([FeatureGroupID])
REFERENCES [dbo].[FeatureGroups] ([ID])
GO
ALTER TABLE [dbo].[Features] CHECK CONSTRAINT [FK_Features_FeatureGroups]
GO
/****** Object:  ForeignKey [FK_Features_Features]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[Features]  WITH CHECK ADD  CONSTRAINT [FK_Features_Features] FOREIGN KEY([ParentFeatureID])
REFERENCES [dbo].[Features] ([ID])
GO
ALTER TABLE [dbo].[Features] CHECK CONSTRAINT [FK_Features_Features]
GO
/****** Object:  ForeignKey [FK_Features_Models]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[Features]  WITH CHECK ADD  CONSTRAINT [FK_Features_Models] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Models] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Features] CHECK CONSTRAINT [FK_Features_Models]
GO
/****** Object:  ForeignKey [FK_Models_Users]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[Models]  WITH CHECK ADD  CONSTRAINT [FK_Models_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Models] CHECK CONSTRAINT [FK_Models_Users]
GO
/****** Object:  ForeignKey [FK_Rules_Models]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[Rules]  WITH CHECK ADD  CONSTRAINT [FK_Rules_Models] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Models] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rules] CHECK CONSTRAINT [FK_Rules_Models]
GO
/****** Object:  ForeignKey [FK_Rules_Rule_Types]    Script Date: 10/19/2011 00:50:38 ******/
ALTER TABLE [dbo].[Rules]  WITH CHECK ADD  CONSTRAINT [FK_Rules_Rule_Types] FOREIGN KEY([RuleTypeID])
REFERENCES [dbo].[Rule_Types] ([ID])
GO
ALTER TABLE [dbo].[Rules] CHECK CONSTRAINT [FK_Rules_Rule_Types]
GO
