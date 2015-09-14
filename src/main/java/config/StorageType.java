package config;

public enum StorageType {
    DataBase("DataBase");

    private String storageType;

    StorageType(String storageType) {
        this.storageType = storageType;
    }
}
