/**
 * Copyright (c) 2013 Oracle and/or its affiliates. All rights reserved.
 *
 * You may not modify, use, reproduce, or distribute this software except in
 * compliance with  the terms of the License at:
 * http://java.net/projects/javaeetutorial/pages/BerkeleyLicense
 */
package com.i3systems.momiken.jbatch.webserverlog.items;

/* Represents a line in the input log file
   Used as input items in the ItemReader implementation */ 
public class LogLine {

    private String datetime;
    private String ipaddr;
    private String browser;
    private String url;

    /* Construct the line from individual items */
    public LogLine(String datetime, String ipaddr,
        String browser, String url) {
        this.datetime = datetime;
        this.ipaddr = ipaddr;
        this.browser = browser;
        this.url = url;
    }

    /* Construct an item from a log line */
    public LogLine(String line) throws Exception {
        //System.out.println(line);
        String[] result = line.split(", ");
        this.datetime = result[0];
        this.ipaddr = result[1];
        this.browser = result[2];
        this.url = result[3];
        //throw new IllegalAccessException("籾山定義の例外です");
    }
    
    /* For logging purposes */
    @Override
    public String toString() {
        return datetime + " " + ipaddr + " " + browser + " " + url;
    }

    /* Getters and setters */
    public String getDatetime() {
        return datetime;
    }

    public String getIpaddr() {
        return ipaddr;
    }

    public String getBrowser() {
        return browser;
    }

    public String getUrl() {
        return url;
    }
}
