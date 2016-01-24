class User
    
attr_accessor :fname, :lname, :email
    
    # In the markdatabse DB, create Table users with columns fname lname and email
def initialize (fname="", lname="", email="")
#    def initialize (mark_hash={})
#    {fname:'mark', lname:'morales', email:'mark@nycda.com'}

    @fname = fname
    @lname = lname
    @email = email
        
    puts `psql -d markdatabase -c "INSERT INTO users (fname, lname, email) VALUES ('#{@fname}', '#{@lname}', '#{@email}');"`       
end
       
#anything between backticks are terminal commands!!!
#backticks + psql extensions are used to run SQL commands using Ruby!!!
    
    
    
# Used to find a user by id
def self.find(id)
    # find - takes an ID argument and finds the User with that ID, returns a user object w/ information on that user from the DB
    puts `psql -d markdatabase -c "SELECT * FROM users WHERE id = #{id}"`

end
    
    

# Search by email
# where - takes a Hash argument of user attributes and finds users with those attributes, returns an array of matching User objects
def self.where(email)
    puts `psql -d markdatabase -c "SELECT * FROM users WHERE email = '#{email}'"`

end    
    
    
    
#all - returns all users in the database as objects inside of an array
def self.all
    #selecting from available users
    puts `psql -d markdatabase -c "SELECT * FROM users"`
    #parse

end
    
    
    
#last - returns an object containing the last user in the database (continued on the next page) 
def self.last
    #order by DESC and calling first on the list
    puts `psql -d markdatabase -c "SELECT * FROM users ORDER BY id DESC LIMIT 1";`
    
end
      

    
#first - returns an object containing the first user in the database 
def self.first
    #selects first user using enrollment time a limiting to the first on the list
    puts `psql -d markdatabase -c "SELECT * FROM users ORDER BY id LIMIT 1";`
    

end

    
    
    
    
    
    
end









