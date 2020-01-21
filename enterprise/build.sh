#https://docs.docker.com/engine/reference/commandline/build/
if [ -z $CURRENT ]; then
	CURRENT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
fi

docker build --no-cache=true -t cribl/splunk:8.0.0 .
docker tag cribl/splunk:8.0.0 cribl/splunk:latest 
docker tag cribl/splunk:8.0.0 registry.splunk.com/cribl/splunk:latest 
docker tag cribl/splunk:8.0.0 registry.splunk.com/cribl/splunk:8.0.0 
