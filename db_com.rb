require 'dbi'

module Ext
	def my_exec sql_str, &sth
		sth = prepare(sql_str)
		sth.execute
		yield sth
		sth.finish
	end
	
	def my_sp1 sql_str
		my_do("exec #{sql_str}")
	end

	def my_sp sql_str, &row
		my_exec("exec #{sql_str}"){|sth|
			while row=sth.fetch do
				yield row
			end
		}
	end

	def my_do sql_str
		self.do sql_str
	end

	def get_ins_id
		sth = prepare("select @@identity")
		sth.execute
		row = sth.fetch
		sth.finish
		row[0]
	end
end

class Conn
	def open_it conn, write=false
		dbh=DBI.connect(conn)
		dbh['AutoCommit'] = write
		
		dbh.extend(Ext)
		dbh
	end
	def open conn, write=false, &dbh
		@dbh=DBI.connect(conn)
		@dbh['AutoCommit'] = true
		
		@dbh.extend(Ext)
		yield @dbh
		@dbh.disconnect
	end
	
	def call_sp conn, sp_sql, timeout=30
		open(conn){|dbh|
			dbh['CommandTimeout'] =  timeout
			dbh.my_sp1(sp_sql)
			dbh.commit
		}
	end
	
	def call_sp_nor conn, sp_sql, &row
		open(conn){|dbh|
			dbh.my_sp(sp_sql){
				yield row
			}
		}
	end
end

