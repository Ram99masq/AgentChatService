USE [ChatAgent]
GO
/****** Object:  Table [dbo].[CustomerAgent]    Script Date: 01-04-2023 19:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAgent](
	[CustomerAgentId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[AgentId] [int] NULL,
 CONSTRAINT [PK_CustomerAgent] PRIMARY KEY CLUSTERED 
(
	[CustomerAgentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 01-04-2023 19:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserType] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[TeamName] [varchar](50) NULL,
	[IsAvailable] [bit] NULL,
	[LoginTime] [datetime] NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Login] ON 
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (1, N'Cust1@cust.com', N'Customer', N'demo', NULL, NULL, CAST(N'2023-04-01T19:44:05.247' AS DateTime))
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (2, N'Cust2@cust.com', N'Customer', N'demo', NULL, NULL, CAST(N'2023-04-01T18:30:40.900' AS DateTime))
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (3, N'Cust3@cust.com', N'Customer', N'demo', NULL, NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (4, N'Cust4@cust.com', N'Customer', N'demo', NULL, NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (5, N'Cust5@cust.com', N'Customer', N'demo', NULL, NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (6, N'teamlead1@agent.com', N'Agent', N'demo', N'TeamA', NULL, CAST(N'2023-04-01T05:53:56.877' AS DateTime))
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (7, N'midlevel1@agent.com', N'Agent', N'demo', N'TeamA', NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (8, N'midlevel2@agent.com', N'Agent', N'demo', N'TeamA', NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (9, N'junior1@agent.com', N'Agent', N'demo', N'TeamA', NULL, CAST(N'2023-04-01T18:11:03.287' AS DateTime))
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (10, N'senior1@agent.com', N'Agent', N'demo', N'TeamB', NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (11, N'midlevel3@agent.com', N'Agent', N'demo', N'TeamB', NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (12, N'junior2@agent.com', N'Agent', N'demo', N'TeamB', NULL, CAST(N'2023-04-01T18:54:34.020' AS DateTime))
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (13, N'junior3@agent.com', N'Agent', N'demo', N'TeamB', NULL, CAST(N'2023-04-01T19:39:00.553' AS DateTime))
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (14, N'midlevel4@agent.com', N'Agent', N'demo', N'TeamC', NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (15, N'midlevel5@agent.com', N'Agent', N'demo', N'TeamC', NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (17, N'junior9@agent.com', N'Agent', N'demo', N'TeamOverflow', NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (18, N'junior8@agent.com', N'Agent', N'demo', N'TeamOverflow', NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (19, N'junior7@agent.com', N'Agent', N'demo', N'TeamOverflow', NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (20, N'junior6@agent.com', N'Agent', N'demo', N'TeamOverflow', NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (21, N'junior5@agent.com', N'Agent', N'demo', N'TeamOverflow', NULL, NULL)
GO
INSERT [dbo].[Login] ([UserId], [UserName], [UserType], [Password], [TeamName], [IsAvailable], [LoginTime]) VALUES (22, N'junior4@agent.com', N'Agent', N'demo', N'TeamOverflow', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserList]    Script Date: 01-04-2023 19:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetUserList]
as
begin
--select userid,UserName,UserType,TeamName into #templogin 
--  from [login] where UserType<>'Customer' and teamname<>'TeamOverflow'

--  select * from #templogin 
  --calculate the capacity
  declare  @juniorcapacity int=4;
  declare  @midlevelcapacity int=6;
  declare  @seniorcapacity int=8;
  declare  @teamleadcapacity int=6;

  --get the junior capacity used now to allocate to midlevel
  Declare @jtotcapacity int =0; 

  --get the juniors not assigned with the full capacity
			select  count(agentid) currentcount,c.agentid userid into #junioruser1  from [dbo].[CustomerAgent] c
			group by c.agentid  
			having agentid in (select userid from login l where UserName like 'junior%'and teamname<>'TeamOverflow') and count(c.agentid)<4

			select 0 as currentcount  ,userid into #junioruser2   from login l  where userid not in(
			select distinct agentid from customeragent c) and UserName like 'junior%'and teamname<>'TeamOverflow'


			select * into  #junioruser from(
			select * from #junioruser1
			union all
			select * from #junioruser2) abc

				--select * from #junioruser
				-- drop table #junioruser1
				--  drop table #junioruser2
				--drop table #junioruser
							   		


   --get the midlevel not assigned with the full capacity
		select  count(agentid) currentcount,c.agentid userid into #midlvluser1  from [dbo].[CustomerAgent] c
		group by c.agentid  
		having agentid in (select userid from login l where UserName like 'mid%'and teamname<>'TeamOverflow') and count(c.agentid)<6

  
		select 0 as currentcount  ,userid into #midlvluser2  from login l  where userid not in(
		select agentid from customeragent c) and UserName like 'mid%'and teamname<>'TeamOverflow'
 
		select * into  #midlvluser from(
		select * from #midlvluser1
		union all
		select * from #midlvluser2) abc

		--select * from #midlvluser
		--drop table #midlvluser1
		--drop table #midlvluser2
		--drop table #midlvluser




		  --get the senior not assigned with the full capacity-8
		select  count(agentid) currentcount,c.agentid userid into #senioruser1  from [dbo].[CustomerAgent] c
		group by c.agentid  
		having agentid in (select userid from login l where UserName like 'senior%'and teamname<>'TeamOverflow') and count(c.agentid)<8

  
		select 0 as currentcount  ,userid into #senioruser2  from login l  where userid not in(
		select agentid from customeragent c) and UserName like 'senior%'and teamname<>'TeamOverflow'
 
		select * into  #senioruser from(
		select * from #senioruser1
		union all
		select * from #senioruser2) abc

		--select * from #senioruser
		--drop table #senioruser1
		--drop table #senioruser2
		--drop table #senioruser



		--get the teamlead not assigned with the full capacity-8
		select  count(agentid) currentcount,c.agentid userid into #teamlead1  from [dbo].[CustomerAgent] c
		group by c.agentid  
		having agentid in (select userid from login l where UserName like 'teamlead%'and teamname<>'TeamOverflow') and count(c.agentid)<5

  
		select 0 as currentcount  ,userid into #teamlead2  from login l  where userid not in(
		select agentid from customeragent c) and UserName like 'teamlead%'and teamname<>'TeamOverflow'
 
		select * into  #teamlead from(
		select * from #teamlead1
		union all
		select * from #teamlead2) abc

		--select * from #teamlead
		--drop table #teamlead1
		--drop table #teamlead2
		--drop table #teamlead

		 --User list,if need to list all user agents available
		select * into  #teamall from(
		select * from #junioruser
		union all		
		select * from #midlvluser
		union all
		select * from #senioruser	
		union all
		select * from #teamlead				
		) abc

		--select * from  #teamall 
		--select userid,UserName,UserType,TeamName from  Login l where userid in 
		--									( select userid from #midlvluser )


		declare @junioruser int = 0;
		select @junioruser = count(userid) from  #junioruser 
		declare @midlvluser int = 0;
		select @midlvluser = count(userid) from  #midlvluser 
		declare @senioruser int = 0;
		select @senioruser = count(userid) from  #senioruser 
		declare @teamlead int = 0;
		select @teamlead = count(userid) from  #teamlead 
		
		--print @midlvluser
		
		
		declare @allteamCount int = 0;
		select @allteamCount = count(userid) from  #teamall 

		--all team where we have all team capacity
		--select userid,UserName,UserType,TeamName  from  Login l where userid in ( select userid from #teamall )

		  --get the juniors not assigned with the full capacity
			select  count(agentid) currentcount,c.agentid userid into #teamoverflow1  from [dbo].[CustomerAgent] c
			group by c.agentid  
			having agentid in (select userid from login l where UserName like 'junior%'and teamname='TeamOverflow') and count(c.agentid)<4

			select 0 as currentcount  ,userid into #teamoverflow2   from login l  where userid not in(
			select distinct agentid from customeragent c) and UserName like 'junior%'and teamname='TeamOverflow'


			select * into  #teamoverflow from(
			select * from #teamoverflow1
			union all
			select * from #teamoverflow2) abc

			--select * from #teamoverflow
			-- drop table #teamoverflow1
			--  drop table #teamoverflow2
			--drop table #teamoverflow
							   		

		
		--dynamic variable for query
		declare @sqlQuery varchar(max) ='';
		--main logic of the agent round Robin method junior, midlevel, senior and teamlead otherwise
		if(@allteamCount=0)
		begin
		--overflow team when all teams are filled.
			set @sqlQuery = 'select  userid,UserName,UserType,TeamName from  Login l where userid in ( select userid from #teamoverflow )'
		end
		else 
		begin
		-- all other teams logic when there is little capacity
			if(@junioruser>0)
			begin
				set @sqlQuery = 'select  userid,UserName,UserType,TeamName from  Login l where userid in ( select userid from #junioruser )'
				print('@junioruser')
			end
			else if(@midlvluser>0)
			begin
				set @sqlQuery = 'select userid,UserName,UserType,TeamName from  Login l where userid in ( select userid from #midlvluser )'
				print('@midlvluser')
		
			end
			else if(@senioruser>0)
			begin
				set @sqlQuery = 'select userid,UserName,UserType,TeamName  from  Login l where userid in ( select userid from	#senioruser )'
				print('@senioruser')
			
			end
			else if(@teamlead>0)
			begin
				set @sqlQuery = 'select userid,UserName,UserType,TeamName  from  Login l where userid in ( select userid	from  #teamlead)'	
				print('@teamlead')
			end	
		end

		
	
	create table #shifttable(userid int,UserName varchar(50),UserType varchar(50),TeamName varchar(50))  
	insert INTO #shifttable(userid,UserName,UserType,TeamName) exec(@sqlQuery) 	
	DECLARE	@currentTime	Datetime	
	DECLARE	@TeamAstartTime	Datetime
	DECLARE	@TeamAendTime	Datetime
	DECLARE	@TeamBstartTime	Datetime
	DECLARE	@TeamBendTime	Datetime
	DECLARE	@TeamCstartTime	Datetime
	DECLARE	@TeamCendTime	Datetime

		SELECT	@currentTime			 = convert(varchar(10), GETDATE(), 108);
		SELECT	@TeamAstartTime			 = convert(varchar(10), '08:00:00', 108);
		SELECT	@TeamAendTime			 = convert(varchar(10), '16:00:00', 108);
		SELECT	@TeamBstartTime			 = convert(varchar(10), '16:00:00', 108);
		SELECT	@TeamBendTime			 = convert(varchar(10), '23:59:00', 108);
		SELECT	@TeamCstartTime			 = convert(varchar(10), '23:59:00', 108);
		SELECT	@TeamCendTime			 = convert(varchar(10), '08:00:00', 108);

	Declare @TeamA_RecordCount int = (select count(userid) from Login where TeamName = 'TeamA' and userid in (select userid from #teamall))
	Declare @TeamB_RecordCount int = (select count(userid) from Login where TeamName = 'TeamB'and userid in (select userid from #teamall))
	Declare @TeamC_RecordCount int = (select count(userid) from Login where TeamName = 'TeamC'and userid in (select userid from #teamall))

	
	if(@TeamA_RecordCount=0 and @TeamB_RecordCount=0 and @TeamC_RecordCount=0)
	begin
		select * from #shifttable where TeamName = 'TeamOverflow'	
	end
	else 
	begin
	--Three shift logic finally the output is going to come	
	--time between 8:00 - 16:00 - TeamA works at First shift
			IF (@currentTime >= @TeamAstartTime AND @currentTime <= @TeamAendTime)
			begin
				select * from #shifttable where TeamName = 'TeamA'
				print 'Inside  TeamA'
			end
			else --time between 16:00 - 24:00 - TeamB works at Second shift
			IF (@currentTime >= @TeamBstartTime AND @currentTime <= @TeamBendTime)
 			begin
				select * from #shifttable where TeamName = 'TeamB'
				print 'Inside  TeamB'

			end
			else --time between 24:00 - 8:00 - TeamC works at nightshift
			IF (@currentTime > @TeamCstartTime AND @currentTime <= @TeamCendTime)
			begin
				select * from #shifttable where TeamName = 'TeamC'
				print 'Inside  TeamC'

			end
	end

end
GO
USE [master]
GO
ALTER DATABASE [ChatAgent] SET  READ_WRITE 
GO
