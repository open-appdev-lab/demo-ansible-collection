FROM registry.access.redhat.com/ubi10

ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    VIRTUAL_ENV=/opt/venv

ENV PATH=$VIRTUAL_ENV/bin:$HOME/bin:$HOME/.local/bin:$PATH

# Ensure the virtual environment is active in interactive shells
ENV BASH_ENV=${VIRTUAL_ENV}/bin/activate \
    ENV=${VIRTUAL_ENV}/bin/activate \
    PROMPT_COMMAND=". ${VIRTUAL_ENV}/bin/activate"

# glibc-langpack-en is needed to set locale to en_US and disable warning about it
RUN INSTALL_PKGS="gcc python3 python3-devel glibc-langpack-en" && \
    dnf -y --setopt=tsflags=nodocs --setopt=install_weak_deps=0 install $INSTALL_PKGS && \
    dnf -y clean all --enablerepo='*'

# - Create a Python virtual environment for use by any application to avoid
#   potential conflicts with Python packages preinstalled in the main Python
#   installation.
RUN \
    python3 -m venv ${VIRTUAL_ENV} && \
    chown -R 1001:0 ${VIRTUAL_ENV}

USER 1001

COPY requirements-ci.txt .
COPY test-requirements.txt .

RUN pip install --no-cache-dir -r requirements-ci.txt
RUN pip install --no-cache-dir -r test-requirements.txt
