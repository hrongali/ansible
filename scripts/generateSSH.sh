#!/bin/bash

### Login into the terminal using the non0root user id. EX: hrongali

ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -N ''
cd .ssh/
touch authorized_keys
chmod 644 authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgHJP/ohh5KXQWKifP44X3AYFeg9DyWGrbJrEZbam04dSqGV+VfbJN4WcsB//pwvoNhEEGo+jjYVLTqiJaRG4C/Zld/CRK4NfgbT7k+7YpCf6ttKDzO1Cdxp6vOfgUwkL6RtNHmJSVEoHHDNZo3Segv2kGbzGCEimU9ntLw0+4HJ2rGNddglnxjhwYPNksejEhRQOnFYUlskRbqHJO1CYkmTDugJ4LiblF0jD+HRcOZxV6rpSWion/Bm2vK1bFYPb6fdpCphlWco/nrJoiktoh8+uZjWz0h7f/CVyLyCNmiVewZgRlvqdQoi2Q1oDR8vo2v0iRnUX7001w/3c4BW1p hrongali@control" > authorized_keys

