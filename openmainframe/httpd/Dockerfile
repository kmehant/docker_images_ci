FROM opensuse

RUN zypper --non-interactive update  && zypper --non-interactive in apache2  

EXPOSE 80 443 

CMD ["systemctl","start","apache2"]