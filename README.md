It is best to store environment variables in the .profile file in the root directory.
To do this you would:

* Open up the file and type export VAR=  # this would be set to whatever you wish the environment var to be.

It is best to store environment variables when you wish to protect information, if, for instance you were wanting to
post code where you had your authentication code used to github.

Test migrations are only run once.


Reflect: Now that you've put a restriction in place, how can the user get past it?

go to '/reset' to reset the session

Reflect: Why is it bad to just validate the uniqueness of the name field?

Many people can have the same name.
