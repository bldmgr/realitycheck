# syntax=docker/dockerfile:1
  
# specify the base image to  be used for the application
FROM golang:alpine
  
# create the working directory in the image
WORKDIR /app
  
# copy Go modules and dependencies to image
COPY go.mod ./
  
# download Go modules and dependencies
RUN go mod download
  
# copy all the Go files ending with .go extension
COPY *.go ./
  
# compile application
RUN go build -o /multi_arch_sample
  
# network port at runtime
EXPOSE 8000
  
# execute when the container starts
CMD [ "/multi_arch_sample" ]