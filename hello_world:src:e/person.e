note
	description: "Summary description for {PERSON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PERSON

create
    make

feature
    name: STRING
    surname: STRING
    age: INTEGER

    make (in_name: STRING in_surname:STRING in_age:INTEGER)
            -- Initialize account with balance initial.
        require
            age >= 18
        do
            name := in_name
            surname := in_surname
            age := in_age
        end

end
