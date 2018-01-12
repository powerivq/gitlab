FROM gitlab/gitlab-ce

RUN apt-get update -q \
    && apt-get install -yq --no-install-recommends postfix \
    && apt-get clean \
    && mkfifo /var/spool/postfix/public/pickup \
    && service postfix restart

