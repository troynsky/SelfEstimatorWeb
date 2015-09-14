package config;

public interface IConfigLoader {
    void setUserName(String name);

    String getUserName();

    void setDbConnectionString(String dbConnectionString);

    String getDbConnectionString();

}
