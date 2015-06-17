#
# How to connecto to SQL Server using Windows Authentication
#
MyDBConnection <- odbcDriverConnect('driver={SQL Server};server=???;database=???;trusted_connection=true')
QueryResult <- sqlQuery(MyDBConnection, " ??? ")
odbcClose(MyDBConnection)
