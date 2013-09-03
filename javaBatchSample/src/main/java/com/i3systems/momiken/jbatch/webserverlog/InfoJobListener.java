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
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobExecutionListener;


public class InfoJobListener implements JobExecutionListener {

    private static final Logger logger = Logger.getLogger("InfoJobListener");
    
    
    @Override
    public void beforeJob(JobExecution jobExecution) {
        logger.log(Level.INFO, "The job is starting");
    }

    @Override
    public void afterJob(JobExecution jobExecution) {
        logger.log(Level.INFO, "The job has finished.");
    }
    
}
