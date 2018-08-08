On getting a call from the user, the API returns the following data about different device types in JSON format 
  1. Device type 
  2. Non – Active
  3. Working 
  4. Non-Working
  5. Device Model.
These values are used to plot different analytics graphs. 

Raw user data is stored in MongoDB format. MongoDB instance is connected to JAVA Eclipse IDE using MongoClient which connects to the local database running on the default port. The DBObject and DBCursor instances are used to get different classifications. 
These datapoints are stored in a separate map named as "Result" and output is obtained in localhost browser.
