FROM bensentropy/debian

MAINTAINER Ben Olsen "me@bensentorpy.com"

RUN apt-get update && \
	apt-get install -y subversion python python-pip python-dev gcc libxml2-dev libxslt1-dev zlib1g-dev libffi-dev libssl-dev && \
	apt-get clean && \
	easy_install -U distribute

# Install pycharm helpers, use svn to retrieve get the folder
RUN svn checkout https://github.com/JetBrains/intellij-community/trunk/python/helpers
RUN	mv /helpers /root/.pycharm_helpers


CMD ["bash"]
