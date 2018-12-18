.class public Lorg/h2/jmx/DatabaseInfo;
.super Ljava/lang/Object;
.source "DatabaseInfo.java"

# interfaces
.implements Lorg/h2/jmx/DatabaseInfoMBean;


# static fields
.field private static final MBEANS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/management/ObjectName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final database:Lorg/h2/engine/Database;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/jmx/DatabaseInfo;->MBEANS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/h2/engine/Database;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \'database\' must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getObjectName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/JMException;
        }
    .end annotation

    const/16 v0, 0x5f

    const/16 v1, 0x3a

    .line 56
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "name"

    .line 59
    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "path"

    .line 60
    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance p0, Ljavax/management/ObjectName;

    const-string p1, "org.h2"

    invoke-direct {p0, p1, v0}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;Ljava/util/Hashtable;)V

    return-object p0
.end method

.method public static registerMBean(Lorg/h2/engine/ConnectionInfo;Lorg/h2/engine/Database;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/JMException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/h2/engine/ConnectionInfo;->getName()Ljava/lang/String;

    move-result-object p0

    .line 73
    sget-object v0, Lorg/h2/jmx/DatabaseInfo;->MBEANS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1, p0}, Lorg/h2/jmx/DatabaseInfo;->getObjectName(Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    .line 77
    sget-object v2, Lorg/h2/jmx/DatabaseInfo;->MBEANS:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance p0, Lorg/h2/jmx/DatabaseInfo;

    invoke-direct {p0, p1}, Lorg/h2/jmx/DatabaseInfo;-><init>(Lorg/h2/engine/Database;)V

    .line 79
    new-instance p1, Lorg/h2/jmx/DocumentedMBean;

    const-class v2, Lorg/h2/jmx/DatabaseInfoMBean;

    invoke-direct {p1, p0, v2}, Lorg/h2/jmx/DocumentedMBean;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 80
    invoke-interface {v0, p1, v1}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    :cond_0
    return-void
.end method

.method public static unregisterMBean(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    sget-object v0, Lorg/h2/jmx/DatabaseInfo;->MBEANS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/management/ObjectName;

    if-eqz p0, :cond_0

    .line 92
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    .line 93
    invoke-interface {v0, p0}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCacheSize()I
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getCache()Lorg/h2/util/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/util/Cache;->getMemory()I

    move-result v0

    return v0

    .line 220
    :cond_1
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getCacheSizeUsed()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public getCacheSizeMax()I
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getCache()Lorg/h2/util/Cache;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/util/Cache;->getMaxMemory()I

    move-result v0

    return v0

    .line 201
    :cond_1
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getCacheSize()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public getFileReadCount()J
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getReadCount()J

    move-result-wide v0

    return-wide v0

    .line 177
    :cond_1
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageCount()I

    move-result v1

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    mul-int v1, v1, v0

    div-int/lit16 v1, v1, 0x400

    int-to-long v0, v1

    return-wide v0

    .line 189
    :cond_1
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileWriteCount()J
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getWriteCount()J

    move-result-wide v0

    return-wide v0

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileWriteCountTotal()J
    .locals 3

    .line 144
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getWriteCountTotal()J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public getLogMode()I
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLogMode()I

    move-result v0

    return v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Mode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceLevel()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/message/TraceSystem;->getLevelFile()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 225
    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExclusive()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getExclusiveSession()Lorg/h2/engine/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiThreaded()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v0

    return v0
.end method

.method public isMvcc()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public listSessions()Ljava/lang/String;
    .locals 12

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    iget-object v1, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    const-string v6, "session id: "

    .line 243
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " user: "

    .line 244
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "connected: "

    .line 247
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/sql/Timestamp;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getSessionStart()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v5}, Lorg/h2/engine/Session;->getCurrentCommand()Lorg/h2/command/Command;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v7, "statement: "

    .line 252
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getCurrentCommand()Lorg/h2/command/Command;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v5}, Lorg/h2/engine/Session;->getCurrentCommandStart()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_0

    const-string v9, "started: "

    .line 257
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/sql/Timestamp;

    invoke-direct {v9, v7, v8}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    :cond_0
    invoke-virtual {v5}, Lorg/h2/engine/Session;->getLocks()[Lorg/h2/table/Table;

    move-result-object v7

    .line 263
    array-length v7, v7

    if-lez v7, :cond_2

    .line 264
    invoke-virtual {v5}, Lorg/h2/engine/Session;->getLocks()[Lorg/h2/table/Table;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 265
    invoke-virtual {v10, v5}, Lorg/h2/table/Table;->isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "write lock on "

    .line 266
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v11, "read lock on "

    .line 268
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :goto_2
    invoke-virtual {v10}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v11

    invoke-virtual {v11}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x2e

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 277
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listSettings()Ljava/lang/String;
    .locals 4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/DbSettings;->getSettings()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 234
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCacheSizeMax(I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->setCacheSize(I)V

    :cond_0
    return-void
.end method

.method public setLogMode(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->setLogMode(I)V

    return-void
.end method

.method public setTraceLevel(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/h2/jmx/DatabaseInfo;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/message/TraceSystem;->setLevelFile(I)V

    return-void
.end method
