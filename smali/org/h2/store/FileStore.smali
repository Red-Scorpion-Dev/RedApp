.class public Lorg/h2/store/FileStore;
.super Ljava/lang/Object;
.source "FileStore.java"


# static fields
.field private static final HEADER:Ljava/lang/String;

.field public static final HEADER_LENGTH:I = 0x30


# instance fields
.field private autoDeleteReference:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "*>;"
        }
    .end annotation
.end field

.field private checkedWriting:Z

.field private file:Ljava/nio/channels/FileChannel;

.field private fileLength:J

.field private filePos:J

.field private final handler:Lorg/h2/store/DataHandler;

.field private lock:Ljava/nio/channels/FileLock;

.field private final mode:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- H2 0.5/B --      "

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/store/FileStore;->HEADER:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    .line 66
    iput-object p1, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    .line 67
    iput-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    .line 69
    :try_start_0
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->canWrite(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "r"

    move-object p3, v0

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    .line 75
    :goto_0
    invoke-static {p2, p3}, Lorg/h2/store/fs/FileUtils;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/FileStore;->fileLength:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_1
    iput-object p3, p0, Lorg/h2/store/FileStore;->mode:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mode: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkPowerOff()V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->checkPowerOff()V

    :cond_0
    return-void
.end method

.method private checkWritingAllowed()V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->checkWritingAllowed()V

    :cond_0
    return-void
.end method

.method private closeFileSilently()V
    .locals 1

    .line 457
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 95
    invoke-static/range {v0 .. v5}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lorg/h2/store/FileStore;

    move-result-object p0

    return-object p0
.end method

.method public static open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lorg/h2/store/FileStore;
    .locals 6

    const/16 v5, 0x400

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 110
    invoke-static/range {v0 .. v5}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lorg/h2/store/FileStore;

    move-result-object p0

    return-object p0
.end method

.method public static open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lorg/h2/store/FileStore;
    .locals 8

    if-nez p3, :cond_0

    .line 129
    new-instance p3, Lorg/h2/store/FileStore;

    invoke-direct {p3, p0, p1, p2}, Lorg/h2/store/FileStore;-><init>(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    new-instance v7, Lorg/h2/security/SecureFileStore;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/security/SecureFileStore;-><init>(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    move-object p3, v7

    :goto_0
    return-object p3
.end method

.method private static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 475
    sget-boolean v0, Lorg/h2/engine/SysProperties;->TRACE_IO:Z

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileStore."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public autoDelete()V
    .locals 2

    .line 429
    iget-object v0, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/h2/util/TempFileDeleter;->addFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 212
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "close"

    .line 214
    iget-object v2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-static {v1, v2, v3}, Lorg/h2/store/FileStore;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iput-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 217
    :try_start_1
    iget-object v2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :goto_0
    iput-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    throw v1

    :cond_0
    :goto_1
    return-void
.end method

.method public closeAndDeleteSilently()V
    .locals 3

    .line 240
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lorg/h2/store/FileStore;->closeSilently()V

    .line 242
    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    iget-object v2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/TempFileDeleter;->deleteFile(Ljava/lang/ref/Reference;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public closeFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public closeSilently()V
    .locals 0

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/FileStore;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected generateSalt()[B
    .locals 2

    .line 143
    sget-object v0, Lorg/h2/store/FileStore;->HEADER:Ljava/lang/String;

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFilePointer()J
    .locals 5

    .line 400
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_0

    .line 402
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/store/FileStore;->filePos:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 403
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 406
    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 409
    :cond_0
    :goto_0
    iget-wide v0, p0, Lorg/h2/store/FileStore;->filePos:J

    return-wide v0
.end method

.method public init()V
    .locals 8

    .line 178
    sget-object v0, Lorg/h2/store/FileStore;->HEADER:Ljava/lang/String;

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const-wide/16 v5, 0x30

    cmp-long v7, v1, v5

    if-gez v7, :cond_0

    .line 181
    iput-boolean v4, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    .line 182
    invoke-virtual {p0, v0, v4, v3}, Lorg/h2/store/FileStore;->writeDirect([BII)V

    .line 183
    invoke-virtual {p0}, Lorg/h2/store/FileStore;->generateSalt()[B

    move-result-object v1

    .line 184
    invoke-virtual {p0, v1, v4, v3}, Lorg/h2/store/FileStore;->writeDirect([BII)V

    .line 185
    invoke-virtual {p0, v1}, Lorg/h2/store/FileStore;->initKey([B)V

    .line 187
    invoke-virtual {p0, v0, v4, v3}, Lorg/h2/store/FileStore;->write([BII)V

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 191
    invoke-virtual {p0, v1, v2}, Lorg/h2/store/FileStore;->seek(J)V

    .line 192
    new-array v1, v3, [B

    .line 193
    invoke-virtual {p0, v1, v4, v3}, Lorg/h2/store/FileStore;->readFullyDirect([BII)V

    .line 194
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    new-array v2, v3, [B

    .line 198
    invoke-virtual {p0, v2, v4, v3}, Lorg/h2/store/FileStore;->readFullyDirect([BII)V

    .line 199
    invoke-virtual {p0, v2}, Lorg/h2/store/FileStore;->initKey([B)V

    .line 201
    invoke-virtual {p0, v1, v4, v3}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 202
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const v0, 0x15fc1

    .line 203
    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    const v0, 0x15fc0

    .line 195
    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method protected initKey([B)V
    .locals 0

    return-void
.end method

.method public length()J
    .locals 9

    .line 372
    :try_start_0
    iget-wide v0, p0, Lorg/h2/store/FileStore;->fileLength:J

    .line 373
    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v2, :cond_0

    .line 374
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 375
    iget-wide v2, p0, Lorg/h2/store/FileStore;->fileLength:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/h2/store/FileStore;->fileLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 380
    :cond_0
    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x10

    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    add-long v4, v0, v2

    .line 381
    rem-long v2, v0, v2

    const/4 v6, 0x0

    sub-long/2addr v4, v2

    .line 383
    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 384
    iput-wide v4, p0, Lorg/h2/store/FileStore;->fileLength:J

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unaligned file length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-wide v0

    :catch_0
    move-exception v0

    .line 390
    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public openFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/store/FileStore;->mode:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/store/fs/FileUtils;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    .line 470
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    iget-wide v1, p0, Lorg/h2/store/FileStore;->filePos:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_0
    return-void
.end method

.method public readFully([BII)V
    .locals 2

    .line 266
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    if-ltz p3, :cond_0

    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unaligned read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 271
    :cond_1
    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkPowerOff()V

    .line 273
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/store/fs/FileUtils;->readFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    iget-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    return-void

    :catch_0
    move-exception p1

    .line 275
    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method protected readFullyDirect([BII)V
    .locals 0

    .line 255
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/store/FileStore;->readFully([BII)V

    return-void
.end method

.method public declared-synchronized releaseLock()V
    .locals 1

    monitor-enter p0

    .line 499
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/FileStore;->lock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 501
    :try_start_1
    iget-object v0, p0, Lorg/h2/store/FileStore;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    .line 505
    :try_start_2
    iput-object v0, p0, Lorg/h2/store/FileStore;->lock:Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 498
    monitor-exit p0

    throw v0
.end method

.method public seek(J)V
    .locals 5

    .line 286
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x10

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unaligned seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 292
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lorg/h2/store/FileStore;->filePos:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 293
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 294
    iput-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 297
    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setCheckedWriting(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    return-void
.end method

.method public setLength(J)V
    .locals 5

    .line 343
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x10

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unaligned setLength "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 347
    :cond_0
    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkPowerOff()V

    .line 348
    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkWritingAllowed()V

    .line 350
    :try_start_0
    iget-wide v0, p0, Lorg/h2/store/FileStore;->fileLength:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 351
    iget-wide v0, p0, Lorg/h2/store/FileStore;->filePos:J

    .line 352
    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x1

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 353
    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    const/4 v3, 0x1

    new-array v3, v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/h2/store/fs/FileUtils;->writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    .line 354
    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 358
    :goto_0
    iput-wide p1, p0, Lorg/h2/store/FileStore;->fileLength:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 360
    invoke-direct {p0}, Lorg/h2/store/FileStore;->closeFileSilently()V

    .line 361
    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public stopAutoDelete()V
    .locals 3

    .line 438
    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    iget-object v2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/TempFileDeleter;->stopAutoDelete(Ljava/lang/ref/Reference;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    return-void
.end method

.method public sync()V
    .locals 2

    .line 418
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 420
    invoke-direct {p0}, Lorg/h2/store/FileStore;->closeFileSilently()V

    .line 421
    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized tryLock()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 487
    :try_start_0
    iget-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/store/FileStore;->lock:Ljava/nio/channels/FileLock;

    .line 488
    iget-object v1, p0, Lorg/h2/store/FileStore;->lock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 486
    monitor-exit p0

    throw v0

    .line 491
    :catch_0
    monitor-exit p0

    return v0
.end method

.method public write([BII)V
    .locals 2

    .line 320
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    if-ltz p3, :cond_0

    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unaligned write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 325
    :cond_1
    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkWritingAllowed()V

    .line 326
    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkPowerOff()V

    .line 328
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/store/fs/FileUtils;->writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    iget-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    .line 334
    iget-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    iget-wide v0, p0, Lorg/h2/store/FileStore;->fileLength:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/FileStore;->fileLength:J

    return-void

    :catch_0
    move-exception p1

    .line 330
    invoke-direct {p0}, Lorg/h2/store/FileStore;->closeFileSilently()V

    .line 331
    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method protected writeDirect([BII)V
    .locals 0

    .line 309
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/store/FileStore;->write([BII)V

    return-void
.end method
