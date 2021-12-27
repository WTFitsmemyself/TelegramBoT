FROM ubuntu:18.04
RUN apt update
RUN apt install zsh gcc 
WORKDIR ./app
COPY . .
RUN chmod +x ./menu.sh
CMD [ "zsh" , "menu.sh" ]