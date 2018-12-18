.class public Lorg/h2/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lorg/h2/engine/SessionFactory;


# static fields
.field private static final DATABASES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Database;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lorg/h2/engine/Engine;


# instance fields
.field private jmx:Z

.field private volatile wrongPasswordDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/h2/engine/Engine;

    invoke-direct {v0}, Lorg/h2/engine/Engine;-><init>()V

    sput-object v0, Lorg/h2/engine/Engine;->INSTANCE:Lorg/h2/engine/Engine;

    .line 30
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/Engine;->DATABASES:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget v0, Lorg/h2/engine/SysProperties;->DELAY_WRONG_PASSWORD_MIN:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    .line 38
    sget-boolean v0, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lorg/h2/util/ThreadDeadlockDetector;->init()V

    :cond_0
    return-void
.end method

.method private static checkClustering(Lorg/h2/engine/ConnectionInfo;Lorg/h2/engine/Database;)V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0, v0, v1}, Lorg/h2/engine/ConnectionInfo;->getProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'\'"

    .line 240
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCluster()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'\'"

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TRUE"

    .line 247
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    invoke-static {p0, p1}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "\'\'"

    .line 249
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x15fed

    .line 250
    invoke-static {p0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    const p0, 0x15fee

    .line 253
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_2
    return-void
.end method

.method private createSessionAndValidate(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;
    .locals 3

    :try_start_0
    const-string v0, "FILE_LOCK"

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lorg/h2/store/FileLock;->getFileLockMethod(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v0, "OPEN_NEW"

    const-string v1, "TRUE"

    .line 147
    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/ConnectionInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :try_start_1
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->clone()Lorg/h2/engine/ConnectionInfo;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    :try_start_2
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 154
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/engine/Engine;->openSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;

    move-result-object p1

    const/4 v0, 0x1

    .line 155
    invoke-direct {p0, v0}, Lorg/h2/engine/Engine;->validateUserAndPassword(Z)V

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p1, v1}, Lorg/h2/engine/Session;->setConnectionInfo(Lorg/h2/engine/ConnectionInfo;)V
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-object p1

    :catch_1
    move-exception p1

    .line 161
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x6d60

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, v0}, Lorg/h2/engine/Engine;->validateUserAndPassword(Z)V

    .line 164
    :cond_2
    throw p1
.end method

.method public static getInstance()Lorg/h2/engine/Engine;
    .locals 1

    .line 44
    sget-object v0, Lorg/h2/engine/Engine;->INSTANCE:Lorg/h2/engine/Engine;

    return-object v0
.end method

.method private declared-synchronized openSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;
    .locals 14

    monitor-enter p0

    :try_start_0
    const-string v0, "IFEXISTS"

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p1, v0, v1}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "IGNORE_UNKNOWN_SETTINGS"

    .line 170
    invoke-virtual {p1, v2, v1}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "CIPHER"

    const/4 v4, 0x0

    .line 172
    invoke-virtual {p1, v3, v4}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "INIT"

    .line 173
    invoke-virtual {p1, v5, v4}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 176
    :goto_0
    invoke-direct {p0, p1, v0, v3}, Lorg/h2/engine/Engine;->openSession(Lorg/h2/engine/ConnectionInfo;ZLjava/lang/String;)Lorg/h2/engine/Session;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 193
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    .line 194
    :try_start_1
    invoke-virtual {v6, v0}, Lorg/h2/engine/Session;->setAllowLiterals(Z)V

    .line 195
    invoke-static {}, Lorg/h2/engine/DbSettings;->getDefaultSettings()Lorg/h2/engine/DbSettings;

    move-result-object v3

    .line 196
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getKeys()[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    const v9, 0x7fffffff

    if-ge v8, v7, :cond_3

    aget-object v10, v5, v8

    .line 197
    invoke-virtual {v3, v10}, Lorg/h2/engine/DbSettings;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_3

    .line 201
    :cond_0
    invoke-virtual {p1, v10}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SET "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v9}, Lorg/h2/engine/Session;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v9

    .line 206
    invoke-interface {v9}, Lorg/h2/command/CommandInterface;->executeUpdate()I
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v9

    .line 208
    :try_start_3
    invoke-virtual {v9}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v10

    const v11, 0x15fb8

    if-ne v10, v11, :cond_1

    .line 209
    invoke-virtual {v6}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "admin rights required; user: \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 212
    :cond_1
    invoke-virtual {v6}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v9, v11}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_2

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {v6}, Lorg/h2/engine/Session;->close()V

    .line 216
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    if-eqz v4, :cond_5

    .line 222
    :try_start_4
    invoke-virtual {v6, v4, v9}, Lorg/h2/engine/Session;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object p1

    .line 224
    invoke-interface {p1}, Lorg/h2/command/CommandInterface;->executeUpdate()I
    :try_end_4
    .catch Lorg/h2/message/DbException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_1
    move-exception p1

    if-eqz v2, :cond_4

    goto :goto_4

    .line 227
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Lorg/h2/engine/Session;->close()V

    .line 228
    throw p1

    .line 232
    :cond_5
    :goto_4
    invoke-virtual {v6, v1}, Lorg/h2/engine/Session;->setAllowLiterals(Z)V

    .line 233
    invoke-virtual {v6, v0}, Lorg/h2/engine/Session;->commit(Z)V

    .line 234
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 235
    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception p1

    .line 234
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_6
    const v6, 0xea60

    if-gt v5, v6, :cond_7

    const-wide/16 v6, 0x1

    .line 188
    :try_start_8
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    const p1, 0x15fa4

    :try_start_9
    const-string v0, "Waited for database closing longer than 1 minute"

    .line 184
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p1

    .line 168
    monitor-exit p0

    throw p1
.end method

.method private openSession(Lorg/h2/engine/ConnectionInfo;ZLjava/lang/String;)Lorg/h2/engine/Session;
    .locals 7

    .line 49
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO_UPGRADE"

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1, v1, v2}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    const-string v1, "OPEN_NEW"

    .line 52
    invoke-virtual {p1, v1, v2}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 53
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isUnnamedInMemory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    sget-object v1, Lorg/h2/engine/Engine;->DATABASES:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/Database;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v3

    :goto_1
    const/4 v4, 0x1

    if-nez v1, :cond_6

    if-eqz p2, :cond_3

    .line 61
    invoke-static {v0}, Lorg/h2/engine/Database;->exists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const p1, 0x15f9d

    .line 62
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 64
    :cond_3
    :goto_2
    new-instance v1, Lorg/h2/engine/Database;

    invoke-direct {v1, p1, p3}, Lorg/h2/engine/Database;-><init>(Lorg/h2/engine/ConnectionInfo;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Lorg/h2/engine/Database;->getAllUsers()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_4

    .line 69
    new-instance p2, Lorg/h2/engine/User;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result v5

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p2, v1, v5, v6, v2}, Lorg/h2/engine/User;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Z)V

    .line 71
    invoke-virtual {p2, v4}, Lorg/h2/engine/User;->setAdmin(Z)V

    .line 72
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserPasswordHash()[B

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/h2/engine/User;->setUserPasswordHash([B)V

    .line 73
    invoke-virtual {v1, p2}, Lorg/h2/engine/Database;->setMasterUser(Lorg/h2/engine/User;)V

    goto :goto_3

    :cond_4
    move-object p2, v3

    .line 75
    :goto_3
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isUnnamedInMemory()Z

    move-result v5

    if-nez v5, :cond_5

    .line 76
    sget-object v5, Lorg/h2/engine/Engine;->DATABASES:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v0, p2

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    move-object v0, v3

    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_7

    .line 83
    invoke-virtual {v1}, Lorg/h2/engine/Database;->opened()V

    .line 85
    :cond_7
    invoke-virtual {v1}, Lorg/h2/engine/Database;->isClosing()Z

    move-result v5

    if-eqz v5, :cond_8

    return-object v3

    :cond_8
    if-nez v0, :cond_c

    .line 89
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getFilePasswordHash()[B

    move-result-object v5

    invoke-virtual {v1, p3, v5}, Lorg/h2/engine/Database;->validateFilePasswordHash(Ljava/lang/String;[B)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 90
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lorg/h2/engine/Database;->findUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 92
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserPasswordHash()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/h2/engine/User;->validateUserPasswordHash([B)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v3

    goto :goto_5

    :cond_9
    move-object v0, p3

    :cond_a
    :goto_5
    if-eqz p2, :cond_c

    if-eqz v0, :cond_b

    .line 97
    invoke-virtual {v0}, Lorg/h2/engine/User;->isAdmin()Z

    move-result p2

    if-nez p2, :cond_c

    .line 100
    :cond_b
    invoke-virtual {v1, v3}, Lorg/h2/engine/Database;->setEventListener(Lorg/h2/api/DatabaseEventListener;)V

    :cond_c
    const/4 p2, 0x2

    if-eqz v0, :cond_f

    .line 110
    invoke-static {p1, v1}, Lorg/h2/engine/Engine;->checkClustering(Lorg/h2/engine/ConnectionInfo;Lorg/h2/engine/Database;)V

    .line 111
    invoke-virtual {v1, v0}, Lorg/h2/engine/Database;->createSession(Lorg/h2/engine/User;)Lorg/h2/engine/Session;

    move-result-object p3

    if-nez p3, :cond_d

    return-object v3

    :cond_d
    const-string v0, "JMX"

    .line 116
    invoke-virtual {p1, v0, v2}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_0
    const-string v0, "org.h2.jmx.DatabaseInfo.registerMBean"

    .line 118
    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    aput-object v1, p2, v4

    invoke-static {v0, p2}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    iput-boolean v4, p0, Lorg/h2/engine/Engine;->jmx:Z

    goto :goto_6

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {v1, p3}, Lorg/h2/engine/Database;->removeSession(Lorg/h2/engine/Session;)V

    const p2, 0xc3b4

    .line 122
    new-array p3, v4, [Ljava/lang/String;

    const-string v0, "JMX"

    aput-object v0, p3, v2

    invoke-static {p2, p1, p3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_e
    :goto_6
    return-object p3

    :cond_f
    const/16 p3, 0x6d60

    .line 104
    invoke-static {p3}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p3

    .line 105
    invoke-virtual {v1, p2}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong user or password; user: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1, v3}, Lorg/h2/engine/Database;->removeSession(Lorg/h2/engine/Session;)V

    .line 108
    throw p3
.end method

.method private validateUserAndPassword(Z)V
    .locals 11

    .line 296
    sget v0, Lorg/h2/engine/SysProperties;->DELAY_WRONG_PASSWORD_MIN:I

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    .line 298
    iget-wide v3, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    int-to-long v5, v0

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    cmp-long p1, v3, v1

    if-lez p1, :cond_0

    .line 302
    sget-object p1, Lorg/h2/engine/Engine;->INSTANCE:Lorg/h2/engine/Engine;

    monitor-enter p1

    long-to-int v0, v3

    .line 305
    :try_start_0
    invoke-static {v0}, Lorg/h2/util/MathUtils;->secureRandomInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    .line 307
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :catch_0
    :try_start_2
    iput-wide v5, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    .line 312
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    sget-object p1, Lorg/h2/engine/Engine;->INSTANCE:Lorg/h2/engine/Engine;

    monitor-enter p1

    .line 318
    :try_start_3
    iget-wide v3, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    .line 319
    sget v5, Lorg/h2/engine/SysProperties;->DELAY_WRONG_PASSWORD_MAX:I

    if-gtz v5, :cond_2

    const v5, 0x7fffffff

    .line 323
    :cond_2
    iget-wide v6, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    iget-wide v8, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    const/4 v10, 0x0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    .line 324
    iget-wide v6, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    iget-wide v5, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    cmp-long v7, v5, v1

    if-gez v7, :cond_4

    .line 325
    :cond_3
    iput-wide v8, p0, Lorg/h2/engine/Engine;->wrongPasswordDelay:J

    :cond_4
    if-lez v0, :cond_5

    .line 329
    invoke-static {}, Lorg/h2/util/MathUtils;->secureRandomLong()J

    move-result-wide v0

    const-wide/16 v5, 0x64

    rem-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    add-long/2addr v3, v0

    .line 331
    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    :cond_5
    const/16 v0, 0x6d60

    .line 336
    :try_start_5
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catchall_1
    move-exception v0

    .line 337
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method


# virtual methods
.method close(Ljava/lang/String;)V
    .locals 4

    .line 268
    iget-boolean v0, p0, Lorg/h2/engine/Engine;->jmx:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "org.h2.jmx.DatabaseInfo.unregisterMBean"

    .line 270
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const v2, 0xc3b4

    .line 272
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "JMX"

    aput-object v3, v1, v0

    invoke-static {v2, p1, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 275
    :cond_0
    :goto_0
    sget-object v0, Lorg/h2/engine/Engine;->DATABASES:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;
    .locals 1

    .line 137
    sget-object v0, Lorg/h2/engine/Engine;->INSTANCE:Lorg/h2/engine/Engine;

    invoke-direct {v0, p1}, Lorg/h2/engine/Engine;->createSessionAndValidate(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/SessionInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lorg/h2/engine/Engine;->createSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;

    move-result-object p1

    return-object p1
.end method
