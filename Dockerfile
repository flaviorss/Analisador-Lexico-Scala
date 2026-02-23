FROM eclipse-temurin:8-jdk

# Instalação de ferramentas necessárias
RUN apt-get update && apt-get install -y wget unzip

# Download JavaCC 7.0.13
RUN mkdir -p /opt/javacc \
    && wget https://repo1.maven.org/maven2/net/java/dev/javacc/javacc/7.0.13/javacc-7.0.13.jar \
       -O /opt/javacc/javacc.jar

ENV JAVACC_HOME=/opt/javacc

# Download Scala 2.11
RUN wget https://github.com/scala/scala/releases/download/v2.11.12/scala-2.11.12.tgz \
    && tar -xzf scala-2.11.12.tgz \
    && mv scala-2.11.12 /opt/scala

ENV SCALA_HOME=/opt/scala
ENV PATH=$PATH:$SCALA_HOME/bin

# Definir diretório de trabalho padrão
WORKDIR /app

# Copia os arquivos do projeto
COPY Scala.jj .
COPY main.scala .

RUN java -cp $JAVACC_HOME/javacc.jar javacc Scala.jj \
    && javac *.java

CMD ["sh"]