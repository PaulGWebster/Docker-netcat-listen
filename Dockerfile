FROM debian:bullseye-20220622-slim AS OS

RUN apt update -y && apt install ncat -y && rm -rf /var/lib/apt/lists/*

ARG PORT

ENV PORT ${PORT}

CMD ["sh","-c","ncat -klv ${PORT}"]
