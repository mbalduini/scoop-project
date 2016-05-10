note
    description: "Root for trivial system printing a message"
    author: "Elizabeth W. Brown"

class
    HELLO

create
    make

feature

	person: PERSON
	account: ACCOUNT

    make
            -- Print a simple message.
        do
            create person.make("a", "b", 18)
            create account.make(2000)
            account.open(person)
        end

end -- class HELLO
