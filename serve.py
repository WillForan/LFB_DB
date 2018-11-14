#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sqlite3
import anosql
from bottle import route, run
from jinja2 import Environment, FileSystemLoader

##### GLOBALS #####
# template and databae connections used by all functions

## templates/view
tmpl_env = Environment(loader=FileSystemLoader('view'))

## database connection 
conn = sqlite3.connect('lite.db')
conn.row_factory = sqlite3.Row # return dict instead of array (acess by name)
# database queires
queries = anosql.load_queries('sqlite', 'sql/query/queries.sql')

##### ROUTES ######
#  where we can point a browser

## index page
@route("/")
def index():
    media = queries.get_media_by_author_title(conn,"%","%")
    idx = tmpl_env.get_template('index.html')
    return(idx.render(media=media))

##### RUN #######
# run the web server
if(__name__=="__main__"):
    run(host="0.0.0.0", port=8080, debug=True)
