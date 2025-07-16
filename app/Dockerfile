# minimal de Debian, usaría Alpine para mejorar el tamaño pero hasta dónde sé VSCode no tiene soporte de Alpine
FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    wget \
    git \
    gnupg \
    ca-certificates \
    lsb-release \
    apt-transport-https \
    software-properties-common \
    openjdk-17-jre \
    maven \
    postgresql \
    apache2

# .NET SDK
RUN wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y --no-install-recommends dotnet-sdk-9.0

# VSCode
RUN curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
    install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/ && \
    sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' && \
    apt-get update && \
    apt-get install -y --no-install-recommends code && \
    rm microsoft.gpg

COPY index.html /var/www/html/index.html

# Cache clean
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
