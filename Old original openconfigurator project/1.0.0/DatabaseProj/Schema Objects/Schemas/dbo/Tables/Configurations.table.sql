﻿CREATE TABLE [dbo].[Configurations] (
    [ID]               INT           IDENTITY (1, 1) NOT NULL,
    [ModelID]          INT           NOT NULL,
    [UITemplateID]     INT           NOT NULL,
    [Name]             NVARCHAR (50) NULL,
    [CreatedDate]      DATETIME      NULL,
    [LastModifiedDate] DATETIME      NULL
);







