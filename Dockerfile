FROM python:latest
RUN mkdir $HOME/.ssh
ADD node/ssh /root/.ssh/

RUN chmod 700 ~/.ssh
RUN chmod 600 ~/.ssh/*

RUN pip install ansible

ADD ./config/ansible_hosts /etc/ansible/hosts
ADD ./config/ansible.cfg /root/.ansible.cfg

RUN echo "alias l='ls -lahG'"

# RUN apt -y install netcat
WORKDIR /ansible
CMD ["tail","-f","/dev/null"]
