FROM ubuntu
RUN apt-get update && apt-get install -y python python-dev python-distribute python-pip
RUN mkdir -p /var/www/app
ADD requirements.txt /var/www/app/requirements.txt
RUN pip install -r /var/www/app/requirements.txt
ADD . /var/www/app 
#EXPOSE 5000*/
WORKDIR /var/www/app
#ENTRYPOINT ["python"]
#CMD ["app.py"]
