FROM debian:stable

RUN apt-get update && \
	apt-get dist-upgrade -y && \
	apt-get install -y python3-pip && \
    mkdir -p /var/www/.local/bin && \
    chown -R www-data:www-data /var/www && \
    touch .profile && \
    chmod +x .profile && \
    echo "PATH=$PATH:~/.local/bin" >> ~/.profile

USER www-data
ENV PATH=${PATH}:/var/www/.local/bin

COPY --chown=www-data:www-data . /var/www/flaviodesousa

RUN cd ~ && \
    cd ~/flaviodesousa && \
    pip install -r requirements/project.txt
