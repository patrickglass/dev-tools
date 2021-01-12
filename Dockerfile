FROM alpine:3.12.3

ENV PACKER_VERSION    1.6.6
ENV VAULT_VERSION     1.6.1
ENV CONSUL_VERSION    1.9.1
ENV TERRAFORM_VERSION 0.14.4

RUN apk add --no-cache bind-tools curl jq which openssl unzip \
    && rm -rf /var/cache/apk/*

# RUN wget -q -O /packer.zip https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && \
#     unzip -d / /packer.zip && mv /packer /usr/local/bin/packer && rm /packer.zip
RUN wget -q -O /vault.zip https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip && \
    unzip -d / /vault.zip && mv /vault /usr/local/bin/vault && rm /vault.zip
RUN wget -q -O /consul.zip https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip && \
    unzip -d / /consul.zip && mv /consul /usr/bin/consul && rm /consul.zip
# RUN wget -q -O /terraform.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
#     unzip -d / /terraform.zip && mv /terraform /usr/local/bin/terraform && rm /terraform.zip
