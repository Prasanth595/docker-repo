FROM ubuntu:22.04
LABEL maintainer="prasanth9566607@gmail.com"

# Install basic tools
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install Python
RUN apt-get update && apt-get install -y python3 python3-pip && rm -rf /var/lib/apt/lists/*

# Install Node.js and npm
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g yarn

# Install Go
RUN wget -q https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && \
    rm go1.22.0.linux-amd64.tar.gz
ENV PATH=$PATH:/usr/local/go/bin

# Install Java and Maven
RUN apt-get update && apt-get install -y openjdk-21-jdk maven && rm -rf /var/lib/apt/lists/*

# Install Gradle
RUN wget -q https://services.gradle.org/distributions/gradle-8.5-bin.zip && \
    unzip -d /opt/gradle gradle-8.5-bin.zip && \
    rm gradle-8.5-bin.zip
ENV PATH=$PATH:/opt/gradle/gradle-8.5/bin

# Install .NET and NuGet
RUN wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb && \
    apt-get update && apt-get install -y dotnet-sdk-8.0 && rm -rf /var/lib/apt/lists/*

# Install PHP and Composer
RUN apt-get update && apt-get install -y php php-cli php-mbstring unzip && rm -rf /var/lib/apt/lists/* && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Ruby and Bundler
RUN apt-get update && apt-get install -y ruby ruby-dev && rm -rf /var/lib/apt/lists/* && \
    gem install bundler

# Install ccache
RUN apt-get update && apt-get install -y ccache && rm -rf /var/lib/apt/lists/*

# Install Docker CLI (not daemon)
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null && \
    apt-get update && apt-get install -y docker-ce-cli && rm -rf /var/lib/apt/lists/*

CMD ["bash", "--version"]