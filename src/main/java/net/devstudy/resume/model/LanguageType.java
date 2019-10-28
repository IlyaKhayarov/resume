package net.devstudy.resume.model;

public enum LanguageType {

	ALL,

	SPOKEN,

	WRITTING;

	public String getDbValue() {
		return name().toLowerCase();
	}

	public LanguageType getReverseType() {
		if(this == SPOKEN) {
			return WRITTING;
		} else if(this == WRITTING) {
			return SPOKEN;
		} else throw new IllegalArgumentException(this + " does not have reverse type");
	}
}
