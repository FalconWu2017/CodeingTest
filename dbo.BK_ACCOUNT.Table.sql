USE [mzbk]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BK_ACCOUNT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PERSON_ID] [varchar](18) NOT NULL,
	[FREEZE_STATUS] [int] NOT NULL,
	[FREEZE_DATE] [datetime] NOT NULL,
	[OPERATOR] [int] NOT NULL,
	[OPERATE_DATE] [datetime] NOT NULL,
	[STATUS] [int] NOT NULL,
 CONSTRAINT [PK_BK_ACCOUNT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IDX_BK_ACCOUNT_PERSON_ID] ON [dbo].[BK_ACCOUNT] 
(
	[PERSON_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 黄灯
   1 红灯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BK_ACCOUNT', @level2type=N'COLUMN',@level2name=N'FREEZE_STATUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'永久即当前加上100年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BK_ACCOUNT', @level2type=N'COLUMN',@level2name=N'FREEZE_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 有效
   1 无效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BK_ACCOUNT', @level2type=N'COLUMN',@level2name=N'STATUS'
GO
