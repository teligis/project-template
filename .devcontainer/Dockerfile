FROM mcr.microsoft.com/devcontainers/base:resolute

# 安装 Node.js 20
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

# 全局安装 claude‑code CLI
RUN npm install -g @anthropic-ai/claude-code

USER vscode
