FROM golang:1.16
RUN git config --global url."git@bitbucket.org:".insteadOf "https://bitbucket.org/"
RUN (umask 077; echo $pipeline_ssh_pr_key | base64 --decode > ~/.ssh/id_ed25519)