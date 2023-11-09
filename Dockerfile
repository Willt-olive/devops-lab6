FROM python:latest
WORKDIR /devops-lab6
COPY . /devops-lab6
RUN apt update && apt-get upgrade -y && apt-get install -y
RUN make
CMD ["./hello"]