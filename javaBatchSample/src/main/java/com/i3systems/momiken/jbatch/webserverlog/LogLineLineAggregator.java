/**
 * Copyright (c) 2013 Oracle and/or its affiliates. All rights reserved.
 *
 * You may not modify, use, reproduce, or distribute this software except in
 * compliance with  the terms of the License at:
 * http://java.net/projects/javaeetutorial/pages/BerkeleyLicense
 */
package com.i3systems.momiken.jbatch.webserverlog;



import com.i3systems.momiken.jbatch.webserverlog.items.LogFilteredLine;


import org.springframework.batch.item.file.transform.LineAggregator;
import org.springframework.util.Assert;


/* Write the filtered items */

public class LogLineLineAggregator<T> implements LineAggregator<LogFilteredLine> {

	@Override
	public String aggregate(LogFilteredLine item) {
		Assert.notNull(item);

		return item.toString();
	}


}
