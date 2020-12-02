#!/bin/bash
./tools/xmllint --schema HRManagementSystem.xsd HRManagementSystem.xml --noout
./tools/xsltproc slujiteli.xsl HRManagementSystem.xml > slujiteli.html
./tools/xsltproc otdeli.xsl HRManagementSystem.xml > otdeli.html
