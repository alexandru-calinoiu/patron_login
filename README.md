# Requierments

- Write a controller that handles user registration and user login.

Assume a MySQL data store with the following columns: id - auto-increment not null primary, email - varchar(60) unique not null, password varchar(60) null, type - varchar(40) not null

- write the active record model to handle storing and fetching data.

Specifics:
- Controller should have a register function that takes in the following params:
: email, password, type.
The type variable is to help facilitate login via social networks vs direct from site.

# Notes:

I will use devise for user session management, no need to reinvent the well, but for the purpose of this I will actually write the registration and login logic.

I will have 2 controllers, one to handle registration and other to handle session creation (loggin in)

The type field is not appropiate for it's purpose as it will not suffice to provide login with a oauth provider, a more sain approach will be to have a collection of providers on the model each with type and provider unique id.

# Pending

- password hashing
- views
- specs
