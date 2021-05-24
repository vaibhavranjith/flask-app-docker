# init base image ( Alpine is a small linu distrubution)
FROM python:3.6.1-alpine
# define the present working directory
WORKDIR /docker-flask-test
# copy the contents into the working directory
ADD . /docker-flask-test
# run the pip install the dependencies of the flask applicatino
RUN pip install -r requirements.txt
#define the command to start the container
CMD ["flask","run","--host","0.0.0.0"] 

# After creation of this file
# $ docker image build -t docker-flask-test .
# $ docker run -p 5000:5000 -d docker-flask-test

