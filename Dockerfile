FROM alpine/git:latest

LABEL maintainer="Girish Pasupathy"

# Optional Configuration Parameter
ARG GIT_USER
ARG USER_HOME
ARG DATA_DIR="/data"

# Default Settings
ENV GIT_USER=${GIT_USER:-gituser}
ENV USER_HOME=${USER_HOME:-/home/${GIT_USER}}

RUN \
  apk add --no-cache bash git-bash-completion curl jq && \
  adduser -h ${USER_HOME} -s /bin/bash -u 1000 -D ${GIT_USER} && \
  mkdir -p "${DATA_DIR}" && \
  chmod 777 "${DATA_DIR}"

USER ${GIT_USER}
VOLUME "${DATA_DIR}"
WORKDIR "${DATA_DIR}"

RUN bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"

RUN echo 'export OSH="/home/$(whoami)/.oh-my-bash"' > "${USER_HOME}/.bashrc" && \
  echo 'OSH_THEME="pure"' >> "${USER_HOME}/.bashrc" && \
  echo 'source $OSH/oh-my-bash.sh' >> "${USER_HOME}/.bashrc"

ENTRYPOINT ["bash"]
