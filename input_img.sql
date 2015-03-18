Use XX2012
GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406152' and hjlb=1 and hjjf='2014' and hjnr=N'区级文明学生')
				Begin
				Print 'j120406152:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406152',  1, '2014', GETDATE(), N'区级文明学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img001.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406164' and hjlb=1 and hjjf='2015' and hjnr=N'市级文明学生')
				Begin
				Print 'j120406164:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406164',  1, '2015', GETDATE(), N'市级文明学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img002.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406175' and hjlb=1 and hjjf='2014' and hjnr=N'区级文明学生')
				Begin
				Print 'j120406175:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406175',  1, '2014', GETDATE(), N'区级文明学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img003.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406287' and hjlb=1 and hjjf='2015' and hjnr=N'市级文明学生')
				Begin
				Print 'j120406287:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406287',  1, '2015', GETDATE(), N'市级文明学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img004.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406163' and hjlb=4 and hjjf='2014' and hjnr=N'天津市第十三届运动会击剑比赛男子花剑少年乙组(团体)第二名')
				Begin
				Print 'j120406163:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406163',  4, '2014', GETDATE(), N'天津市第十三届运动会击剑比赛男子花剑少年乙组(团体)第二名', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img005.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406145' and hjlb=2 and hjjf='2014' and hjnr=N'第十三届中国日报社"21世纪杯"全国中小学生英语演讲比赛天津赛区决赛初中组二等奖')
				Begin
				Print 'j120406145:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406145',  2, '2014', GETDATE(), N'第十三届中国日报社"21世纪杯"全国中小学生英语演讲比赛天津赛区决赛初中组二等奖', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img006.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406145' and hjlb=2 and hjjf='2014' and hjnr=N'第十三届中国日报社"21世纪杯"全国中小学生英语演讲比赛天津赛区半决赛初中组季军')
				Begin
				Print 'j120406145:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406145',  2, '2014', GETDATE(), N'第十三届中国日报社"21世纪杯"全国中小学生英语演讲比赛天津赛区半决赛初中组季军', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img007.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406163' and hjlb=4 and hjjf='2014' and hjnr=N'天津市第十三届运动会击剑比赛男子花剑少年乙组(个人)第三名')
				Begin
				Print 'j120406163:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406163',  4, '2014', GETDATE(), N'天津市第十三届运动会击剑比赛男子花剑少年乙组(个人)第三名', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img008.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406276' and hjlb=1 and hjjf='2014' and hjnr=N'区级文明学生')
				Begin
				Print 'j120406276:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406276',  1, '2014', GETDATE(), N'区级文明学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img009.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406253' and hjlb=1 and hjjf='2014' and hjnr=N'市级文明学生')
				Begin
				Print 'j120406253:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406253',  1, '2014', GETDATE(), N'市级文明学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img010.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406260' and hjlb=1 and hjjf='2014' and hjnr=N'区级文明学生')
				Begin
				Print 'j120406260:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406260',  1, '2014', GETDATE(), N'区级文明学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img011.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406251' and hjlb=2 and hjjf='2014' and hjnr=N'天津市青少年科技创新大赛无线电工程比赛三等奖')
				Begin
				Print 'j120406251:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406251',  2, '2014', GETDATE(), N'天津市青少年科技创新大赛无线电工程比赛三等奖', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img012.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406024' and hjlb=1 and hjjf='2014' and hjnr=N'校级三好学生')
				Begin
				Print 'j120406024:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406024',  1, '2014', GETDATE(), N'校级三好学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img013.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406019' and hjlb=1 and hjjf='2014' and hjnr=N'市级文明学生')
				Begin
				Print 'j120406019:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406019',  1, '2014', GETDATE(), N'市级文明学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img014.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406011' and hjlb=2 and hjjf='2014' and hjnr=N'2014-2015学年度中学(初中 西画)艺术特长生考核认定中成绩合格')
				Begin
				Print 'j120406011:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406011',  2, '2014', GETDATE(), N'2014-2015学年度中学(初中 西画)艺术特长生考核认定中成绩合格', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img015.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406034' and hjlb=2 and hjjf='2014' and hjnr=N'2014-2015学年度中学(初中 舞蹈)艺术特长生考核认定中成绩合格')
				Begin
				Print 'j120406034:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406034',  2, '2014', GETDATE(), N'2014-2015学年度中学(初中 舞蹈)艺术特长生考核认定中成绩合格', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img016.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406234' and hjlb=1 and hjjf='2014' and hjnr=N'市级文明学生')
				Begin
				Print 'j120406234:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406234',  1, '2014', GETDATE(), N'市级文明学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img017.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406338' and hjlb=3 and hjjf='2012' and hjnr=N'第六届中华情艺术风采国际交流展演荣获钢琴专业少年A组银奖')
				Begin
				Print 'j120406338:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406338',  3, '2012', GETDATE(), N'第六届中华情艺术风采国际交流展演荣获钢琴专业少年A组银奖', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img018.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406241' and hjlb=2 and hjjf='2014' and hjnr=N'"美丽中国 我的中国梦"读书教育活动中,中学演讲优秀奖')
				Begin
				Print 'j120406241:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406241',  2, '2014', GETDATE(), N'"美丽中国 我的中国梦"读书教育活动中,中学演讲优秀奖', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img019.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406218' and hjlb=1 and hjjf='2014' and hjnr=N'校级三好学生')
				Begin
				Print 'j120406218:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406218',  1, '2014', GETDATE(), N'校级三好学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img020.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406218' and hjlb=1 and hjjf='2014' and hjnr=N'区级文明学生')
				Begin
				Print 'j120406218:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406218',  1, '2014', GETDATE(), N'区级文明学生', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img021.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406218' and hjlb=4 and hjjf='2014' and hjnr=N'2014年天津市大众跆拳道公开赛团体二等奖')
				Begin
				Print 'j120406218:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406218',  4, '2014', GETDATE(), N'2014年天津市大众跆拳道公开赛团体二等奖', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img022.jpg.jpg', Single_Blob) as a
				end
			GO
			If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
				where xh='j120406218' and hjlb=2 and hjjf='2013' and hjnr=N'第十三届中国日报社"21世纪杯"全国中小学生英语演讲比赛天津赛区决赛初中组三等奖')
				Begin
				Print 'j120406218:'
				Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
				      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
				      ,[fj1]
				) 
				Select NEWID(), 'j120406218',  2, '2013', GETDATE(), N'第十三届中国日报社"21世纪杯"全国中小学生英语演讲比赛天津赛区决赛初中组三等奖', 3, null
					, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img023.jpg.jpg', Single_Blob) as a
				end
			GO
