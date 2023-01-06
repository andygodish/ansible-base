docker run -v ${PWD}:/work:ro -v ${PWD}/roles:/root/.ansible/roles -v /tmp/.test-ssh:/root/.ssh --rm ansible-base:test ansible -m ping all -vvv
