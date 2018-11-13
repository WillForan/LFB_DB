#!/usr/bin/env python
# -*- coding: utf-8 -*-

import anosql
import bottle
import sqlite3

conn = sqlite3.connect('light.db')
queries = anosql.load_queries('sqlite', 'sql/query/queries.sql')
