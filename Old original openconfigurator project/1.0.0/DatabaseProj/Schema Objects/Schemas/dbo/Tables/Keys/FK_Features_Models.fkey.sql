﻿ALTER TABLE [dbo].[Features]
    ADD CONSTRAINT [FK_Features_Models] FOREIGN KEY ([ModelID]) REFERENCES [dbo].[Models] ([ID]) ON DELETE CASCADE ON UPDATE CASCADE;

