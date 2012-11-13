package thoughtworks
import static com.xlson.groovycsv.CsvParser.parseCsv

class JobExecution {
	def data
	
	def propertyMissing(String name) { 
		for (line in data) {
			print data."$name"
		}
	}
	
	public JobExecution(csvFile) {
		def reader = new FileReader(csvFile)
		def file = new File(csvFile)
		print file.getText()
		data = parseCsv(file.getText(), autoDetect:true)
		for (line in data) {
			println line.cruise_job_duration
		}
	}
}
