#!/bin/bash
xmllint --schema HRManagementSystem.xsd HRManagementSystem.xml --noout
xsltproc slujiteli.xsl HRManagementSystem.xml > slujiteli.html
xsltproc otdeli.xsl HRManagementSystem.xml > otdeli.html
