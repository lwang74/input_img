require 'cfg'
require 'excel'
require 'db_com'

#~ 1 ����
#~ 2 ѧ��
#~ 3 ����
#~ 4 ����
#~ 5 ����

class Huojiang
	def initialize img_path
		@img_path=img_path
		@types={
			'������'=>1,
			'ѧ����'=>2,
			'������'=>3,
			'������'=>4,
			'������'=>5
		}
	end
	
	def read_excel file_name
		#~ p file_name
		@data=[]
		CExcel.new.open_read(file_name.gsub(/\\/,'/')){|excel, wb|
			wb.Worksheets(1).usedrange.value2.each{|row|
				if row[0]!='�ļ���'
				#~ if row[0]=~/^DSC\d{5}\.JPG$/i
					#~ p row
					@data<<row
				end
			}
		}
		#~ p @data
	end

#~ 1������
#~ 2ѧ����
#~ 3������
#~ 4������
#~ 5������

	def insert dbh
		@data.each{|one|
		#~ p one[1]
			type=@types[one[2]]
			if type
			#~ p "#{FileUtils.pwd}\\#{@img_path}\\#{one[0]}".gsub(/\//, "\\")
				ins_one_persion(dbh, one[1], type, one[3], one[4], one[0])
			else
				puts "Error: #{one[2]}"
			end
		}
	end

	def output_script
		File.open('input_img.sql', 'w'){|out|
			out.puts "Use XX2012"
			out.puts "GO"
			@data.each{|one|
			puts one[0]
				type=@types[one[2]]
				year = one[3]
				if year.class==Float
					year = year.to_i.to_s
				end
				pic = one[0]
				if one[0]!=~/\./
					pic = "#{one[0]}.jpg"
				end
				if type
					output_one_persion(out, one[1], type, year, one[4], pic)
				else
					puts "#{one[1]}: �������ڵ�����ǣ�'#{one[2]}'����������:'#{@types.map{|k, v| k}.join(', ')}'"
				end
			}
		}
	end
#~ [hjlb]-�����
#~ [hjjf]��jf
#~ [cjsj]����ʱ��
#~ [hjnr]������
#~ [hjzt]��״̬
#~ [ts]
#~ [fj1]����1

	protected
	def output_one_persion out, persion_id, type, date, context, pic
		#~ p pic
		sql=<<AAA
If not exists (Select * from [XX2012].[dbo].[JKHUOJIANG] 
	where xh='#{persion_id}' and hjlb=#{type} and hjjf='#{date}' and hjnr=N'#{context}')
	Begin
	Print '#{persion_id}:'
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), '#{persion_id}',  #{type}, '#{date}', GETDATE(), N'#{context}', 3, null
		, BulkColumn from Openrowset( Bulk '#{@img_path}\\#{pic}', Single_Blob) as a
	end
GO
AAA
		#~ p sql
		out.puts sql
	end

	def ins_one_persion dbh, persion_id, type, date, context, pic
		#~ p pic
		sql=<<AAA
	Select count(*) cnt from [XX2012].[dbo].[JKHUOJIANG] 
		where xh='#{persion_id}' and hjlb=#{type} and hjjf='#{date}' and hjnr=N'#{context}'
AAA
		sth=dbh.execute(sql)
		cnt=0
		while row=sth.fetch do
			cnt=row['cnt']
		end
		
		#~ p cnt
		if 0==cnt
			puts "#{persion_id}"
		sql=<<AAA
	Insert into [XX2012].[dbo].[JKHUOJIANG] ([hjxh], [xh], [hjlb]
	      ,[hjjf], [cjsj], [hjnr], [hjzt], [ts] 
	      ,[fj1]
	) 
	Select NEWID(), '#{persion_id}',  #{type}, '#{date}', GETDATE(), N'#{context}', 3, null
		, BulkColumn from Openrowset( Bulk '#{@img_path}\\#{pic}', Single_Blob) as a
AAA

		dbh.do(sql)
		dbh.commit
		end
	end
end

#~ $cfg = CFG.new
#~ $cfg.load_config
#~ $cfg.conn

def main path, excel_file
#~ $dbh=Conn.new.open($cfg.conn, true){|dbh|
	hj=Huojiang.new(path)
	#~ hj=Huojiang.new('E:\lyx\pics')
	hj.read_excel excel_file
	hj.output_script
	#~ hj.insert dbh
#~ }
end

#~ ARGV<<'c:\lyx\pic2013_09'
#~ ARGV<<'tongji.xlsx'
if ARGV.size==2
	puts "Version: 2015-03-16"
	main ARGV[0], ARGV[1]
else
	puts "Usage: Input_img.exe Picture_Path Excel.xlsx"
	puts "e.g.: Input_img.exe E:\\lyx\\pics tongji.xlsx"
end



