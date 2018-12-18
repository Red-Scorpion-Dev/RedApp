.class public Lorg/h2/jdbcx/JdbcDataSource;
.super Lorg/h2/message/TraceObject;
.source "JdbcDataSource.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/naming/Referenceable;
.implements Ljavax/sql/ConnectionPoolDataSource;
.implements Ljavax/sql/DataSource;
.implements Ljavax/sql/XADataSource;


# static fields
.field private static final serialVersionUID:J = 0x11e0612ccbb2016bL


# instance fields
.field private description:Ljava/lang/String;

.field private transient factory:Lorg/h2/jdbcx/JdbcDataSourceFactory;

.field private transient logWriter:Ljava/io/PrintWriter;

.field private loginTimeout:I

.field private passwordChars:[C

.field private url:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 79
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 85
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const-string v0, ""

    .line 73
    iput-object v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->userName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->passwordChars:[C

    const-string v0, ""

    .line 75
    iput-object v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->url:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lorg/h2/jdbcx/JdbcDataSource;->initFactory()V

    const/16 v0, 0xc

    .line 87
    invoke-static {v0}, Lorg/h2/jdbcx/JdbcDataSource;->getNextId(I)I

    move-result v1

    .line 88
    iget-object v2, p0, Lorg/h2/jdbcx/JdbcDataSource;->factory:Lorg/h2/jdbcx/JdbcDataSourceFactory;

    invoke-virtual {v2}, Lorg/h2/jdbcx/JdbcDataSourceFactory;->getTrace()Lorg/h2/message/Trace;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lorg/h2/jdbcx/JdbcDataSource;->setTrace(Lorg/h2/message/Trace;II)V

    return-void
.end method

.method private static convertToCharArray(Ljava/lang/String;)[C
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static convertToString([C)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private getJdbcConnection(Ljava/lang/String;[C)Lorg/h2/jdbc/JdbcConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcDataSource;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getJdbcConnection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcDataSource;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new char[0]);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCode(Ljava/lang/String;)V

    .line 187
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "user"

    .line 188
    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "password"

    .line 189
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/jdbcx/JdbcDataSource;->url:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/h2/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p1

    const/16 p2, 0x1f41

    if-eqz p1, :cond_2

    .line 194
    instance-of v0, p1, Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_1

    .line 199
    check-cast p1, Lorg/h2/jdbc/JdbcConnection;

    return-object p1

    .line 195
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting with old version is not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcDataSource;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08001"

    invoke-direct {p1, v0, v1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 192
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No suitable driver found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcDataSource;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08001"

    invoke-direct {p1, v0, v1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
.end method

.method private initFactory()V
    .locals 1

    .line 103
    new-instance v0, Lorg/h2/jdbcx/JdbcDataSourceFactory;

    invoke-direct {v0}, Lorg/h2/jdbcx/JdbcDataSourceFactory;-><init>()V

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->factory:Lorg/h2/jdbcx/JdbcDataSourceFactory;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lorg/h2/jdbcx/JdbcDataSource;->initFactory()V

    .line 99
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method


# virtual methods
.method public getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "getConnection"

    .line 160
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->userName:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcDataSource;->passwordChars:[C

    invoke-static {v1}, Lorg/h2/util/StringUtils;->cloneCharArray([C)[C

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/h2/jdbcx/JdbcDataSource;->getJdbcConnection(Ljava/lang/String;[C)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v0

    return-object v0
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcDataSource;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcDataSource;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \"\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCode(Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-static {p2}, Lorg/h2/jdbcx/JdbcDataSource;->convertToCharArray(Ljava/lang/String;)[C

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbcx/JdbcDataSource;->getJdbcConnection(Ljava/lang/String;[C)Lorg/h2/jdbc/JdbcConnection;

    move-result-object p1

    return-object p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "getDescription"

    .line 312
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLogWriter()Ljava/io/PrintWriter;
    .locals 1

    const-string v0, "getLogWriter"

    .line 137
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->logWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public getLoginTimeout()I
    .locals 1

    const-string v0, "getLoginTimeout"

    .line 113
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->loginTimeout:I

    return v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    const-string v0, "getPassword"

    .line 282
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->passwordChars:[C

    invoke-static {v0}, Lorg/h2/jdbcx/JdbcDataSource;->convertToString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPooledConnection()Ljavax/sql/PooledConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "getPooledConnection"

    .line 384
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcDataSource;->getXAConnection()Ljavax/sql/XAConnection;

    move-result-object v0

    return-object v0
.end method

.method public getPooledConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/PooledConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcDataSource;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPooledConnection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcDataSource;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \"\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCode(Ljava/lang/String;)V

    .line 402
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/h2/jdbcx/JdbcDataSource;->getXAConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/XAConnection;

    move-result-object p1

    return-object p1
.end method

.method public getReference()Ljavax/naming/Reference;
    .locals 4

    const-string v0, "getReference"

    .line 333
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    .line 334
    const-class v0, Lorg/h2/jdbcx/JdbcDataSourceFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v1, Ljavax/naming/Reference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ljavax/naming/Reference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "url"

    iget-object v3, p0, Lorg/h2/jdbcx/JdbcDataSource;->url:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 337
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "user"

    iget-object v3, p0, Lorg/h2/jdbcx/JdbcDataSource;->userName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 338
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "password"

    iget-object v3, p0, Lorg/h2/jdbcx/JdbcDataSource;->passwordChars:[C

    invoke-static {v3}, Lorg/h2/jdbcx/JdbcDataSource;->convertToString([C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 339
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "loginTimeout"

    iget v3, p0, Lorg/h2/jdbcx/JdbcDataSource;->loginTimeout:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 340
    new-instance v0, Ljavax/naming/StringRefAddr;

    const-string v2, "description"

    iget-object v3, p0, Lorg/h2/jdbcx/JdbcDataSource;->description:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    return-object v1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    const-string v0, "getURL"

    .line 208
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "getUrl"

    .line 230
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    const-string v0, "getUser"

    .line 292
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcDataSource;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getXAConnection()Ljavax/sql/XAConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "getXAConnection"

    .line 351
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 352
    invoke-static {v0}, Lorg/h2/jdbcx/JdbcDataSource;->getNextId(I)I

    move-result v0

    .line 353
    new-instance v1, Lorg/h2/jdbcx/JdbcXAConnection;

    iget-object v2, p0, Lorg/h2/jdbcx/JdbcDataSource;->factory:Lorg/h2/jdbcx/JdbcDataSourceFactory;

    iget-object v3, p0, Lorg/h2/jdbcx/JdbcDataSource;->userName:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/jdbcx/JdbcDataSource;->passwordChars:[C

    invoke-static {v4}, Lorg/h2/util/StringUtils;->cloneCharArray([C)[C

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/h2/jdbcx/JdbcDataSource;->getJdbcConnection(Ljava/lang/String;[C)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/jdbcx/JdbcXAConnection;-><init>(Lorg/h2/jdbcx/JdbcDataSourceFactory;ILorg/h2/jdbc/JdbcConnection;)V

    return-object v1
.end method

.method public getXAConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/XAConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcDataSource;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getXAConnection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbcx/JdbcDataSource;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \"\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0xd

    .line 371
    invoke-static {v0}, Lorg/h2/jdbcx/JdbcDataSource;->getNextId(I)I

    move-result v0

    .line 372
    new-instance v1, Lorg/h2/jdbcx/JdbcXAConnection;

    iget-object v2, p0, Lorg/h2/jdbcx/JdbcDataSource;->factory:Lorg/h2/jdbcx/JdbcDataSourceFactory;

    invoke-static {p2}, Lorg/h2/jdbcx/JdbcDataSource;->convertToCharArray(Ljava/lang/String;)[C

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbcx/JdbcDataSource;->getJdbcConnection(Ljava/lang/String;[C)Lorg/h2/jdbc/JdbcConnection;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, Lorg/h2/jdbcx/JdbcXAConnection;-><init>(Lorg/h2/jdbcx/JdbcDataSourceFactory;ILorg/h2/jdbc/JdbcConnection;)V

    return-object v1
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "isWrapperFor"

    .line 422
    invoke-virtual {p0, p1}, Lorg/h2/jdbcx/JdbcDataSource;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "getDescription"

    .line 322
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iput-object p1, p0, Lorg/h2/jdbcx/JdbcDataSource;->description:Ljava/lang/String;

    return-void
.end method

.method public setLogWriter(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "setLogWriter(out)"

    .line 149
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Lorg/h2/jdbcx/JdbcDataSource;->logWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method public setLoginTimeout(I)V
    .locals 3

    const-string v0, "setLoginTimeout"

    int-to-long v1, p1

    .line 126
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;J)V

    .line 127
    iput p1, p0, Lorg/h2/jdbcx/JdbcDataSource;->loginTimeout:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "setPassword"

    const-string v1, ""

    .line 252
    invoke-virtual {p0, v0, v1}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {p1}, Lorg/h2/jdbcx/JdbcDataSource;->convertToCharArray(Ljava/lang/String;)[C

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbcx/JdbcDataSource;->passwordChars:[C

    return-void
.end method

.method public setPasswordChars([C)V
    .locals 1

    .line 262
    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcDataSource;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setPasswordChars(new char[0]);"

    .line 263
    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->debugCode(Ljava/lang/String;)V

    .line 265
    :cond_0
    iput-object p1, p0, Lorg/h2/jdbcx/JdbcDataSource;->passwordChars:[C

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setURL"

    .line 218
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iput-object p1, p0, Lorg/h2/jdbcx/JdbcDataSource;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setUrl"

    .line 242
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lorg/h2/jdbcx/JdbcDataSource;->url:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setUser"

    .line 302
    invoke-virtual {p0, v0, p1}, Lorg/h2/jdbcx/JdbcDataSource;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iput-object p1, p0, Lorg/h2/jdbcx/JdbcDataSource;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/jdbcx/JdbcDataSource;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcDataSource;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbcx/JdbcDataSource;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "unwrap"

    .line 412
    invoke-virtual {p0, p1}, Lorg/h2/jdbcx/JdbcDataSource;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
