USE [Expeditor]
GO

/****** Object:  Table [dbo].[Articles]    Script Date: 21/06/2016 14:02:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Articles](
	[Identifiant] [int] IDENTITY(1,1) NOT NULL,
	[Libelle] [ntext] NOT NULL,
	[Poids] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Identifiant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

