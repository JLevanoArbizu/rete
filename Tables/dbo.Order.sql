CREATE TABLE [dbo].[Order]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[OrderDate] [datetime] NOT NULL CONSTRAINT [DF__Order__OrderDate__4CA06362] DEFAULT (getdate()),
[OrderNumber] [nvarchar] (10) COLLATE Modern_Spanish_CI_AS NULL,
[CustomerId] [int] NOT NULL,
[TotalAmount] [decimal] (12, 2) NULL CONSTRAINT [DF__Order__TotalAmou__4D94879B] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IndexOrderCustomerId] ON [dbo].[Order] ([CustomerId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IndexOrderOrderDate] ON [dbo].[Order] ([OrderDate]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] ADD CONSTRAINT [FK_ORDER_REFERENCE_CUSTOMER] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id])
GO
