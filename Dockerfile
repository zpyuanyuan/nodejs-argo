FROM node:16-alpine

WORKDIR /app

# 安装构建工具（如需编译原生模块）
RUN apk add --no-cache python3 make g++

COPY package*.json ./

# 显示详细安装日志
RUN npm install --loglevel verbose

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]

