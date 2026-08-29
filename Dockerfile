FROM mcr.microsoft.com/devcontainers/base:resolute

# 安装 Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

# 全局安装 Claude Code
RUN npm install -g @anthropic-ai/claude-code

# 创建 workspace 目录并设置权限
RUN mkdir -p /workspaces \
    && chown -R root:root /workspaces \
    && chmod -R 755 /workspaces

# 创建 vscode 用户（如果不存在）并设置 home 目录
RUN mkdir -p /home/vscode/.vscode-server \
    && mkdir -p /home/vscode/.local/share/code-server \
    && chown -R vscode:vscode /home/vscode

# 切换到 vscode 用户（Dev Container 默认用户）
USER vscode
