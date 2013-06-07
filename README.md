<h1>Pets Registration</h1>

This is a sample application created by David Hemmat (dhemmat@gmail.com)

A deployed model can be found at <a href="http://safe-anchorage-6466.herokuapp.com/">http://safe-anchorage-6466.herokuapp.com/</a>

Important notes:
- The registration form is at the site index
- Individual records can be seen at '/records/id'
- Individual records can be retrieved in JSON format via a web service. To retrieve a record, make a GET request to '/records/id.json'
- To test the webservice, you can use <a href="http://www.hurl.it/">Hurl</a> to make the request via your web browser. Make sure to add '.json' to the URL
- The deployed application has 6 sample records (id's 1 to 6)
- Trying to view a non existent record will load an error page
- Trying to get a non existent record through the web service will return a JSON format error message 

<h2>Implementation notes</h2>

<h3>Functionality</h3>
- Form for storing information for clients and their pets.
- Each client must have at least 1 pet and a maximum of 4 pets.
- Client information: name, phone, email, home address.
- Pet information: name, age, pet type.
- Valid pet types are: dog, cat, bird, other.
- After the form saves the data, a confirmation page is shown with all the information saved, including internal ID.
- There is a web service that can return the data for any record (a client and his pets) in JSON format.

<h3>Aditional requirements</h3>
- The information is stored on a database (PostreSQL in production)
- The URL used to retrieve the data in JSON format contains the internal registration ID ('/records/2.json').
- The site is hosted on Heroku at the address given at the beginning of the document.
- Source code is available for download.

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

<h3>JSON response structure</h3>

Valid record ID:

{
    "id": 3,
    "name": "Pedro Hernandez",
    "email": "pedro@gmail.com",
    "phone": "(809)-254-5152",
    "address": "Sabana de la cobija, Republica Dominicana",
    "pets_owned": [
        {
            "name": "Bloop",
            "age": "3 weeks",
            "pet_type": "Fish"
        },
        {
            "name": "Muffin",
            "age": "2 years",
            "pet_type": "Other"
        },
        {
            "name": "Eve",
            "age": "3 months",
            "pet_type": "Cat"
        },
        {
            "name": "Lily",
            "age": "2 months",
            "pet_type": "Cat"
        }
    ]
}

Invalid record ID:

{"error":"This record does not exist"}




