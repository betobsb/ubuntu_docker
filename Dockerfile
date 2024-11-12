# Usar a imagem base do Ubuntu
FROM ubuntu:latest

# Definir o mantenedor do contêiner (opcional)
LABEL maintainer="seu-email@example.com"

# Atualizar o gerenciador de pacotes e instalar alguns pacotes básicos
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    git \
    && apt-get clean

# Definir o diretório de trabalho no contêiner
WORKDIR /root

# Comando padrão para executar quando o contêiner for iniciado
CMD ["bash"]

