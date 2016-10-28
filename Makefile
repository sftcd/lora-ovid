# XML2RFC=/Users/paul/Documents/xml2rfc-1.35/xml2rfc.tcl
XML2RFC=xml2rfc

DATE=`date +%s`

all: core upload

core:
	$(XML2RFC) draft-farrell-lpwan-lora-overview.xml draft-farrell-lpwan-lora-overview.txt

upload:
	scp draft-farrell-lpwan-lora-overview.txt  down.dsg.cs.tcd.ie:/var/www/misc/draft-farrell-lpwan-lora-overview.txt
	scp draft-farrell-lpwan-lora-overview.xml  down.dsg.cs.tcd.ie:/var/www/misc/draft-farrell-lpwan-lora-overview.xml

backuup:
	- mkdir backups
	cp draft-farrell-lpwan-lora-overview.txt backups/draft-farrell-lpwan-lora-overview-$(DATE).txt
	cp draft-farrell-lpwan-lora-overview.xml backups/draft-farrell-lpwan-lora-overview-$(DATE).xml

clean:
	rm -f   draft-farrell-lpwan-lora-overview.txt *~

