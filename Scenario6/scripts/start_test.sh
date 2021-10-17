#!/bin/bash
rm -rf LoadReports/
/opt/bin/jmeter -n -t jmeter_demo.jmx -Dserver.rmi.ssl.disable=true -R `getent ahostsv4 jmeter-slaves-svc | cut -d' ' -f1 | sort -u | awk -v ORS=, '{print $1}' | sed 's/,$//'` -l LoadReports/results.jtl -e -o LoadReports
