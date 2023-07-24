FROM rootools/egs-build-patch-tool-image:latest

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

RUN useradd -u 1001 action_user
USER action_user

ENTRYPOINT ["/entrypoint.sh"]