CREATE TABLE [dbo].[Customer]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL,
[LastName] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL,
[City] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[Country] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[Phone] [nvarchar] (20) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IndexCustomerName] ON [dbo].[Customer] ([LastName], [FirstName]) ON [PRIMARY]
GO
