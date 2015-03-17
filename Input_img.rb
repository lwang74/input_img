Encoding.default_internal = "UTF-8"
require './excel.rb'

class Huojiang
	def initialize img_path
		@img_path=img_path
		@types={
			'荣誉类'=>1,
			'学科类'=>2,
			'艺术类'=>3,
			'体育类'=>4,
			'其它类'=>5
		}
		# puts @types.map{|k,v| k}
		# p @types
	end
	
	def read_excel file_name
		#~ p file_name
		@data=[]
		CExcel.new.open_read(file_name.gsub(/\\/,'/')){|excel, wb|
			wb.Worksheets(1).usedrange.value2.each{|row|
				if row[0]!='文件名'
				#~ if row[0]=~/^DSC\d{5}\.JPG$/i
					#~ p row
					@data<<row
				end
			}
		}
		#~ p @data
	end

#~ 1荣誉类
#~ 2学科类
#~ 3艺术类
#~ 4体育类
#~ 5其他类

	def insert dbh
		@data.each{|one|
		#~ p one[1]
			p type=@types[one[2]]
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
				# puts one
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
					puts one[1]
					output_one_persion(out, one[1], type, year, one[4], pic)
				else
					# puts "#{one[1]}: 类别错。现在的类别是：'#{one[2]}'。允许的类别:'#{@types.map{|k, v| k}.join(', ')}'"
					# puts "#{one[1]}: type error. type is '#{one[2]}'. types allowed: '#{@types.map{|k, v| k}.join(', ')}'"
					p one[2]
					# p @types[one[2]]
					puts "Error!!!=>'#{one[2]}'"
				end
			}
		}
	end
#~ [hjlb]-获奖类别
#~ [hjjf]获奖jf
#~ [cjsj]创建时间
#~ [hjnr]获奖内容
#~ [hjzt]获奖状态
#~ [ts]
#~ [fj1]附件1

	protected
	def output_one_persion out, persion_id, type, date, context, pic
		#~ p pic
		sql=<<-AAA
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
		sql=<<-AAA
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
		sql=<<-AAA
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
# p ARGV.size
if ARGV.size==2
	puts "Version: 2015-03-16"
	main ARGV[0], ARGV[1]
else
	puts "Usage: Input_img.exe Picture_Path Excel.xlsx"
	puts "e.g.: Input_img.exe E:\\lyx\\pics tongji.xlsx"
end



