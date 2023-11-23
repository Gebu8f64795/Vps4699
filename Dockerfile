# 使用 Ubuntu 22.04 作為基礎鏡像
FROM ubuntu:22.04

# 安裝 Shellinabox
RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# 設置 root 用戶的密碼為 'root'
RUN echo 'root:Jen20091028' | chpasswd

# 暴露 22 端口
EXPOSE 22

# 啟動 Shellinabox
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
