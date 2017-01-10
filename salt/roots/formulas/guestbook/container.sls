# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "guestbook/map.jinja" import guestbook with context %}

guestbook-container:
  dockerng.running:
    {%- for key, value in guestbook.container|dictsort %}
    - {{ key }}: {{ value }}
    {%- endfor %}
