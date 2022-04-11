FROM nginx:alpine

ADD onlineweb.war /opt/onlineweb.war

RUN mkdir /usr/share/nginx/html/ocbweb

RUN unzip /opt/onlineweb.war -d /usr/share/nginx/html/ocbweb && \
	rm /opt/onlineweb.war

#COPY . /usr/share/nginx/html/ocbweb

