Use XX2012
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406152' and hjlb=1 and hjjf='2014' and hjnr=N'��������ѧ��')
	Begin
	Print 'j120406152:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406152',  1, '2014', GETDATE(), N'��������ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img001.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406164' and hjlb=1 and hjjf='2015' and hjnr=N'�м�����ѧ��')
	Begin
	Print 'j120406164:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406164',  1, '2015', GETDATE(), N'�м�����ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img002.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406175' and hjlb=1 and hjjf='2014' and hjnr=N'��������ѧ��')
	Begin
	Print 'j120406175:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406175',  1, '2014', GETDATE(), N'��������ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img003.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406287' and hjlb=1 and hjjf='2015' and hjnr=N'�м�����ѧ��')
	Begin
	Print 'j120406287:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406287',  1, '2015', GETDATE(), N'�м�����ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img004.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406163' and hjlb=4 and hjjf='2014' and hjnr=N'����е�ʮ�����˶�������������ӻ�����������(����)�ڶ���')
	Begin
	Print 'j120406163:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406163',  4, '2014', GETDATE(), N'����е�ʮ�����˶�������������ӻ�����������(����)�ڶ���', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img005.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406145' and hjlb=2 and hjjf='2014' and hjnr=N'��ʮ�����й��ձ���"21���ͱ�"ȫ����Сѧ��Ӣ���ݽ������������������������Ƚ�')
	Begin
	Print 'j120406145:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406145',  2, '2014', GETDATE(), N'��ʮ�����й��ձ���"21���ͱ�"ȫ����Сѧ��Ӣ���ݽ������������������������Ƚ�', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img006.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406145' and hjlb=2 and hjjf='2014' and hjnr=N'��ʮ�����й��ձ���"21���ͱ�"ȫ����Сѧ��Ӣ���ݽ����������������������鼾��')
	Begin
	Print 'j120406145:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406145',  2, '2014', GETDATE(), N'��ʮ�����й��ձ���"21���ͱ�"ȫ����Сѧ��Ӣ���ݽ����������������������鼾��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img007.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406163' and hjlb=4 and hjjf='2014' and hjnr=N'����е�ʮ�����˶�������������ӻ�����������(����)������')
	Begin
	Print 'j120406163:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406163',  4, '2014', GETDATE(), N'����е�ʮ�����˶�������������ӻ�����������(����)������', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img008.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406276' and hjlb=1 and hjjf='2014' and hjnr=N'��������ѧ��')
	Begin
	Print 'j120406276:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406276',  1, '2014', GETDATE(), N'��������ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img009.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406253' and hjlb=1 and hjjf='2014' and hjnr=N'�м�����ѧ��')
	Begin
	Print 'j120406253:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406253',  1, '2014', GETDATE(), N'�м�����ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img010.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406260' and hjlb=1 and hjjf='2014' and hjnr=N'��������ѧ��')
	Begin
	Print 'j120406260:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406260',  1, '2014', GETDATE(), N'��������ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img011.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406251' and hjlb=2 and hjjf='2014' and hjnr=N'�����������Ƽ����´������ߵ繤�̱������Ƚ�')
	Begin
	Print 'j120406251:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406251',  2, '2014', GETDATE(), N'�����������Ƽ����´������ߵ繤�̱������Ƚ�', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img012.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406024' and hjlb=1 and hjjf='2014' and hjnr=N'У������ѧ��')
	Begin
	Print 'j120406024:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406024',  1, '2014', GETDATE(), N'У������ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img013.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406019' and hjlb=1 and hjjf='2014' and hjnr=N'�м�����ѧ��')
	Begin
	Print 'j120406019:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406019',  1, '2014', GETDATE(), N'�м�����ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img014.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406011' and hjlb=2 and hjjf='2014' and hjnr=N'2014-2015ѧ�����ѧ(���� ����)�����س��������϶��гɼ��ϸ�')
	Begin
	Print 'j120406011:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406011',  2, '2014', GETDATE(), N'2014-2015ѧ�����ѧ(���� ����)�����س��������϶��гɼ��ϸ�', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img015.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406034' and hjlb=2 and hjjf='2014' and hjnr=N'2014-2015ѧ�����ѧ(���� �赸)�����س��������϶��гɼ��ϸ�')
	Begin
	Print 'j120406034:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406034',  2, '2014', GETDATE(), N'2014-2015ѧ�����ѧ(���� �赸)�����س��������϶��гɼ��ϸ�', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img016.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406234' and hjlb=1 and hjjf='2014' and hjnr=N'�м�����ѧ��')
	Begin
	Print 'j120406234:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406234',  1, '2014', GETDATE(), N'�м�����ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img017.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406338' and hjlb=3 and hjjf='2012' and hjnr=N'�������л���������ɹ��ʽ���չ���ٻ����רҵ����A������')
	Begin
	Print 'j120406338:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406338',  3, '2012', GETDATE(), N'�������л���������ɹ��ʽ���չ���ٻ����רҵ����A������', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img018.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406241' and hjlb=2 and hjjf='2014' and hjnr=N'"�����й� �ҵ��й���"����������,��ѧ�ݽ����㽱')
	Begin
	Print 'j120406241:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406241',  2, '2014', GETDATE(), N'"�����й� �ҵ��й���"����������,��ѧ�ݽ����㽱', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img019.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406218' and hjlb=1 and hjjf='2014' and hjnr=N'У������ѧ��')
	Begin
	Print 'j120406218:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406218',  1, '2014', GETDATE(), N'У������ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img020.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406218' and hjlb=1 and hjjf='2014' and hjnr=N'��������ѧ��')
	Begin
	Print 'j120406218:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406218',  1, '2014', GETDATE(), N'��������ѧ��', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img021.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406218' and hjlb=4 and hjjf='2014' and hjnr=N'2014������д�����ȭ��������������Ƚ�')
	Begin
	Print 'j120406218:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406218',  4, '2014', GETDATE(), N'2014������д�����ȭ��������������Ƚ�', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img022.jpg.jpg', Single_Blob) as a
	end
GO
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='j120406218' and hjlb=2 and hjjf='2013' and hjnr=N'��ʮ�����й��ձ���"21���ͱ�"ȫ����Сѧ��Ӣ���ݽ�������������������������Ƚ�')
	Begin
	Print 'j120406218:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), 'j120406218',  2, '2013', GETDATE(), N'��ʮ�����й��ձ���"21���ͱ�"ȫ����Сѧ��Ӣ���ݽ�������������������������Ƚ�', 3, null
		, BulkColumn from Openrowset( Bulk 'd:\lyx\input_img\huojiang\pics\img023.jpg.jpg', Single_Blob) as a
	end
GO
