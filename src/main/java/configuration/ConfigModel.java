package configuration;

public class ConfigModel {
    private String _id;
    private String sourceName;
    private String sourceLoad;
    private String FTP_IP;
    private int PORT;
    private String username;
    private String password;
    private String author;

    public ConfigModel() {

    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }


    public String getId() {
        return _id;
    }

    public void setId(String id) {
        this._id = id;
    }

    public String getSourceName() {
        return sourceName;
    }

    public void setSourceName(String sourceName) {
        this.sourceName = sourceName;
    }

    public String getFTP_IP() {
        return FTP_IP;
    }

    public void setFTP_IP(String FTP_IP) {
        this.FTP_IP = FTP_IP;
    }

    public int getPORT() {
        return PORT;
    }

    public void setPORT(int PORT) {
        this.PORT = PORT;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSourceLoad() {
        return sourceLoad;
    }

    public void setSourceLoad(String sourceLoad) {
        this.sourceLoad = sourceLoad;
    }

    @Override
    public String toString() {
        return "ConfigModel{" +
                "_id='" + _id + '\'' +
                ", sourceName='" + sourceName + '\'' +
                ", sourceLoad='" + sourceLoad + '\'' +
                ", FTP_IP='" + FTP_IP + '\'' +
                ", PORT=" + PORT +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", author='" + author + '\'' +
                '}';
    }
}
