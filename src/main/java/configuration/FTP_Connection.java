package configuration;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;

import java.io.*;
import java.util.Arrays;

public class FTP_Connection {
    FTPClient ftpClient;
//get FTP connection
    public FTP_Connection(ConfigModel cf) throws IOException {
        ftpClient = new FTPClient();
        ftpClient.connect(cf.getFTP_IP(), cf.getPORT());
        ftpClient.login(cf.getUsername(), cf.getPassword());
        ftpClient.enterLocalPassiveMode();
        ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
    }

    public FTPClient getFTPConnection() throws IOException {
        return ftpClient;
    }
// start upload file to FPT server
    public String uploadFile(String destFolderRemote,String sourceName) throws IOException {
        File LocalFile = new File(sourceName);
        InputStream inputStream = new FileInputStream(LocalFile);
        String remoteFile = destFolderRemote + getNameFile(sourceName);
        boolean done = ftpClient.storeFile(remoteFile, inputStream);
        return remoteFile;
    }
//start dowload file from FPT server
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


}
