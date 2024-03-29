/**
 * Copyright (c) 2013 Oracle and/or its affiliates. All rights reserved.
 *
 * You may not modify, use, reproduce, or distribute this software except in
 * compliance with  the terms of the License at:
 * http://java.net/projects/javaeetutorial/pages/BerkeleyLicense
 */
package com.i3systems.momiken.jbatch.webserverlog.items;

/* Represents a log line in the filtered log file
 * Used as output items in the ItemWriter implementation */
public class LogFilteredLine {
	private String ipaddr;
	private String url;
	
        /* Construct from an input log line */
	public LogFilteredLine(LogLine ll) {
		this.ipaddr = ll.getIpaddr();
		this.url = ll.getUrl();
	}
        
        /* Construct from an output log line */
        public LogFilteredLine(String line) {
		String[] result = line.split(", ");
		this.ipaddr = result[0];
		this.url = result[1];
	}
	
	@Override
	public String toString() {
		return ipaddr + ", " + url;
	}
}
