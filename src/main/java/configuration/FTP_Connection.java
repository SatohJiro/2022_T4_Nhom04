package configuration;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;

import java.io.*;
import java.util.Arrays;

public class FTP_Connection {
    private String IP_FTP = "103.97.126.21";
    private int port = 21;
    private String user = "satohjiro@satohjiro.tk";
    private String pass = "123456";
    FTPClient ftpClient;

    public FTP_Connection() throws IOException {
        ftpClient = new FTPClient();
        ftpClient.connect(IP_FTP, port);
        ftpClient.login(user, pass);
        ftpClient.enterLocalPassiveMode();
        ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
    }

    public FTPClient getFTPConnection() throws IOException {
        return ftpClient;
    }

    public String uploadFile(String destFolderRemote,String sourceName) throws IOException {
        File LocalFile = new File(sourceName);
        InputStream inputStream = new FileInputStream(LocalFile);
        String remoteFile = destFolderRemote + getNameFile(sourceName);
        boolean done = ftpClient.storeFile(remoteFile, inputStream);
        return remoteFile;
    }

    public boolean downloadFile(String remoteSourceName, String nameFile) throws IOException {
        OutputStream os = new BufferedOutputStream(new FileOutputStream(nameFile));
        boolean success = ftpClient.retrieveFile(remoteSourceName, os);
        os.close();
        return success;
    }

    public String getNameFile(String source) {
        int index = source.lastIndexOf("/");
        return source.substring(index + 1, source.length());
    }

    public static void main(String[] args) throws IOException {
        FTP_Connection ftp = new FTP_Connection();



    }

}
