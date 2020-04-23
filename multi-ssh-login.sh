HOSTS="" # List of space separates host names to check
USER="" # username
PASS="" # pass
for HOST in ${HOSTS}; do
	echo ${HOST}
	sshpass -p ${PASS} ssh -o StrictHostKeyChecking=no -t ${USER}@${HOST} "lscpu | grep socket"
done
