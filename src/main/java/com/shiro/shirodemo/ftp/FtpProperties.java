package com.shiro.shirodemo.ftp;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * ftp
 *
 * @author: jwy
 * @date: 2018/1/16
 */
@Component
@ConfigurationProperties(prefix = "ftp")
public class FtpProperties {

    private String ftpName;
    private String ftpPassword;
    private String ftpServerIP;
    private int ftpPort;

    public String getFtpName() {
        return ftpName;
    }

    public void setFtpName(String ftpName) {
        this.ftpName = ftpName;
    }

    public String getFtpPassword() {
        return ftpPassword;
    }

    public void setFtpPassword(String ftpPassword) {
        this.ftpPassword = ftpPassword;
    }

    public String getFtpServerIP() {
        return ftpServerIP;
    }

    public void setFtpServerIP(String ftpServerIP) {
        this.ftpServerIP = ftpServerIP;
    }

    public int getFtpPort() {
        return ftpPort;
    }

    public void setFtpPort(int ftpPort) {
        this.ftpPort = ftpPort;
    }
}
