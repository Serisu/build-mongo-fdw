FROM postgres:9.5
RUN cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime
ADD mongo_fdw.so /usr/lib/postgresql/9.5/lib
ADD mongo_fdw.control /usr/share/postgresql/9.5/extension
ADD mongo_fdw--1.0.sql /usr/share/postgresql/9.5/extension
ADD lib.tar /usr/local
RUN ldconfig
