FROM logstash:5

COPY data/*.csv /tmp/
COPY config/logstash.conf logstash.conf

CMD ["-f", "logstash.conf"]

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json
