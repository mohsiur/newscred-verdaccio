FROM verdaccio/verdaccio:5.0.1

USER root
ENV NODE_ENV=production
# VERDACCIO_PUBLIC_URL needs to be set due to https://github.com/verdaccio/verdaccio/issues/2190
ENV VERDACCIO_PUBLIC_URL='https://npm-s3.newscred.com' 
RUN npm i && npm install verdaccio-aws-s3-storage

USER verdaccio