CREATE TABLE [dbo].[Supplier]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[CompanyName] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL,
[ContactName] [nvarchar] (50) COLLATE Modern_Spanish_CI_AS NULL,
[ContactTitle] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[City] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[Country] [nvarchar] (40) COLLATE Modern_Spanish_CI_AS NULL,
[Phone] [nvarchar] (30) COLLATE Modern_Spanish_CI_AS NULL,
[Fax] [nvarchar] (30) COLLATE Modern_Spanish_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Supplier] ADD CONSTRAINT [PK_SUPPLIER] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IndexSupplierName] ON [dbo].[Supplier] ([CompanyName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IndexSupplierCountry] ON [dbo].[Supplier] ([Country]) ON [PRIMARY]
GO
