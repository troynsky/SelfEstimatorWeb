package config;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;

@JsonAutoDetect
@Service("config")
public class Config implements IConfig {

    private String userName;
    private String dbConnectionString;

    private static final Logger logger = LogManager.getLogger(Config.class);

    @Autowired
    public Config(@Value("jdbc:postgresql://localhost:5432/postgres?user=postgres&amp;password=alex") String dbConnectionString) {
        this.dbConnectionString = dbConnectionString;
    }

    public Config() {
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
