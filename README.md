Pets Registration

This is a sample application created by David Hemmat (dhemmat@gmail.com)

Pets registration requirements:

-We need a form that allows us to enter the information of a new client with the pets he/she has (a client can have 1, 2, 3 or 4 pets). at least 1 pet is mandatory.
-We need to store for each client the following information: name, phone number, email, home address
-For each client's pet we need to store: name, age, pet-type
  *Where pet-type is a dropdown with the options: dog, cat, bird, other
-After the form saves a new client, it must show a confirmation page with all the fields just saved, including the internal ID assigned for the new client.
-We need a web service that returns an XML or JSON file with the information corresponding to the client: client's data and the pets he/she has registered. 

ROR:
Extra requirements for this exercise:  
-The system must store this information on a database the candidate must build. 
-The only restriction about the URL to access the web service is that it must contain the client's ID as parameter.
-The site must be hosted on any hosting service the candidate chooses, where we can access the application and test it. 
-The candidate will also send the entire source code set for this application. These files should be hosted on any online file service, or ftp sever, or at a svn/github repository where we can download everything that is required (instructions to get the files must be sent to ********** CC to *************).
-Tha candidate must be willing to answer other questions related with this application via email or skype.


********************************

Implementation notes:

********************************

Database structure:

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
- description

