FROM node:18

# munkakönyvtár a konténerben
WORKDIR /app

# package.json másolása és dependency install
COPY app/package.json .
RUN npm install

# app fájlok másolása
COPY app/ .

# port megnyitása
EXPOSE 3000

# app indítása
CMD ["node", "index.js"]
