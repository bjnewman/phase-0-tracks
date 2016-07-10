1. Common http status codes
200 - OK (all good)
300 - multiple choices (ie languages) 300's OK
400 - bad request (syntax 400's errors)
403 - forbidden (vs 401 unauthorized)
404 - not found
500's warnings
500 - internal server error
501 - not implemented (server doesnt have requested functionality)
503 - service unavaliable (crashes, overload, attacks, etc)
see https://www.smartlabsoftware.com/ref/http-status-codes.htm for more info

2. GET vs POST
GET requests data from a specified resource
POST submits data to be processed and assigned to a specific resource
GET requests are common for web browsing, POST requests would be typical in uploads or user account changes
GET requests are not secure, adds data to URL which makes it visible, never use GET with passwords or PII
POST request parameters are also not stored in browser or in server logs

3. COOKIES - a plain text file that is stored on the user's machine to individually identify that user and is sent back to the server with each addl request. See https://www.nczonline.net/blog/2009/05/05/http-cookies-explained/ and https://en.wikipedia.org/wiki/HTTP_cookie for more info.

