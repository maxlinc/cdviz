package thoughtworks

import org.junit.Test
import static org.junit.Assert.assertEquals

class JobExecutionTest {
	
	@Test
	void shouldHaveDuration() {
		def csvRow = ["pipeline", "stage", "job", "agent", "20", "job_id", 
					  "job_result", "pl_counter", "pl_label", "stage_counter",
					  "2012-04-19T12:42:36+04:00", "assigned", "preparing", "building",
					  "completing", "2012-04-19T12:43:35+04:00"]
		def jobExecution = new JobExecution(csvRow)
		assertEquals("20", jobExecution.getDuration())  
	}
}
