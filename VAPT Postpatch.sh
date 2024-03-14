#!/bin/bash

oscap oval eval --report report.html com.ubuntu.$(lsb_release -cs).usn.oval.xml
