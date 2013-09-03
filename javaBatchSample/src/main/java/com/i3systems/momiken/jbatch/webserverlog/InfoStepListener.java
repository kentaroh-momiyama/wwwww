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

import org.springframework.batch.core.ExitStatus;
import org.springframework.batch.core.StepExecution;
import org.springframework.batch.core.StepExecutionListener;


public class InfoStepListener implements StepExecutionListener {

    private static final Logger logger = Logger.getLogger("InfoStepListener");
    
    
    @Override
    public void beforeStep(StepExecution stepExecution) {
        logger.log(Level.INFO, "The job is starting");
    }

    @Override
    public ExitStatus afterStep(StepExecution stepExecution) {
        logger.log(Level.INFO, "The step has finished.");
        return null;
    }
    
}
