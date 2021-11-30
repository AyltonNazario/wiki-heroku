FROM requarks/wiki:2
COPY master.js /wiki/server/master.js
WORKDIR /wiki
ENV DB_TYPE postgres
ENV DB_SSL 1
ENV HEROKU 1
ENV PGSSLMODE no-verify
CMD ["node", "server"]
