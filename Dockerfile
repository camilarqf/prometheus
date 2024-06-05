# Use a imagem oficial do Prometheus como base
FROM prom/prometheus:latest

# Copie o arquivo de configuração do Prometheus para o contêiner
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Exponha a porta 9090
EXPOSE 9090

# Comando para iniciar o Prometheus com a configuração copiada
CMD ["--config.file=/etc/prometheus/prometheus.yml"]
