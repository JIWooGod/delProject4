package command.lecture;

public class TestCommand {
	Long tchNo;
	Long subjNo;
	
	String q1;	String q2;	String q3;	String q4;	String q5;
	String q6;	String q7;	String q8;	String q9;	String q10;
	
	String q1a1;	String q1a2;	String q1a3;	String q1a4;
	String q2a1;	String q2a2;	String q2a3;	String q2a4;
	String q3a1;	String q3a2;	String q3a3;	String q3a4;
	String q4a1;	String q4a2;	String q4a3;	String q4a4;
	String q5a1;	String q5a2;	String q5a3;	String q5a4;
	String q6a1;	String q6a2;	String q6a3;	String q6a4;
	String q7a1;	String q7a2;	String q7a3;	String q7a4;
	String q8a1;	String q8a2;	String q8a3;	String q8a4;
	String q9a1;	String q9a2;	String q9a3;	String q9a4;
	String q10a1;	String q10a2;	String q10a3;	String q10a4;

	public TestCommand() {}
	public TestCommand(Long tchNo, Long subjNo) {
		this.tchNo = tchNo;
		this.subjNo = subjNo;
	}
	public TestCommand(String q1, String q2, String q3, String q4, String q5) {
		this.q1 = q1;
		this.q2 = q2;
		this.q3 = q3;
		this.q4 = q4;
		this.q5 = q5;
	}
	public String getQ6() {
		return q6;
	}
	public void setQ6(String q6) {
		this.q6 = q6;
	}
	public String getQ7() {
		return q7;
	}
	public void setQ7(String q7) {
		this.q7 = q7;
	}
	public String getQ8() {
		return q8;
	}
	public void setQ8(String q8) {
		this.q8 = q8;
	}
	public String getQ9() {
		return q9;
	}
	public void setQ9(String q9) {
		this.q9 = q9;
	}
	public String getQ10() {
		return q10;
	}
	public void setQ10(String q10) {
		this.q10 = q10;
	}
	public TestCommand(String q1a1, String q1a2, String q1a3, String q1a4) {
		this.q1a1 = q1a1;
		this.q1a2 = q1a2;
		this.q1a3 = q1a3;
		this.q1a4 = q1a4;
	}

}