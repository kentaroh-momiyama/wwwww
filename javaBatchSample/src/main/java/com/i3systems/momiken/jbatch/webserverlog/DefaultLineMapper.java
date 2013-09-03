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

import org.springframework.batch.item.file.FlatFileParseException;
import org.springframework.batch.item.file.LineMapper;
import org.springframework.beans.factory.InitializingBean;





import com.i3systems.momiken.jbatch.webserverlog.items.LogLine;


public class DefaultLineMapper<T> implements LineMapper<LogLine>, InitializingBean {
    private static final Logger logger = Logger.getLogger("DefaultLineMapper");
    private int count;

	public void afterPropertiesSet() {
		count = 0;
	}
	
	public LogLine mapLine(String line, int lineNumber) throws Exception {
		
		count++;
        logger.log(Level.INFO, "DefaultLineMapper " + count + "回目");

		
		try{
			if (line != null) {
	            return new LogLine(line);
	        } else
	            return null;
		}
		catch(Exception ex){
			throw new FlatFileParseException("Parsing error at line: " + lineNumber + 
					", input=[" + line + "]", ex, line, lineNumber); 
		}
	}
}
