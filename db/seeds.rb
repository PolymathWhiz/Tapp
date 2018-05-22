admin = User.create({ fn: 'John', lname: 'Doe', email: 'john@doe.com', password: 'password', admin: true })
user = User.create({ fn: 'John', lname: 'Wick', email: 'john@wick.com', password: 'password', admin: false })
tari = User.create({ fn: 'Tari', lname: 'Egule', email: 't.i4me@yahoo.com', password: 'password', admin: true })
tombara = User.create({ fn: 'Tombara', lname: 'Egule', email: 'tombara@gmail.com', password: 'password', admin: false })
admin.save!
user.save!
tari.save!
tombara.save!