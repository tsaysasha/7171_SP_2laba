FROM ubuntu

ADD main.cpp .

RUN apt-get clean && apt-get update && apt install -qy build-essential

RUN gcc main.cpp -S -o main.S && gcc -c main.S -o main.o && gcc main.o -o main

CMD ./main

