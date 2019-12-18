FROM node:12-slim

COPY . /openapi_optimise

WORKDIR /openapi_optimise

RUN npm install

ENTRYPOINT ["./openapi_optimise.js"]

