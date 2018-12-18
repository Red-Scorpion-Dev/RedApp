.class public Lorg/h2/store/RecoverTester;
.super Ljava/lang/Object;
.source "RecoverTester.java"

# interfaces
.implements Lorg/h2/store/fs/Recorder;


# static fields
.field private static instance:Lorg/h2/store/RecoverTester;


# instance fields
.field private final knownErrors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxFileSize:J

.field private testDatabase:Ljava/lang/String;

.field private testEvery:I

.field private volatile testing:Z

.field private verifyCount:I

.field private writeCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "memFS:reopen"

    .line 38
    iput-object v0, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    const-string v0, "h2.recoverTestOffset"

    const/4 v1, 0x0

    .line 39
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    const-string v0, "h2.recoverTest"

    const/16 v1, 0x40

    .line 40
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/h2/store/RecoverTester;->testEvery:I

    const-string v0, "h2.recoverTestMaxFileSize"

    const v1, 0x7fffffff

    .line 41
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    iput-wide v0, p0, Lorg/h2/store/RecoverTester;->maxFileSize:J

    .line 44
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/RecoverTester;->knownErrors:Ljava/util/HashSet;

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/h2/store/RecoverTester;
    .locals 2

    const-class v0, Lorg/h2/store/RecoverTester;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lorg/h2/store/RecoverTester;->instance:Lorg/h2/store/RecoverTester;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lorg/h2/store/RecoverTester;

    invoke-direct {v1}, Lorg/h2/store/RecoverTester;-><init>()V

    sput-object v1, Lorg/h2/store/RecoverTester;->instance:Lorg/h2/store/RecoverTester;

    .line 64
    :cond_0
    sget-object v1, Lorg/h2/store/RecoverTester;->instance:Lorg/h2/store/RecoverTester;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lorg/h2/store/RecoverTester;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-static {}, Lorg/h2/store/RecoverTester;->getInstance()Lorg/h2/store/RecoverTester;

    move-result-object v1

    .line 54
    invoke-static {p0}, Lorg/h2/util/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lorg/h2/store/RecoverTester;->setTestEvery(I)V

    .line 57
    :cond_0
    invoke-static {v1}, Lorg/h2/store/fs/FilePathRec;->setRecorder(Lorg/h2/store/fs/Recorder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized testDatabase(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    monitor-enter p0

    .line 104
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+ write #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " verify #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/store/RecoverTester;->verifyCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x15fc1

    const/16 v1, 0x6d60

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 106
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".h2.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/h2/util/IOUtils;->copyFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".h2.db"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mv.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-static {v4}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".mv.db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/h2/util/IOUtils;->copyFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    iget v4, p0, Lorg/h2/store/RecoverTester;->verifyCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/h2/store/RecoverTester;->verifyCount:I

    .line 115
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const-string v5, "user"

    const-string v6, ""

    .line 116
    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "password"

    const-string v6, ""

    .line 117
    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    new-instance v5, Lorg/h2/engine/ConnectionInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jdbc:h2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";FILE_LOCK=NO;TRACE_LEVEL_FILE=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    .line 120
    new-instance v4, Lorg/h2/engine/Database;

    invoke-direct {v4, v5, v2}, Lorg/h2/engine/Database;-><init>(Lorg/h2/engine/ConnectionInfo;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v5

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "script to \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".sql\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    const-string v6, "shutdown immediately"

    .line 124
    invoke-virtual {v5, v6}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/command/Prepared;->update()I

    .line 125
    invoke-virtual {v4, v2}, Lorg/h2/engine/Database;->removeSession(Lorg/h2/engine/Session;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catch_0
    move-exception v4

    .line 140
    :try_start_2
    instance-of v5, v4, Ljava/sql/SQLException;

    if-eqz v5, :cond_1

    .line 141
    move-object v5, v4

    check-cast v5, Ljava/sql/SQLException;

    invoke-virtual {v5}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-ne v5, v1, :cond_2

    .line 144
    monitor-exit p0

    return-void

    :cond_2
    if-ne v5, v0, :cond_3

    .line 146
    monitor-exit p0

    return-void

    .line 148
    :cond_3
    :try_start_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :catch_1
    move-exception v4

    .line 129
    invoke-static {v4}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v5

    .line 130
    invoke-virtual {v5}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v5, v1, :cond_4

    .line 132
    monitor-exit p0

    return-void

    :cond_4
    if-ne v5, v0, :cond_5

    .line 134
    monitor-exit p0

    return-void

    .line 136
    :cond_5
    :try_start_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Lorg/h2/message/DbException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 150
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin ------------------------------ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v4, 0x2f

    .line 152
    :try_start_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/h2/tools/Recover;->execute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    :catch_2
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 158
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".h2.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/h2/util/IOUtils;->copyFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 161
    new-instance v4, Lorg/h2/engine/ConnectionInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jdbc:h2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/h2/store/RecoverTester;->testDatabase:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";FILE_LOCK=NO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    .line 163
    new-instance p1, Lorg/h2/engine/Database;

    invoke-direct {p1, v4, v2}, Lorg/h2/engine/Database;-><init>(Lorg/h2/engine/ConnectionInfo;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1, v2}, Lorg/h2/engine/Database;->removeSession(Lorg/h2/engine/Session;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    :catch_3
    move-exception p1

    .line 168
    :try_start_8
    instance-of v2, p1, Lorg/h2/message/DbException;

    if-eqz v2, :cond_6

    .line 169
    check-cast p1, Lorg/h2/message/DbException;

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    .line 170
    move-object v2, p1

    check-cast v2, Ljava/sql/SQLException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-ne v2, v1, :cond_7

    .line 173
    monitor-exit p0

    return-void

    :cond_7
    if-ne v2, v0, :cond_8

    .line 175
    monitor-exit p0

    return-void

    .line 177
    :cond_8
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    :goto_3
    const/16 v4, 0xa

    if-ge v3, v4, :cond_9

    .line 179
    array-length v5, v1

    if-ge v3, v5, :cond_9

    .line 180
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 182
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lorg/h2/store/RecoverTester;->knownErrors:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 186
    iget-object p1, p0, Lorg/h2/store/RecoverTester;->knownErrors:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 188
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " code: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 191
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public log(ILjava/lang/String;[BJ)V
    .locals 3

    const/16 p3, 0x8

    if-eq p1, p3, :cond_0

    const/4 p3, 0x7

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const-string p1, ".h2.db"

    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ".mv.db"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 76
    :cond_1
    iget p1, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    const/4 p3, 0x1

    add-int/2addr p1, p3

    iput p1, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    .line 77
    iget p1, p0, Lorg/h2/store/RecoverTester;->writeCount:I

    iget p4, p0, Lorg/h2/store/RecoverTester;->testEvery:I

    rem-int/2addr p1, p4

    if-eqz p1, :cond_2

    return-void

    .line 80
    :cond_2
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide p4

    iget-wide v0, p0, Lorg/h2/store/RecoverTester;->maxFileSize:J

    cmp-long p1, p4, v0

    if-lez p1, :cond_3

    return-void

    .line 84
    :cond_3
    iget-boolean p1, p0, Lorg/h2/store/RecoverTester;->testing:Z

    if-eqz p1, :cond_4

    return-void

    .line 88
    :cond_4
    iput-boolean p3, p0, Lorg/h2/store/RecoverTester;->testing:Z

    const/4 p1, 0x0

    const/4 p4, 0x0

    .line 91
    :try_start_0
    new-instance p5, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p5, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-direct {p0, p2, p5}, Lorg/h2/store/RecoverTester;->testDatabase(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    invoke-static {p5}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Writer;)V

    .line 99
    iput-boolean p1, p0, Lorg/h2/store/RecoverTester;->testing:Z

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object p5, p4

    .line 96
    :goto_0
    :try_start_2
    invoke-static {p2, p4}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    move-object p4, p5

    .line 98
    :goto_1
    invoke-static {p4}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Writer;)V

    .line 99
    iput-boolean p1, p0, Lorg/h2/store/RecoverTester;->testing:Z

    throw p2
.end method

.method public setTestEvery(I)V
    .locals 0

    .line 194
    iput p1, p0, Lorg/h2/store/RecoverTester;->testEvery:I

    return-void
.end method
