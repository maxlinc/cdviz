package thoughtworks

class JobExecution {
	private static final DURATION = 4; 
	private csvRow;
	
	public JobExecution(csvRow) {
		this.csvRow = csvRow;
	}
	
	public getDuration() {
		return csvRow[DURATION]
	}

}
