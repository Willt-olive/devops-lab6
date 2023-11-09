FROM python:latest
WORKDIR /lab6
COPY ./lab6
RUN apt update && apt-get upgrade -y && apt-get install -y
RUN make
CMD ["./hello"]