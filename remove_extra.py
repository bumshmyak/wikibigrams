#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import re

for line in sys.stdin:
    # remove tags
    line = re.sub(r'</a>|<a href=\"[^"]+\">|<doc id=\"[^>]+>|</doc>', '', line)
    
    # remove accents
    line = re.sub(u'\u0301', u'', line.decode('utf-8')).encode('utf-8')
    
    # remove non-alpha
    line = re.sub(u'[^А-Яа-яёЁA-Za-z0-9]+', ' ', line.decode('utf-8'))
    line = line.encode('utf-8').strip('\n')
    if line:
        sys.stdout.write(line + '\n')
