andrewrothstein.solr
====================
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-solr.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-solr)

A role for installing [Apache Solr](https://lucene.apache.org/solr/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.solr
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
