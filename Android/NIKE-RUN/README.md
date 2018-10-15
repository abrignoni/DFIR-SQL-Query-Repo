The query as is will select all coordinates for all runs. To limit the run to one particular run add the following
to the end of the first where clause. 

and activity_metric_group.mg_activity_id = integer_value_of_interest

The term integer_value_of_interest will be an integer from the field being evaluated.

The following blog post has details on how to use the query and how it is applied in a python script.
Be aware that a query without the use of VIEW can be done but due to limitations on how python works with SQLite this way works
even if not the most efficient.

https://abrignoni.blogspot.com/2018/08/android-nike-run-app-geolocation-sqlite.html
