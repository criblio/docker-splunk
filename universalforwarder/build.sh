#https://docs.docker.com/engine/reference/commandline/build/
if [ -z $CURRENT ]; then
	CURRENT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
fi


docker build --no-cache=true -t cribl/universalforwarder:8.0.5 $CURRENT
docker tag cribl/universalforwarder:8.0.5 cribl/universalforwarder:latest
docker tag cribl/universalforwarder:8.0.5 registry.splunk.com/cribl/universalforwarder:8.0.5
docker tag cribl/universalforwarder:8.0.5 registry.splunk.com/cribl/universalforwarder:latest


