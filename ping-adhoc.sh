docker run -v ${PWD}:/work:ro -v ${PWD}/roles:/root/.ansible/roles -v ~/.ssh:/root/.ssh --rm ansible-base:local ansible -m ping all -vvv
