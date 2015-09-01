package config;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;

@JsonAutoDetect
public class Config implements IConfig {

    private String userName;
    private StorageType storageType;
    private String dbConnectionString;
    private String termFileName;
    private String tagFileName;
    private String termTagsFileName;
    private String userSkillsFileName;

    private static final Logger logger = LogManager.getLogger(Config.class);

    public Config() {
    }

    public Config(String userName, StorageType storageType) {
        this.userName = userName;
        this.storageType = storageType;
    }

    @Override
    public void setStorageType(StorageType storageType) {
        this.storageType = storageType;
    }

    @Override
    public StorageType getStorageType() {
        return storageType;
    }

    @Override
    public String getDbConnectionString() {
        return dbConnectionString;
    }

    @Override
    public void setDbConnectionString(String dbConnectionString) {
        this.dbConnectionString = dbConnectionString;
    }

    @Override
    public String getTermFileName() {
        return termFileName;
    }

    @Override
    public void setTermFileName(String termFileName) {
        this.termFileName = termFileName;
    }

    @Override
    public String getTagFileName() {
        return tagFileName;
    }

    @Override
    public void setTagFileName(String tagFileName) {
        this.tagFileName = tagFileName;
    }

    @Override
    public String getTermTagsFileName() {
        return termTagsFileName;
    }

    @Override
    public void setTermTagsFileName(String termTagsFileName) {
        this.termTagsFileName = termTagsFileName;
    }

    @Override
    public String getUserSkillsFileName() {
        return userSkillsFileName;
    }

    @Override
    public void setUserSkillsFileName(String userSkillsFileName) {
        this.userSkillsFileName = userSkillsFileName;
    }

    @Override
    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String getUserName() {
        return userName;
    }

    public String setJson(Config configuration) {
        StringWriter writer = null;
        try {
            writer = new StringWriter();
            ObjectMapper mapper = new ObjectMapper();
            mapper.writeValue(writer, configuration);
        } catch (IOException e) {
            logger.error("Exception on setJson");
        }
        return writer.toString();
    }

    public static Config getJson(String json) {
        try {
            StringReader reader = new StringReader(json);
            ObjectMapper mapper = new ObjectMapper();
            return mapper.readValue(reader, Config.class);
        } catch (IOException e) {
            logger.error("Exception on getJson");
        }
        return null;
    }
}
