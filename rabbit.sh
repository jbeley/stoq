#!/bin/bash

rabbitmq-plugins enable rabbitmq_management
rabbitmqctl add_user stoq stoq-password
rabbitmqctl add_vhost stoq
rabbitmqctl set_permissions -p stoq stoq ".*" ".*" ".*"
