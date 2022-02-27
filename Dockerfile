FROM debian:stable

RUN apt update && \
	apt dist-upgrade && \
	apt install -y python3-pip && \
    mkdir -p /var/www/.local/bin && \
    chown -R www-data:www-data /var/www && \
    touch .profile && \
    chmod +x .profile && \
    echo "PATH=$PATH:~/.local/bin" >> ~/.profile

USER www-data

COPY --chown=www-data:www-data . /var/www/flaviodesousa

RUN cd ~ && \
    cd ~/flaviodesousa && \
    pip install -r requirements/project.txt
