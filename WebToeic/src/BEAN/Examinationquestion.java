package BEAN;

public class Examinationquestion {
	
	private int	examinationquestionid;
	private int	num;
	private String imagequestion;
	private String audiogg;
	
	private String audiomp3;
	private String paragraph;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String correctanswer;		
	private int	examinationid;
	private int part;
	private String topic;
	private boolean type;
	
	public boolean isType() {
		return type;
	}

	public void setType(boolean type) {
		this.type = type;
	}

	public Examinationquestion() {
		super();
	}
	
	public Examinationquestion(int examinationquestionid, int num, String imagequestion, String audiogg,
			String audiomp3, String paragraph, String question, String option1, String option2, String option3,
			String option4, String correctanswer, int examinationid, int part, String topic) {
		super();
		this.examinationquestionid = examinationquestionid;
		this.num = num;
		this.imagequestion = imagequestion;
		this.audiogg = audiogg;
		this.audiomp3 = audiomp3;
		this.paragraph = paragraph;
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.correctanswer = correctanswer;
		this.examinationid = examinationid;
		this.part = part;
		this.topic = topic;
	}
	public int getPart() {
		return part;
	}
	public void setPart(int part) {
		this.part = part;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public int getExaminationquestionid() {
		return examinationquestionid;
	}
	public void setExaminationquestionid(int examinationquestionid) {
		this.examinationquestionid = examinationquestionid;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getImagequestion() {
		return imagequestion;
	}
	public void setImagequestion(String imagequestion) {
		this.imagequestion = imagequestion;
	}
	public String getAudiogg() {
		return audiogg;
	}
	public void setAudiogg(String audiogg) {
		this.audiogg = audiogg;
	}
	public String getAudiomp3() {
		return audiomp3;
	}
	public void setAudiomp3(String audiomp3) {
		this.audiomp3 = audiomp3;
	}
	public String getParagraph() {
		return paragraph;
	}
	public void setParagraph(String paragraph) {
		this.paragraph = paragraph;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	public String getCorrectanswer() {
		return correctanswer;
	}
	public void setCorrectanswer(String correctanswer) {
		this.correctanswer = correctanswer;
	}
	public int getExaminationid() {
		return examinationid;
	}
	public void setExaminationid(int examinationid) {
		this.examinationid = examinationid;
	}

}
