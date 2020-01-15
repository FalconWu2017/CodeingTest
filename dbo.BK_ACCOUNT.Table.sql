USE [mzbk]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
   1 红灯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BK_ACCOUNT', @level2type=N'COLUMN',@level2name=N'FREEZE_STATUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'永久即当前加上100年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BK_ACCOUNT', @level2type=N'COLUMN',@level2name=N'FREEZE_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 有效
   1 无效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BK_ACCOUNT', @level2type=N'COLUMN',@level2name=N'STATUS'
GO
