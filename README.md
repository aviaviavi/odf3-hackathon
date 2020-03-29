# odf3-hackathon 

## A publicly accessible database with crowdsourced data and analytics

## Explore the data

Visit [the metabase dashboard](http://ec2-54-218-113-197.us-west-2.compute.amazonaws.com:3000/).

- Search topics to see the data avialable. 
- See the [list of dashboard](http://ec2-54-218-113-197.us-west-2.compute.amazonaws.com:3000/collection/root?type=dashboard) learn about various topics
- See [individual questions](http://ec2-54-218-113-197.us-west-2.compute.amazonaws.com:3000/collection/root?type=card) asked and answered about some data
- Explore and query interactively [here](http://ec2-54-218-113-197.us-west-2.compute.amazonaws.com:3000/question/new)
- Share your queries, visualizations, and findings all in one place!

username: guest@odf3.io
password: odf3guest

## Contribute data

If you'd like to change any of the data or add new data, just submit a pull request!

#### Add new data

- Add your csv data. Every table in the system is represented by a .csv file in
this repository. Filenames of the csv's correspond to the table names in the
database.
- If the data you're adding can be automatically refreshed, add an entry to
  `sources.csv` with your tablename and the url where the data can be refreshed
  from
- Add a table definition to `schema.sql`

#### Edit/Clean existing data

If you are editing existing data, and the table is _not_ in `sources.csv`, you
can edit the data directly. Otherwise, the data will need to be updated at the
url for the table in `sources.csv`, since the data will be automatically synced
to the data at that url

## Using the data in your application

You can build your own applications powered by this data!

- Every query, graph, and dashboard is embeddable on your own webpages. Hit the "share" button for embed links.
- The database itself is publicly accessible. Email mail@avi.press to get read-only credentials for the postgresql database.

## Notes, caveats, etc

- The `TABLE.country_code` field is generally incorrect right now for most
  tables (they are non-standard from our main data source), so making map based
  graphs doesn't work out of the box. We've included a `country_code` table
  where you can join on a `name`, which has the correct codes that will work
  with metabase's map utilities.
