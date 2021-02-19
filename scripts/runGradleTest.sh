#!/bin/bash

filename=$1

class=${filename//\//.}
class=${class//.story/}
class=${class//src.jbehave.stories./}
gradle jbehave --tests "$class" 2>&1 /tmp/build
