admin = User.create({ fn: 'John', lname: 'Doe', email: 'john@doe.com', password: 'password', admin: true })
user = User.create({ fn: 'John', lname: 'Wick', email: 'john@wick.com', password: 'password', admin: false })
admin.save!
user.save!