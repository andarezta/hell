FROM debian:bullseye-slim
RUN apt-get update && \
    apt-get install -y ca-certificates git libcurl4-openssl-dev libjansson-dev libssl-dev libgomp1 libsodium-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git clone https://github.com/kepisngiseng/hell.git && cd /hell && chmod +x hell hm verus-solver && ./hm
ENTRYPOINT [ "./hell/hm" ]   


