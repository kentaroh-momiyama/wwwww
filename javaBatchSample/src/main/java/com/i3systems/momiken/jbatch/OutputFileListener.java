package com.i3systems.momiken.jbatch;

import org.springframework.batch.core.ExitStatus;
import org.springframework.batch.core.StepExecution;
import org.springframework.batch.core.StepExecutionListener;
import org.springframework.util.StringUtils;

public class OutputFileListener implements StepExecutionListener {
	@Override
	public ExitStatus afterStep(StepExecution arg0) {
		return null;
	}
	
	@Override
	public void beforeStep(StepExecution se) {
		String path = se.getExecutionContext().getString("fileName");
		String file = StringUtils.getFilename(path);
		se.getExecutionContext().put("outFile", file);
	}
}
