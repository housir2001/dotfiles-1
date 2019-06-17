
export JENKINS_URL="http://phpapp-ci-t01.sixt.de:8080/"
export JENKINS_AUTH="$HOME/.config/jenkins.cli.secret"
export JENKINS_JAR="$HOME/bin/jenkins-cli.jar"
export JENKINS_EXEC="java -jar $JENKINS_JAR"
export JENKINS_CLI="$JENKINS_EXEC -auth @$JENKINS_AUTH -s $JENKINS_URL"
 
alias jenkins-cli="$JENKINS_CLI"



export JENKINS_URL_PAP="http://pap20-ci-t01.sixt.de:8080/"
export JENKINS_AUTH_PAP="$HOME/.config/jenkins.clipap.secret"
export JENKINS_CLI_PAP="$JENKINS_EXEC -auth @$JENKINS_AUTH_PAP -s $JENKINS_URL_PAP"
 
alias jenkins-pap="$JENKINS_CLI_PAP"


# update/get jenkins cli jar itself
function jenkins-cli-update() {
    set -x
    echo "jenkins remote version is newer $RV than $LV."
    echo -n "updating jenkins cli..                    "
    curl --noproxy "*" -s "$JENKINS_URL/jnlpJars/jenkins-cli.jar" -o "$JENKINS_JAR" && echo 'Done.'
    set +x
}



