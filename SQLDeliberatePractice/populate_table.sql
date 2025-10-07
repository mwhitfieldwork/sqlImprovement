IF NOT EXISTS (SELECT 1 FROM [User])
BEGIN
    INSERT INTO [User] (UserName, Passowrd, [role]) 
    VALUES 
        ('Mike', 'michaeldoe@gmail.com', 'admin'),
        ('Delores', 'd.whittaker@gmail.com', 'guest'),
        ('AliceSmith', 'alicesmith@example.com','guest');
END