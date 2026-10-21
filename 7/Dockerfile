#
#--------------------------------------------------------------------------
# elasticsearch 7.17.28
#--------------------------------------------------------------------------
#

ARG ES_VERSION=7.17.28
FROM elasticsearch:${ES_VERSION}
LABEL maintainer="chinayin <whereismoney@qq.com>"

USER root

ARG CHANGE_SOURCE=true
ENV CHANGE_SOURCE ${CHANGE_SOURCE}
ARG TZ=Asia/Shanghai
ENV TZ ${TZ}
RUN if [ ${CHANGE_SOURCE} = true ]; then \
    echo 'change source' \
;fi && ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone;

ARG PLUGIN_VERSION=7.17.28
RUN set -eux \
    ## alias
    && printf "alias ls='ls --color=auto'\nalias ll='ls -l --color=auto'\nalias l='ls -lA --color=auto'" >> /etc/profile.d/ll.sh \
    && ln -s /usr/share/elasticsearch/config /etc/elasticsearch \
    ## set limits.conf
    && mkdir -p /etc/security \
    && printf "* soft nofile 65536\n* hard nofile 65536\n" >> /etc/security/limits.conf \
    && printf "elasticsearch soft memlock unlimited\nelasticsearch hard memlock unlimited\n" >> /etc/security/limits.conf \
    ## set sysctl.conf
    && touch /etc/sysctl.conf \
    && printf "vm.max_map_count=262144\nfs.file-max=65536" >> /etc/sysctl.conf \
    ## Install plugin
    && cd /usr/share/elasticsearch/bin \
    && ./elasticsearch-plugin install -b "https://get.infini.cloud/elasticsearch/analysis-ik/${PLUGIN_VERSION}" \
    && ./elasticsearch-plugin install -b "https://get.infini.cloud/elasticsearch/analysis-pinyin/${PLUGIN_VERSION}" \
    && ./elasticsearch-plugin install -b "https://get.infini.cloud/elasticsearch/analysis-stconvert/${PLUGIN_VERSION}" \
    ## Clean up
    && echo 'end'

USER elasticsearch
