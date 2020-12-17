from faker import Faker
import datetime
import time

#Faker Data
#instantiate Faker
fake = Faker()


#generate date time now
now = datetime.datetime.now()
fake.date()

#generate first name
First = fake.first_name()

#generate last name
Last = fake.last_name()

#generate fake full name
Full = (str(First) + " " + str(Last))

#generate customer number
Customer = str("AT" + str(fake.random_number(7))[0:7])

#generate fake email
Email = fake.email()

#generate birthday
Birthdate = fake.date(pattern="%d%m%Y")

#generate current date
CurrentDate = str(now.strftime("%m%d%Y"))

FileSuffix = str(int(round(time.time() * 1000)))

#generate date time now
now = datetime.datetime.now()
timestamp = str(now.strftime("%m-%d-%y_%I-%M-%S-%p"))
print (timestamp)


