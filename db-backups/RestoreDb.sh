mongodump --uri="connectionstringFadingFlameProd" /o ./fading-flame

mongorestore --uri="connectionstringFadingFlameProd" fading-flame/
