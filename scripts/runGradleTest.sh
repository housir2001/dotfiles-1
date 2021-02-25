#!/bin/bash
JAVA_HOME=/usr/lib/jvm/java-8-openjdk;
filename=$1

class=${filename//\//.}
class=${class//.story/}

class=${class//src.jbehave.stories./}
echo "gradle jbehave --tests $class 2>&1 /tmp/gradlebuild" > /tmp/cmdTest
gradle jbehave --tests "$class" 2>&1 /tmp/gradlebuild
