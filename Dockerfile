FROM ledbrv/my_image:latest
ENV AUTHOR=ledbrv

WORKDIR /usr/share/nginx/html
COPY fonte.html /usr/share/nginx/html

CMD cd /usr/share/nginx/html && sed -e s/Docker/"$AUTHOR"/ fonte.html > index.html ; nginx -g 'daemon off;'

