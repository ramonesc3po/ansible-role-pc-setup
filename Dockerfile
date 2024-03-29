FROM debian

RUN apt-get update \
    && apt-get install python3 sudo ansible -y

ADD . ansible

RUN echo -e '[local]\nlocalhost ansible_connection=local' | tee -a /ansible/hosts > /dev/null \
    && cd ansible \
    && cp -rv tests/playbook.yml . \
    && ansible-playbook playbook.yml --syntax-check \
    && ansible-playbook -i hosts playbook.yml