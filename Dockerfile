FROM java:8-alpine

ADD https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz /
RUN gunzip -c dynamodb_local_latest.tar.gz | tar xvf -
RUN rm -f dynamodb_local_latest.tar.gz

#ENTRYPOINT ["/usr/bin/java", "-Djava.library.path=./DynamoDBLocal_Lib", "-jar", "/DynamoDBLocal.jar"]

ENTRYPOINT ["java"]
CMD ["-Djava.library.path=./DynamoDBLocal_Lib", "-jar", "DynamoDBLocal.jar"]


EXPOSE 8000

