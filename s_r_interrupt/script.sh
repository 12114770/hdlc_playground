#!/bin/bash
echo "Received an HDLC message! Logging event..." | tee -a received_log.txt
date | tee -a received_log.txt