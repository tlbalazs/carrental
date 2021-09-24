--Weekly full backup

USE [msdb]
GO
DECLARE @jobId BINARY(16)
EXEC  msdb.dbo.sp_add_job @job_name=N'CarRentalFullBackup', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'DESKTOP-SR0EERQ\sysadmin', @job_id = @jobId OUTPUT
select @jobId
GO
EXEC msdb.dbo.sp_add_jobserver @job_name=N'CarRentalFullBackup', @server_name = N'DESKTOP-SR0EERQ'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_name=N'CarRentalFullBackup', @step_name=N'FullBackup', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'BACKUP DATABASE [CarRental] TO  DISK = N''C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalFullBackup'' WITH NOFORMAT, RETAINDAYS = 14, NOINIT,  NAME = N''CarRental-Full Database Backup'', SKIP, NOREWIND, NOUNLOAD,  STATS = 10, CHECKSUM
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N''CarRental'' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N''CarRental'' )
if @backupSetId is null begin raiserror(N''Verify failed. Backup information for database ''''CarRental'''' not found.'', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N''C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalFullBackup.bak'' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO
', 
		@database_name=N'CarRental', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_name=N'CarRentalFullBackup', 
		@enabled=1, 
		@start_step_id=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@description=N'', 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'DESKTOP-SR0EERQ\sysadmin', 
		@notify_email_operator_name=N'', 
		@notify_page_operator_name=N''
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'CarRentalFullBackup', @name=N'W_CarRental_Full', 
		@enabled=1, 
		@freq_type=8, 
		@freq_interval=64, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20210813, 
		@active_end_date=99991231, 
		@active_start_time=0, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO

--4 óránként Diff

USE [msdb]
GO
DECLARE @jobId BINARY(16)
EXEC  msdb.dbo.sp_add_job @job_name=N'CarRentalDiffBackup', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'DESKTOP-SR0EERQ\sysadmin', @job_id = @jobId OUTPUT
select @jobId
GO
EXEC msdb.dbo.sp_add_jobserver @job_name=N'CarRentalDiffBackup', @server_name = N'DESKTOP-SR0EERQ'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_name=N'CarRentalDiffBackup', @step_name=N'DiffBackup', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'BACKUP DATABASE [CarRental] TO  DISK = N''C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalDiffBackup.bak'' WITH  DIFFERENTIAL ,  RETAINDAYS = 14, NOFORMAT, NOINIT,  NAME = N''CarRental-Differential Database Backup'', SKIP, NOREWIND, NOUNLOAD,  STATS = 10, CHECKSUM
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N''CarRental'' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N''CarRental'' )
if @backupSetId is null begin raiserror(N''Verify failed. Backup information for database ''''CarRental'''' not found.'', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N''C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalDiffBackup.bak'' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO

', 
		@database_name=N'CarRental', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_name=N'CarRentalDiffBackup', 
		@enabled=1, 
		@start_step_id=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@description=N'', 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'DESKTOP-SR0EERQ\sysadmin', 
		@notify_email_operator_name=N'', 
		@notify_page_operator_name=N''
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'CarRentalDiffBackup', @name=N'4H_CarRental_Diff', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=8, 
		@freq_subday_interval=4, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20210813, 
		@active_end_date=99991231, 
		@active_start_time=0, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO

--Log 

--30 percenként log backup
USE [msdb]
GO
DECLARE @jobId BINARY(16)
EXEC  msdb.dbo.sp_add_job @job_name=N'CarRentalLogBackup', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'DESKTOP-SR0EERQ\sysadmin', @job_id = @jobId OUTPUT
select @jobId
GO
EXEC msdb.dbo.sp_add_jobserver @job_name=N'CarRentalLogBackup', @server_name = N'DESKTOP-SR0EERQ'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_name=N'CarRentalLogBackup', @step_name=N'LogBackup', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'BACKUP LOG [CarRental] TO  DISK = N''C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalLogBackup.bak'' WITH  RETAINDAYS = 14, NOFORMAT, NOINIT,  NAME = N''CarRental-Full Database Backup'', SKIP, NOREWIND, NOUNLOAD,  STATS = 10, CHECKSUM
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N''CarRental'' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N''CarRental'' )
if @backupSetId is null begin raiserror(N''Verify failed. Backup information for database ''''CarRental'''' not found.'', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N''C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalLogBackup.bak'' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO
', 
		@database_name=N'CarRental', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_name=N'CarRentalLogBackup', 
		@enabled=1, 
		@start_step_id=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@description=N'', 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'DESKTOP-SR0EERQ\sysadmin', 
		@notify_email_operator_name=N'', 
		@notify_page_operator_name=N''
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'CarRentalLogBackup', @name=N'30min_CarRental_Log', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=4, 
		@freq_subday_interval=30, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20210813, 
		@active_end_date=99991231, 
		@active_start_time=0, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO



USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_id=N'3f050e06-01a9-48e3-8b1c-c2c26acd93b5', 
		@owner_login_name=N'AdmCarRental'
GO

USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_id=N'f7459fb3-8fa0-451c-89e5-1c6d80499038', 
		@owner_login_name=N'AdmCarRental'
GO

USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_id=N'b69b8efb-695f-4373-8524-109546853102', 
		@owner_login_name=N'AdmCarRental'
GO


	