package thoughtworks

import org.junit.Test
import static org.junit.Assert.assertEquals

class JobExecutionTest {
	
	@Test
	void shouldHaveDuration() {
		def jobExecution = new JobExecution('fixtures/sample.csv')
		assertEquals("32", jobExecution.cruise_job_duration)  
	}
}
