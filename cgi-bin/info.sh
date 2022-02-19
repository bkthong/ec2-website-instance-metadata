#!/bin/bash

IP="`curl http://169.254.169.254/latest/meta-data/local-ipv4`"
HOSTNAME="`curl http://169.254.169.254/latest/meta-data/local-hostname`"

echo "Content-type: text/html"
echo
echo "<div style='font-family: Verdana; font-size: 24pt' align=center>"
echo "<h3 style='color: #d97f18'>EC2 Instance details</h3>"
echo "<table border=1 cellspacing=0 cellpadding=4>"
echo "<tr><td>IP Address</td><td>Hostname</td></tr>"
echo "<tr>"
echo "<td style='color: blue'>$IP</td>" 
echo "<td style='color: blue'>$HOSTNAME</td>"
echo "</tr>"
echo "</table>"
echo "</div>
