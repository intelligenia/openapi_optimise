FROM node:12-slim

COPY . /openapi_optimise

WORKDIR /openapi_optimise

RUN npm install

RUN sed -i 's/\r//' ./openapi_optimise.js

ENTRYPOINT ["./openapi_optimise.js"]

