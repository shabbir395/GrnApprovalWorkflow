import oracle.adf.share.ADFContext;
import oracle.adf.share.security.SecurityContext;

public class UserWLProfile {
    private String userID;
    
    public UserWLProfile() {
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserID() {
        ADFContext adfc = ADFContext.getCurrent();
        SecurityContext sc = adfc.getSecurityContext();
        String userid = sc.getUserProfile().getProperty("employeenumber").toString();
        return userid;
    }
}
