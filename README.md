The stonedmoose/postgis image provides a Docker container running Postgres 9.5 with PostGIS 2.4 installed. This image is based on the official postgres image and provides variants for each version of Postgres 9 supported by the base image (9.3-9.6).

This image ensures that the default database created by the parent postgres image will have the following extensions installed:

    postgis
    postgis_topology
    postgis_sfcgal
    fuzzystrmatch
    postgis_tiger_geocoder

Unless -e POSTGRES_DB is passed to the container at startup time, this database will be named after the admin user (either postgres or the user specified with -e POSTGRES_USER). If you would prefer to use the older template database mechanism for enabling PostGIS, the image also provides a PostGIS-enabled template database called template_postgis
