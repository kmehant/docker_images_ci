FROM opensuse/leap

RUN zypper --non-interactive update  && zypper --non-interactive in httpd  

EXPOSE 80 443 

ADD		run-httpd.sh /run-httpd.sh
RUN		chmod -v +x /run-httpd.sh
CMD		["/run-httpd.sh"]