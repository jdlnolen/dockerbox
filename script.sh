sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get -y -q install build-essential python-dev libevent-dev python-pip liblzma-dev
sudo apt-get -y -q install lxc-docker

sudo pip install docker-registry

#tests for successful install

#assert function for testing
assert()
{
	if hash $1 2>/dev/null; then
        	echo $1  "installed"
	else
        	echo $1 "not installed"
	fi
}

assert docker
