<h1>Pets Registration</h1>

This is a sample application created by David Hemmat (dhemmat@gmail.com)

A deployed model can be found at <a href="http://safe-anchorage-6466.herokuapp.com/">http://safe-anchorage-6466.herokuapp.com/</a>

Important notes:
- The registration form is at the page index
- Individual records can be seen at '/records/id'
- Individual records can be retrieved in JSON format via a web service. To retrieve a record, make a GET request to '/records/id.json'
- To test the webservice, you can use <a href="http://www.hurl.it/">Hurl</a> to make the request via your web browser. Make sure to add '.json' to the URL
- The deployed application has 6 sample records (id's 1 to 6)
- Trying to view a non existent record will load an error page
- Trying to get a non existent record through the web service will return a JSON format error message 

<h2>Implementation notes</h2>

<h3>Database structure:</h3>

Owners:
- id. PK
- name
- phone
- email
- home address

Pets:
- id. PK
- owner_id. FK
- name
- age
- pet_type_id. Fk

PetTypes:
- id. PK
- name




