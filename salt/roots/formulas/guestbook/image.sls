# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "guestbook/map.jinja" import guestbook with context %}

guestbook-image:
  dockerng.image_present:
    {%- for key, value in guestbook.image|dictsort %}
    - {{ key }}: {{ value }}
    {%- endfor %}
