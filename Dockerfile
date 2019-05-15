FROM openjdk:8-jre-alpine
LABEL maintainer="mgayeski"
VOLUME [ "/diagrams" ]
WORKDIR /app 
RUN wget -O plantuml.jar "https://downloads.sourceforge.net/project/plantuml/1.2019.5/plantuml.1.2019.5.jar" && echo "4d89666a2328bf551a6b60a5574f0a569ecbb626189e7baef187c6937d3fbd0b  plantuml.jar" && apk update && apk add graphviz font-noto

ENV GRAPHVIZ_DOT=/usr/bin/dot

ENTRYPOINT [ "java", "-jar", "plantuml.jar" ]
CMD [ "/diagrams/*.plantuml", "/diagrams/*.puml" ]