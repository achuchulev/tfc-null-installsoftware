#!/usr/bin/env python

import urllib3
http = urllib3.PoolManager()
r = http.request('GET', 'http://httpbin.org/robots.txt')
r.status
r.data
