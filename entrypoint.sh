#!/bin/sh

set -e

## Substitute configuration
#for VARIABLE in $(env | cut -f1 -d=); do
#  VAR=${VARIABLE//:/_}
#  sed -i "s={{ $VAR }}=${!VAR}=g" /etc/amavisd.conf
#done

echo "Starting amavis"

exec amavisd -u amavis foreground

#exec spamd \
#  --username spamassassin --group spamassassin \
#  --allowed-ips 0.0.0.0/0 \
#  --ip-address 0.0.0.0 \
#  --syslog=stderr

#  --allowed-ips 0.0.0.0/0 \
#  --siteconfigpath ${CONFIG_PATH} \
#  --helper-home-dir ${DATA_PATH} \
#  --ip-address 0.0.0.0:${LISTEN_PORT} \
#  --max-children=${CHILD_MAX} \
#  --max-conn-per-child=${CHILD_MAX_CONNECTIONS} \
#  --max-spare=${CHILD_MAX_SPARE} \
#  --min-children=${CHILD_MIN} \
#  --min-spare=${CHILD_MIN_SPARE} \
#  --pidfile ${PID_PATH}${PID_FILE} \
#  --syslog=${LOG_PATH}${LOG_FILE} \
#  --timeout-child=${TIMEOUT_CHILD} \
#  --timeout-tcp=${TIMEOUT_TCP} \
#  --nouser-config $debug_arg $learing_arg $round_robin_arg
