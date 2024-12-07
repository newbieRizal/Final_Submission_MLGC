FROM node:18-slim
WORKDIR /app
ENV PORT 8080
COPY package*.json ./
ENV MODEL_URL 'https://storage.googleapis.com/model-deploy-ml/model-ml/model.json'
COPY . .
RUN npm install
EXPOSE 8080
CMD [ "npm", "run", "start"]
