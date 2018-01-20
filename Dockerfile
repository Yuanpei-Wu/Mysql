FROM mysql
ENV MYSQL_ROOT_PASSWORD demo
ENV AUTO_RUN_DIR /docker-entrypoint-initdb.d
#COPY setup.sh /home/setup.sh
COPY demo.sql $AUTO_RUN_DIR/
#RUN chmod +x /home/setup.sh
RUN chmod +x $AUTO_RUN_DIR/demo.sql
