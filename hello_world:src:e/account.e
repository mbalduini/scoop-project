class
    ACCOUNT

create
    make

feature
    balance: INTEGER
    owner: PERSON
    minimum_balance: INTEGER = 1000

    open (who: PERSON)
            -- Assign the account to owner who.
        do
            owner := who
        end

    deposit (sum: INTEGER)
            -- Deposit sum into the account.
        require
            sum >= 0
        do
            add (sum)
        ensure
            balance = old balance + sum
        end

    withdraw (sum: INTEGER)
            -- Withdraw sum from the account.
        require
            sum >= 0
            sum <= balance - minimum_balance
        do
            add (-sum)
        ensure
            balance = old balance - sum
        end

     may_withdraw (sum: INTEGER): BOOLEAN
            -- Is there enough money to withdraw sum?
        do
            Result := (balance >= sum + minimum_balance)
        end

feature {NONE}

    add (sum: INTEGER)
            -- Add sum to the balance
        do
            balance := balance + sum
        end

    make (initial: INTEGER)
            -- Initialize account with balance initial.
        require
            initial >= minimum_balance
        do
            balance := initial
        end

invariant
    balance >= minimum_balance

end -- ACCOUNT
