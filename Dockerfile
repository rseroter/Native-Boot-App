FROM cloudfoundry/run:base
WORKDIR /app
EXPOSE 8080
COPY ./target/com.seroter.demo.nativeapp1application /app/com.seroter.demo.nativeapp1application
RUN chmod +x /app/com.seroter.demo.nativeapp1application
CMD ["/app/com.seroter.demo.nativeapp1application"]