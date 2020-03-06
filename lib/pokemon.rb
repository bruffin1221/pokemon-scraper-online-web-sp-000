class Pokemon
attr_accessor :id, :name, :type, :db

def initialize(id:, name:, type:, db:)
  @id=id
  @name=name
  @type=type
  @db=db
end

def self.save(name, type, db)
  db.execute("INSERT INTO pokemon (name, type) VALUES ( ?, ? )", [name, type])
  #sql = <<-SQL
#  INSERT INTO songs (name, type, db)
  #VALUES (?, ?, ?), [name, type, db]
#   SQL

#   DB[:conn].execute(sql, self.name, self.type, self.db)
#   @id = DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0]
 end

 def self.find(id, db)
  db.execute("SELECT * FROM pokemon WHERE id=?," [id])
 end



  end
