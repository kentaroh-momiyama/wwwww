/**
 * Copyright (c) 2013 Oracle and/or its affiliates. All rights reserved.
 *
 * You may not modify, use, reproduce, or distribute this software except in
 * compliance with  the terms of the License at:
 * http://java.net/projects/javaeetutorial/pages/BerkeleyLicense
 */
package com.i3systems.momiken.jbatch.webserverlog;

import java.util.logging.Level;
import java.util.logging.Logger;

import com.i3systems.momiken.jbatch.webserverlog.items.LogFilteredLine;
import com.i3systems.momiken.jbatch.webserverlog.items.LogLine;

import org.springframework.batch.core.ItemProcessListener;



public class InfoItemProcessListener implements ItemProcessListener<LogLine, LogFilteredLine> {
    
    private static final Logger logger = Logger.getLogger("InfoItemProcessListener");
    
    public InfoItemProcessListener() { }

    @Override
    public void beforeProcess(LogLine logline) {
        //LogLine logline = (LogLine) o;
        logger.log(Level.INFO, "Processing entry " + logline);
    }

    @Override
    public void afterProcess(LogLine logline, LogFilteredLine o1) {}

    @Override
    public void onProcessError(LogLine logline, Exception excptn) {
        //LogLine LogLine = (LogLine) o;
        logger.log(Level.WARNING, "Error processing entry " + logline);
    }
    
}
