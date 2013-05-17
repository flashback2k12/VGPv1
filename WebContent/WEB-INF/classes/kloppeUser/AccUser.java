package account;
import java.io.Serializable;


public class AccUser implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2082483162477291161L;
	private String aUserID;
	private String aUserFirma;
	private String aUserBenutzer;
	private String aUserName;
	
	public AccountUser(){}
	
	public AccountUser(String userID, String userFirma, String userBenutzer, String userName){
		this.setaUserID(userID);
		this.setaUserFirma(userFirma);
		this.setaUserBenutzer(userBenutzer);
		this.setaUserName(userName);
	}

	public String getaUserID() {
		return aUserID;
	}

	public void setaUserID(String aUserID) {
		this.aUserID = aUserID;
	}

	public String getaUserFirma() {
		return aUserFirma;
	}

	public void setaUserFirma(String aUserFirma) {
		this.aUserFirma = aUserFirma;
	}

	public String getaUserBenutzer() {
		return aUserBenutzer;
	}

	public void setaUserBenutzer(String aUserBenutzer) {
		this.aUserBenutzer = aUserBenutzer;
	}

	public String getaUserName() {
		return aUserName;
	}

	public void setaUserName(String aUserName) {
		this.aUserName = aUserName;
	}
}
