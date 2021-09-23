#locally
mongodump --uri="connectionstringFadingFlameProd" /o ./fading-flame
mongorestore --uri="connectionstringFadingFlameTEST" fading-flame/

#ssh into service when big data
mongodump --uri="connectionstringFadingFlameProd"
mongorestore --uri="mongodb://user:password@localhost:27017" dump/
