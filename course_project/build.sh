#!/bin/bash
xmllint --schema HRManagementSystem.xsd HRManagementSystem.xml --noout
xsltproc HRManagementSystem.xsl HRManagementSystem.xml > HRManangementSystem.html
