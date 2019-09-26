#!/bin/bash


targetDir=`pwd` 

targetDir=$targetDir/target/classes


tmp="$(rg -oNl -g'*.java' main | head -n1)"

namespace=$(rg -N package $tmp)
namespace=${namespace/package/}
namespace=${namespace/;/}

filename=${tmp##*/}
classname=${filename/\.java/}

tmp2=${tmp/src\/main\/java\//}
tmp2=${tmp2/\.java/}
classpart=${tmp2//\//\.}


class=$namespace.$classname 

echo $targetDir

echo $class


cmd="/usr/lib/jvm/java-8-openjdk-amd64/bin/java -Dfile.encoding=UTF-8 -classpath /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/charsets.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/cldrdata.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/dnsns.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/icedtea-sound.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/jaccess.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/java-atk-wrapper.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/localedata.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/nashorn.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/sunec.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/sunjce_provider.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/sunpkcs11.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/zipfs.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/jce.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/jsse.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/management-agent.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/resources.jar:/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/rt.jar:$targetDir:/home/maren/.m2/repository/org/apache/camel/camel-core/2.20.1/camel-core-2.20.1.jar:/home/maren/.m2/repository/org/slf4j/slf4j-api/1.7.22/slf4j-api-1.7.22.jar:/home/maren/.m2/repository/com/sun/xml/bind/jaxb-core/2.2.11/jaxb-core-2.2.11.jar:/home/maren/.m2/repository/com/sun/xml/bind/jaxb-impl/2.2.11/jaxb-impl-2.2.11.jar:/home/maren/.m2/repository/org/apache/camel/camel-spring/2.20.1/camel-spring-2.20.1.jar:/home/maren/.m2/repository/org/springframework/spring-core/5.0.0.RELEASE/spring-core-5.0.0.RELEASE.jar:/home/maren/.m2/repository/org/springframework/spring-jcl/5.0.0.RELEASE/spring-jcl-5.0.0.RELEASE.jar:/home/maren/.m2/repository/org/springframework/spring-aop/5.0.0.RELEASE/spring-aop-5.0.0.RELEASE.jar:/home/maren/.m2/repository/org/springframework/spring-beans/5.0.0.RELEASE/spring-beans-5.0.0.RELEASE.jar:/home/maren/.m2/repository/org/springframework/spring-expression/5.0.0.RELEASE/spring-expression-5.0.0.RELEASE.jar:/home/maren/.m2/repository/org/springframework/spring-tx/5.0.0.RELEASE/spring-tx-5.0.0.RELEASE.jar:/home/maren/.m2/repository/org/slf4j/slf4j-simple/1.7.25/slf4j-simple-1.7.25.jar:/home/maren/.m2/repository/junit/junit/4.12/junit-4.12.jar:/home/maren/.m2/repository/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar:/home/maren/.m2/repository/org/springframework/spring-context/5.0.0.RELEASE/spring-context-5.0.0.RELEASE.jar $class"


$cmd
