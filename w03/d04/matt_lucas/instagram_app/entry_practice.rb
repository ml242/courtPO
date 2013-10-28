class Entry < ActiveRecord::Base
end

# CREATE
entry1 = Entry.new
entry1.name = "Epi Phoc"
entry1.save # INSERT

# GET / IND
entry1 = Entry.find(1) #finds an entry by id 1 and gives you the object representation of it

# UPDATE
entry1.name = "Some Other Epic Photo Name"
entry1.save #This saves it to the database again, but instead does an UPDATE

# GET ALL
Entry.all #Returns an array of Entry Objects