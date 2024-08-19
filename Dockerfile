FROM tensorchord/pgvecto-rs:pg14-v0.2.0 AS builder

FROM bitnami/postgresql:14

COPY --from=builder /usr/lib/postgresql/14/lib/vectors.so /opt/bitnami/postgresql/lib/
COPY --from=builder /usr/share/postgresql/14/extension/vectors* /opt/bitnami/postgresql/share/extension/