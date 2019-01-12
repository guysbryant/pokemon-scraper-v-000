class Pokemon
  attr_accessor :id, :name, :type, :db, :hp 
  def initialize(id:, name:, type:, db:, hp: nil)
    @id = id 
    @name = name 
    @type = type
    @db = db
    @hp = hp
  end 
  
  def alter_hp(health, db)
    db.execute("UPDATE pokemon SET hp=? WHERE id=?", health, @id).flatten
  end
  
=======
    @@all << self 
    # binding.pry
  end 
  
>>>>>>> e46625e5e3e891e07b8d626367054da5dada0e75
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES(?, ?)", name, type)
  end 
  
  def self.find(id, db)
    new_poke = db.execute("SELECT * FROM pokemon WHERE id=?", id).flatten
<<<<<<< HEAD
    Pokemon.new(id: new_poke[0], name: new_poke[1], type: new_poke[2], db: db, hp: new_poke[3])
=======
    Pokemon.new(id: new_poke[0],name: new_poke[1],type: new_poke[2],db: db)
>>>>>>> e46625e5e3e891e07b8d626367054da5dada0e75
  end 
end
