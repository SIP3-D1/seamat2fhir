#!/bin/bash
pubpath=~/GitHub/work/publisher.jar
java -Xmx4G -Djava.awt.headless=true -jar $pubpath -ig ig.ini  -tx https://tx.jpfhir.jp:8081
