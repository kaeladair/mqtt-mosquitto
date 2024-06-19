FROM eclipse-mosquitto:latest

COPY config/mosquitto.conf /mosquitto/config/mosquitto.conf

ARG USERNAME
ARG PASSWORD

RUN mosquitto_passwd -c -b /mosquitto/config/passwd $USERNAME $PASSWORD

EXPOSE 1883