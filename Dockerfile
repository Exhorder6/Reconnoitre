FROM python:3.12.5


RUN apt-get update && \
	apt-get install -y git nmap snmp wget nbtscan

RUN git clone https://github.com/codingo/Reconnoitre.git recon

WORKDIR /recon

RUN pip install -r requirements.txt && python setup.py install

ENTRYPOINT ["reconnoitre"]
