# syntax=docker/dockerfile:experimental
FROM oracle/graalvm-ce:20.0.0-java8 as build
WORKDIR /workspace/app
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src
RUN --mount=type=cache,target=/root/.m2 ./mvnw install -P graal -DskipTests
FROM cloudfoundry/run:base
WORKDIR /app
EXPOSE 8080
COPY --from=build /workspace/app/target/com.seroter.demo.nativeapp1application /app/com.seroter.demo.nativeapp1application
RUN chmod +x /app/com.seroter.demo.nativeapp1application
CMD ["/app/com.seroter.demo.nativeapp1application"]