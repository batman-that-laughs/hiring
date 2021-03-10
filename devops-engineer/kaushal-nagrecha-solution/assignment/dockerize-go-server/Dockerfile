#Get go lang image to build code
FROM golang:1.15-alpine

#Makeing a directory inside the image to house the source code for the application
RUN mkdir /app
COPY ./assignment/main.go /app

#Build app
#since we are building a sample go server app, using the vanila command for the same
WORKDIR /app
RUN go build -o server .

#Running the executable thus created
CMD ["/app/server"]


#Expose port
EXPOSE 5050
