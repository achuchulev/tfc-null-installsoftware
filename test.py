#!/usr/bin/env python3

import urllib3
http = urllib3.PoolManager()
r = http.request('GET', 'http://httpbin.org/robots.txt')
r.status
r.data
