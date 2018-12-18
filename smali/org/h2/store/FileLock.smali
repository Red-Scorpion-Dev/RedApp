.class public Lorg/h2/store/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FILE:Ljava/lang/String; = "file"

.field public static final LOCK_FILE:I = 0x1

.field public static final LOCK_FS:I = 0x4

.field public static final LOCK_NO:I = 0x0

.field public static final LOCK_SERIALIZED:I = 0x3

.field public static final LOCK_SOCKET:I = 0x2

.field private static final MAGIC:Ljava/lang/String; = "FileLock"

.field private static final RANDOM_BYTES:I = 0x10

.field private static final SERIALIZED:Ljava/lang/String; = "serialized"

.field private static final SLEEP_GAP:I = 0x19

.field private static final SOCKET:Ljava/lang/String; = "socket"

.field private static final TIME_GRANULARITY:I = 0x7d0


# instance fields
.field private volatile fileName:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private lastWrite:J

.field private volatile locked:Z

.field private method:Ljava/lang/String;

.field private properties:Ljava/util/Properties;

.field private volatile serverSocket:Ljava/net/ServerSocket;

.field private final sleep:I

.field private final trace:Lorg/h2/message/Trace;

.field private uniqueId:Ljava/lang/String;

.field private watchdog:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/h2/message/TraceSystem;Ljava/lang/String;I)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 116
    invoke-virtual {p1, v0}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    .line 118
    iput-object p2, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    .line 119
    iput p3, p0, Lorg/h2/store/FileLock;->sleep:I

    return-void
.end method

.method private checkServer()V
    .locals 7

    .line 230
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "server"

    .line 231
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "id"

    .line 236
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2384

    const/4 v3, 0x0

    .line 238
    :try_start_0
    invoke-static {v1, v2, v3}, Lorg/h2/util/NetUtils;->createSocket(Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    .line 240
    new-instance v4, Lorg/h2/value/Transfer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/h2/value/Transfer;-><init>(Lorg/h2/engine/SessionInterface;)V

    .line 241
    invoke-virtual {v4, v2}, Lorg/h2/value/Transfer;->setSocket(Ljava/net/Socket;)V

    .line 242
    invoke-virtual {v4}, Lorg/h2/value/Transfer;->init()V

    const/4 v6, 0x6

    .line 243
    invoke-virtual {v4, v6}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    const/16 v6, 0xf

    .line 244
    invoke-virtual {v4, v6}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 245
    invoke-virtual {v4, v5}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    .line 246
    invoke-virtual {v4, v5}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    .line 247
    invoke-virtual {v4, v0}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    const/16 v5, 0xe

    .line 248
    invoke-virtual {v4, v5}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    .line 249
    invoke-virtual {v4}, Lorg/h2/value/Transfer;->flush()V

    .line 250
    invoke-virtual {v4}, Lorg/h2/value/Transfer;->readInt()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    .line 254
    :cond_1
    invoke-virtual {v4}, Lorg/h2/value/Transfer;->close()V

    .line 255
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    return-void

    :cond_2
    const v2, 0x15fa4

    const-string v3, "Server is running"

    .line 260
    invoke-static {v2, v3}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v2

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catch_0
    return-void
.end method

.method private getExceptionAlreadyInUse(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 3

    const v0, 0x15fa4

    .line 463
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    .line 465
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 467
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "server"

    .line 468
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-virtual {p1, v0}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :catch_0
    :cond_0
    return-object p1
.end method

.method private static getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;
    .locals 2

    const/4 v0, 0x1

    .line 458
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x1f40

    invoke-static {p0, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static getFileLockMethod(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_5

    const-string v0, "FILE"

    .line 488
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NO"

    .line 490
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v0, "SOCKET"

    .line 492
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "SERIALIZED"

    .line 494
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-string v0, "FS"

    .line 496
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const v0, 0x15fcc

    .line 499
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private lockFile()V
    .locals 4

    const-string v0, "file"

    .line 341
    iput-object v0, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    .line 342
    new-instance v0, Lorg/h2/util/SortedProperties;

    invoke-direct {v0}, Lorg/h2/util/SortedProperties;-><init>()V

    iput-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    .line 343
    iget-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    const-string v1, "method"

    iget-object v2, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 344
    invoke-direct {p0}, Lorg/h2/store/FileLock;->setUniqueId()V

    .line 345
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 347
    invoke-direct {p0}, Lorg/h2/store/FileLock;->waitUntilOld()V

    .line 348
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    const-string v2, "method"

    const-string v3, "file"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    .line 353
    iget v0, p0, Lorg/h2/store/FileLock;->sleep:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/h2/store/FileLock;->sleep(I)V

    .line 354
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Another process was faster"

    .line 359
    invoke-static {v0, v1}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locked by another process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/store/FileLock;->getExceptionAlreadyInUse(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 350
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported lock method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 362
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    const/16 v0, 0x19

    .line 363
    invoke-static {v0}, Lorg/h2/store/FileLock;->sleep(I)V

    .line 364
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z

    .line 369
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "H2 File Lock Watchdog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    .line 370
    iget-object v1, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    invoke-static {v1}, Lorg/h2/Driver;->setThreadContextClassLoader(Ljava/lang/Thread;)V

    .line 371
    iget-object v1, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 372
    iget-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 373
    iget-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 365
    :cond_4
    iput-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    const-string v0, "Concurrent update"

    .line 366
    invoke-static {v0, v1}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private lockSerialized()V
    .locals 3

    const-string v0, "serialized"

    .line 321
    iput-object v0, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Lorg/h2/util/SortedProperties;

    invoke-direct {v0}, Lorg/h2/util/SortedProperties;-><init>()V

    iput-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    .line 325
    iget-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    const-string v1, "method"

    iget-object v2, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 326
    invoke-direct {p0}, Lorg/h2/store/FileLock;->setUniqueId()V

    .line 327
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    return-void

    .line 331
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private lockSocket()V
    .locals 12

    const-string v0, "socket"

    .line 377
    iput-object v0, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    .line 378
    new-instance v0, Lorg/h2/util/SortedProperties;

    invoke-direct {v0}, Lorg/h2/util/SortedProperties;-><init>()V

    iput-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    .line 379
    iget-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    const-string v1, "method"

    iget-object v2, p0, Lorg/h2/store/FileLock;->method:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 380
    invoke-direct {p0}, Lorg/h2/store/FileLock;->setUniqueId()V

    .line 383
    invoke-static {}, Lorg/h2/util/NetUtils;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileLock;->ipAddress:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 386
    invoke-direct {p0}, Lorg/h2/store/FileLock;->waitUntilOld()V

    .line 387
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    move-result-wide v3

    .line 388
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v0

    const-string v5, "method"

    const-string v6, "socket"

    .line 389
    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    .line 390
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 391
    invoke-direct {p0}, Lorg/h2/store/FileLock;->lockFile()V

    return-void

    :cond_0
    const-string v6, "socket"

    .line 393
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v5, "ipAddress"

    .line 396
    iget-object v6, p0, Lorg/h2/store/FileLock;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 397
    iget-object v6, p0, Lorg/h2/store/FileLock;->ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "port"

    const-string v7, "0"

    .line 400
    invoke-virtual {v0, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 404
    :try_start_0
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v5, 0x0

    :goto_0
    const/4 v8, 0x3

    if-lt v5, v8, :cond_3

    .line 421
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 424
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "Another process was faster"

    .line 426
    invoke-static {v0, v2}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    const-string v0, "Concurrent update"

    .line 422
    invoke-static {v0, v2}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 410
    :cond_3
    :try_start_1
    new-instance v8, Ljava/net/Socket;

    invoke-direct {v8, v7, v6}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 411
    invoke-virtual {v8}, Ljava/net/Socket;->close()V

    const-string v8, "Locked by another process"

    .line 412
    invoke-direct {p0, v8}, Lorg/h2/store/FileLock;->getExceptionAlreadyInUse(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v8

    throw v8
    :try_end_1
    .catch Ljava/net/BindException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const-string v0, "IOException"

    .line 418
    invoke-static {v0, v2}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v8

    .line 416
    iget-object v9, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "socket not connected to port "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_2
    const-string v0, "Bind Exception"

    .line 414
    invoke-static {v0, v2}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catch_3
    move-exception v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 398
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locked by another computer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/store/FileLock;->getExceptionAlreadyInUse(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 394
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported lock method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 431
    :cond_6
    :goto_1
    :try_start_2
    invoke-static {v1, v1}, Lorg/h2/util/NetUtils;->createServerSocket(IZ)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    .line 432
    iget-object v0, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    .line 433
    iget-object v1, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    const-string v3, "ipAddress"

    iget-object v4, p0, Lorg/h2/store/FileLock;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 434
    iget-object v1, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    const-string v3, "port"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 441
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    const/4 v0, 0x1

    .line 442
    iput-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z

    .line 443
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "H2 File Lock Watchdog (Socket) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    .line 445
    iget-object v1, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 446
    iget-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_4
    move-exception v0

    .line 436
    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v3, "lock"

    invoke-virtual {v1, v0, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 437
    iput-object v2, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    .line 438
    invoke-direct {p0}, Lorg/h2/store/FileLock;->lockFile()V

    return-void
.end method

.method private setUniqueId()V
    .locals 4

    const/16 v0, 0x10

    .line 314
    invoke-static {v0}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object v0

    .line 315
    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileLock;->uniqueId:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    const-string v1, "id"

    iget-object v2, p0, Lorg/h2/store/FileLock;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private static sleep(I)V
    .locals 2

    int-to-long v0, p0

    .line 451
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Sleep interrupted"

    .line 453
    invoke-static {v0, p0}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private waitUntilOld()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa0

    if-ge v0, v1, :cond_2

    .line 290
    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    move-result-wide v1

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, -0x7d0

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    const-wide/16 v0, 0x2

    .line 296
    :try_start_0
    iget v2, p0, Lorg/h2/store/FileLock;->sleep:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 298
    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v2, "sleep"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-wide/16 v1, 0x7d0

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    return-void

    :cond_1
    const-wide/16 v1, 0x19

    .line 305
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 307
    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v3, "sleep"

    invoke-virtual {v2, v1, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const-string v1, "Lock file recently modified"

    .line 310
    invoke-static {v1, v0}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/h2/store/FileLock;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public load()Ljava/util/Properties;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 275
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/SortedProperties;->loadProperties(Ljava/lang/String;)Lorg/h2/util/SortedProperties;

    move-result-object v0

    .line 276
    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v2}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load properties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized lock(I)V
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/FileLock;->checkServer()V

    .line 130
    iget-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z

    if-eqz v0, :cond_0

    const-string v0, "already locked"

    .line 131
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    invoke-direct {p0}, Lorg/h2/store/FileLock;->lockSerialized()V

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-direct {p0}, Lorg/h2/store/FileLock;->lockSocket()V

    goto :goto_0

    .line 135
    :pswitch_2
    invoke-direct {p0}, Lorg/h2/store/FileLock;->lockFile()V

    :goto_0
    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lorg/h2/store/FileLock;->locked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 128
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 5

    .line 511
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_2

    .line 514
    :try_start_1
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/store/FileLock;->lastWrite:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 516
    :cond_0
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    .line 518
    :cond_1
    iget v0, p0, Lorg/h2/store/FileLock;->sleep:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 526
    :try_start_2
    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v2, "watchdog"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v0, :cond_3

    .line 531
    :try_start_3
    iget-object v0, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v1, "watchdog accept"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 535
    :try_start_4
    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v2, "watchdog"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 539
    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v2, "watchdog"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 541
    :cond_3
    iget-object v0, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v1, "watchdog end"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public save()Ljava/util/Properties;
    .locals 3

    .line 213
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :try_start_1
    iget-object v1, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    const-string v2, "FileLock"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 219
    iget-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->lastModified(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/FileLock;->lastWrite:J

    .line 220
    iget-object v0, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    return-object v0

    :catchall_0
    move-exception v1

    .line 217
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not save properties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/h2/store/FileLock;->getExceptionFatal(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 200
    iget-object p2, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {p2, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public declared-synchronized unlock()V
    .locals 4

    monitor-enter p0

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 155
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 157
    :try_start_1
    iput-boolean v0, p0, Lorg/h2/store/FileLock;->locked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 159
    :try_start_2
    iget-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v2, "unlock"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 166
    :try_start_4
    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {p0}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/store/FileLock;->properties:Ljava/util/Properties;

    invoke-virtual {v1, v2}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 171
    :cond_2
    iget-object v1, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_3

    .line 172
    iget-object v1, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    :cond_3
    :try_start_5
    iput-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    .line 178
    :goto_1
    iput-object v0, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    .line 175
    :try_start_6
    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v3, "unlock"

    invoke-virtual {v2, v1, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 177
    :try_start_7
    iput-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    .line 181
    :goto_2
    :try_start_8
    iget-object v1, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    .line 182
    iget-object v1, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 187
    :cond_4
    :goto_3
    :try_start_9
    iput-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    .line 185
    :try_start_a
    iget-object v2, p0, Lorg/h2/store/FileLock;->trace:Lorg/h2/message/Trace;

    const-string v3, "unlock"

    invoke-virtual {v2, v1, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 189
    :goto_4
    monitor-exit p0

    return-void

    .line 187
    :goto_5
    :try_start_b
    iput-object v0, p0, Lorg/h2/store/FileLock;->watchdog:Ljava/lang/Thread;

    throw v1

    .line 177
    :goto_6
    iput-object v0, p0, Lorg/h2/store/FileLock;->fileName:Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lorg/h2/store/FileLock;->serverSocket:Ljava/net/ServerSocket;

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    .line 153
    monitor-exit p0

    throw v0
.end method
