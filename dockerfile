FROM openjdk as build
WORKDIR /app
COPY . /app
RUN javac sample.java
CMD ["java","sample"]
FROM nginx
EPOSE 80
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/build /usr/share/nginx/html
