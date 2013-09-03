/**
 * Copyright (c) 2013 Oracle and/or its affiliates. All rights reserved.
 *
 * You may not modify, use, reproduce, or distribute this software except in
 * compliance with  the terms of the License at:
 * http://java.net/projects/javaeetutorial/pages/BerkeleyLicense
 */
package com.i3systems.momiken.jbatch.webserverlog;


import org.springframework.batch.item.ItemProcessor;

import com.i3systems.momiken.jbatch.webserverlog.items.LogLine;
import com.i3systems.momiken.jbatch.webserverlog.items.LogFilteredLine;


/* Processes items from the log file
 * Filters only those items from mobile or tablet browsers,
 * depending on the properties specified in the job definition file.
 */

public class LogLineProcessor<I, O> implements ItemProcessor<LogLine, LogFilteredLine> {
    
    private String[] browsers;
    private String browsersstr;
    //private int numbrowsers = 0;



    /**
	 * @return the numbrowsers
	 */
	public String getBrowsersStr() {
		return browsersstr;
	}



	/**
	 * @param numbrowsers the numbrowsers to set
	 */
	public void setBrowsersStr(String browsersstr) {
		this.browsersstr = browsersstr;
		this.browsers = browsersstr.split(",");
	}



	@Override
    public LogFilteredLine process(LogLine logline) {
        /* Obtain a list of browsers we are interested in */
        /* Filter for only the mobile/tablet browsers as specified */
        for (int i=0; i<browsers.length; i++) {
            if (logline.getBrowser().equals(browsers[i])) {
                /* The new items have less fields */
                return new LogFilteredLine(logline);
            }
        }
        return null;
    }
}

