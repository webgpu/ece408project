FROM webgpu/rai:base

MAINTAINER Abdul Dakkak "dakkak@illinois.edu"

# Set one or more individual labels
LABEL vendor="ECE 408 Project"
LABEL com.webgpu.project.ece408.year="2016"
LABEL com.webgpu.project.ece408.semester="fall"
LABEL com.webgpu.project.ece408.version="0.0.1"

COPY . ${SRCDIR}
COPY ./data ${DATADIR}

WORKDIR ${BUILDDIR}
RUN cmake -DCONFIG_USE_HUNTER=OFF ${SRCDIR}
RUN make

WORKDIR ${BUILDDIR}
