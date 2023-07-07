FROM ubuntu:12.04
RUN sudo apt-get update sudo apt-get upgrade
RUN sudo apt-get install python-dateutil python-feedparser python-gdata python-ldap \
    python-libxslt1 python-lxml python-mako python-openid python-psycopg2 python-pybabel \
    python-pychart python-pydot python-pyparsing python-reportlab python-simplejson \
    python-tz python-vatnumber python-vobject python-webdav python-werkzeug \
    python-xlwt python-yaml python-zsi python-docutils -y
RUN wget http://gdata-python-client.googlecode.com/files/gdata-2.0.17.tar.gz
RUN tar zxvf gdata-2.0.17.tar.gz
RUN cd gdata-2.0.17/
RUN python setup.py install
RUN sudo apt-get install python-ldap
RUN wget http://nightly.openerp.com/7.0/nightly/deb/openerp_7.0-latest-1_all.de
RUN sudo dpkg -i openerp_7.0-latest-1_all.deb