.class public Lorg/h2/util/OsgiDataSourceFactory;
.super Ljava/lang/Object;
.source "OsgiDataSourceFactory.java"

# interfaces
.implements Lorg/osgi/service/jdbc/DataSourceFactory;


# instance fields
.field private driver:Lorg/h2/Driver;


# direct methods
.method public constructor <init>(Lorg/h2/Driver;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/h2/util/OsgiDataSourceFactory;->driver:Lorg/h2/Driver;

    return-void
.end method

.method static registerService(Lorg/osgi/framework/BundleContext;Lorg/h2/Driver;)V
    .locals 3

    .line 293
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "osgi.jdbc.driver.class"

    .line 294
    const-class v2, Lorg/h2/Driver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osgi.jdbc.driver.name"

    const-string v2, "H2 JDBC Driver"

    .line 297
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osgi.jdbc.driver.version"

    .line 300
    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-class v1, Lorg/osgi/service/jdbc/DataSourceFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/util/OsgiDataSourceFactory;

    invoke-direct {v2, p1}, Lorg/h2/util/OsgiDataSourceFactory;-><init>(Lorg/h2/Driver;)V

    invoke-interface {p0, v1, v2, v0}, Lorg/osgi/framework/BundleContext;->registerService(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Dictionary;)Lorg/osgi/framework/ServiceRegistration;

    return-void
.end method

.method private static rejectPoolingOptions(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLFeatureNotSupportedException;
        }
    .end annotation

    const-string v0, "initialPoolSize"

    .line 274
    invoke-virtual {p0, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "maxIdleTime"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "maxPoolSize"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "maxStatements"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "minPoolSize"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "propertyCycle"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 280
    :cond_0
    new-instance p0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v0, "Pooling properties are not supported by H2"

    invoke-direct {p0, v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static rejectUnsupportedOptions(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLFeatureNotSupportedException;
        }
    .end annotation

    const-string v0, "roleName"

    .line 165
    invoke-virtual {p0, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataSourceName"

    .line 170
    invoke-virtual {p0, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance p0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v0, "The dataSourceName property is not supported by H2"

    invoke-direct {p0, v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_1
    new-instance p0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v0, "The roleName property is not supported by H2"

    invoke-direct {p0, v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setupH2DataSource(Lorg/h2/jdbcx/JdbcDataSource;Ljava/util/Properties;)V
    .locals 4

    const-string v0, "user"

    .line 187
    invoke-virtual {p1, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user"

    .line 188
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->setUser(Ljava/lang/String;)V

    :cond_0
    const-string v0, "password"

    .line 190
    invoke-virtual {p1, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "password"

    .line 191
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->setPassword(Ljava/lang/String;)V

    :cond_1
    const-string v0, "description"

    .line 196
    invoke-virtual {p1, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "description"

    .line 197
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->setDescription(Ljava/lang/String;)V

    .line 202
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "url"

    .line 203
    invoke-virtual {p1, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "url"

    .line 205
    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "networkProtocol"

    .line 207
    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serverName"

    .line 208
    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "portNumber"

    .line 209
    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "databaseName"

    .line 210
    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    const-string v1, "jdbc:h2:"

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ""

    const-string v2, "networkProtocol"

    .line 217
    invoke-virtual {p1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "networkProtocol"

    .line 218
    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v2, "serverName"

    .line 223
    invoke-virtual {p1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "//"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "serverName"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "portNumber"

    .line 227
    invoke-virtual {p1, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ":"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "portNumber"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v1, "/"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    const-string v2, "portNumber"

    .line 233
    invoke-virtual {p1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "//localhost:"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "portNumber"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_7
    const-string v2, "tcp"

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "ssl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string v1, "//localhost/"

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    :goto_0
    const-string v1, "databaseName"

    .line 247
    invoke-virtual {p1, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "databaseName"

    .line 248
    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 254
    :cond_a
    :goto_1
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, ";"

    .line 255
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 259
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const-string v1, "jdbc:h2:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_c

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbcx/JdbcDataSource;->setURL(Ljava/lang/String;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public createConnectionPoolDataSource(Ljava/util/Properties;)Ljavax/sql/ConnectionPoolDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 95
    :cond_0
    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectUnsupportedOptions(Ljava/util/Properties;)V

    .line 98
    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectPoolingOptions(Ljava/util/Properties;)V

    .line 100
    new-instance p1, Lorg/h2/jdbcx/JdbcDataSource;

    invoke-direct {p1}, Lorg/h2/jdbcx/JdbcDataSource;-><init>()V

    .line 102
    invoke-static {p1, v0}, Lorg/h2/util/OsgiDataSourceFactory;->setupH2DataSource(Lorg/h2/jdbcx/JdbcDataSource;Ljava/util/Properties;)V

    return-object p1
.end method

.method public createDataSource(Ljava/util/Properties;)Ljavax/sql/DataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 65
    :cond_0
    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectUnsupportedOptions(Ljava/util/Properties;)V

    .line 68
    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectPoolingOptions(Ljava/util/Properties;)V

    .line 70
    new-instance p1, Lorg/h2/jdbcx/JdbcDataSource;

    invoke-direct {p1}, Lorg/h2/jdbcx/JdbcDataSource;-><init>()V

    .line 72
    invoke-static {p1, v0}, Lorg/h2/util/OsgiDataSourceFactory;->setupH2DataSource(Lorg/h2/jdbcx/JdbcDataSource;Ljava/util/Properties;)V

    return-object p1
.end method

.method public createDriver(Ljava/util/Properties;)Ljava/sql/Driver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p1}, Ljava/util/Properties;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1

    .line 151
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/h2/util/OsgiDataSourceFactory;->driver:Lorg/h2/Driver;

    return-object p1
.end method

.method public createXADataSource(Ljava/util/Properties;)Ljavax/sql/XADataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 125
    :cond_0
    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectUnsupportedOptions(Ljava/util/Properties;)V

    .line 128
    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectPoolingOptions(Ljava/util/Properties;)V

    .line 130
    new-instance p1, Lorg/h2/jdbcx/JdbcDataSource;

    invoke-direct {p1}, Lorg/h2/jdbcx/JdbcDataSource;-><init>()V

    .line 132
    invoke-static {p1, v0}, Lorg/h2/util/OsgiDataSourceFactory;->setupH2DataSource(Lorg/h2/jdbcx/JdbcDataSource;Ljava/util/Properties;)V

    return-object p1
.end method
