# Library Media Interface
## Hacking
Three main languages
 - python [logic and glue]
 - SQL [database]
 - html (+ jinja2 template) [view]
 
 With some helpers in bash and Makefile

### What goes where

The python code in `./serve.py` connects SQL database queries to html template displays. Templates are in the `view/` directory. Quries are in the `sql/` directory.
