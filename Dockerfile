FROM rockylinux:9.2

RUN dnf -y install python39
RUN dnf -y install python39-devel
RUN dnf -y install snappy
RUN dnf -y install mpich
RUN dnf -y install sudo
RUN dnf -y install epel-release
RUN dnf clean all

RUN python3 -m pip install pip --upgrade
RUN ln -s /usr/bin/python3 /usr/bin/python

RUN python3 -m pip install emod-api -i https://packages.idmod.org/api/pypi/pypi-production/simple

COPY requirements.txt /tmp/
RUN python3 -m pip install -r /tmp/requirements.txt -i https://packages.idmod.org/api/pypi/pypi-production/simple

ENV PATH=${PATH}:/usr/lib64/mpich/bin
ENV LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/lib64/mpich/lib

COPY examples /emod

# CMD 