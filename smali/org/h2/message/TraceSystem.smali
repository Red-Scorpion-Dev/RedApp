.class public Lorg/h2/message/TraceSystem;
.super Ljava/lang/Object;
.source "TraceSystem.java"

# interfaces
.implements Lorg/h2/message/TraceWriter;


# static fields
.field public static final ADAPTER:I = 0x4

.field private static final CHECK_SIZE_EACH_WRITES:I = 0x1000

.field public static final DEBUG:I = 0x3

.field private static final DEFAULT_MAX_FILE_SIZE:I = 0x4000000

.field public static final DEFAULT_TRACE_LEVEL_FILE:I = 0x1

.field public static final DEFAULT_TRACE_LEVEL_SYSTEM_OUT:I = 0x0

.field public static final ERROR:I = 0x1

.field public static final INFO:I = 0x2

.field public static final OFF:I = 0x0

.field public static final PARENT:I = -0x1


# instance fields
.field private checkSize:I

.field private closed:Z

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private fileName:Ljava/lang/String;

.field private fileWriter:Ljava/io/Writer;

.field private levelFile:I

.field private levelMax:I

.field private levelSystemOut:I

.field private maxFileSize:I

.field private printWriter:Ljava/io/PrintWriter;

.field private sysOut:Ljava/io/PrintStream;

.field private final traces:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lorg/h2/message/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private writer:Lorg/h2/message/TraceWriter;

.field private writingErrorLogged:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lorg/h2/message/TraceSystem;->levelSystemOut:I

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    const/high16 v0, 0x4000000

    .line 82
    iput v0, p0, Lorg/h2/message/TraceSystem;->maxFileSize:I

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget-object v1, Lorg/h2/message/Trace;->MODULE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lorg/h2/message/TraceSystem;->traces:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 92
    iput-object p0, p0, Lorg/h2/message/TraceSystem;->writer:Lorg/h2/message/TraceWriter;

    .line 93
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/h2/message/TraceSystem;->sysOut:Ljava/io/PrintStream;

    .line 101
    iput-object p1, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->updateLevel()V

    return-void
.end method

.method private declared-synchronized closeWriter()V
    .locals 2

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 317
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 318
    iput-object v1, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->fileWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 322
    :try_start_1
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->fileWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :catch_0
    :try_start_2
    iput-object v1, p0, Lorg/h2/message/TraceSystem;->fileWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 314
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->dateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/message/TraceSystem;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/message/TraceSystem;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 215
    monitor-exit p0

    throw p1
.end method

.method private logWritingError(Ljava/lang/Exception;)V
    .locals 5

    .line 282
    iget-boolean v0, p0, Lorg/h2/message/TraceSystem;->writingErrorLogged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lorg/h2/message/TraceSystem;->writingErrorLogged:Z

    const v1, 0x15fb2

    const/4 v2, 0x2

    .line 286
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, p1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->sysOut:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private openWriter()Z
    .locals 4

    .line 295
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 297
    :try_start_0
    iget-object v2, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->canWrite(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 303
    :cond_0
    iget-object v2, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/IOUtils;->getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/message/TraceSystem;->fileWriter:Ljava/io/Writer;

    .line 305
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lorg/h2/message/TraceSystem;->fileWriter:Ljava/io/Writer;

    invoke-direct {v2, v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v2, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 307
    invoke-direct {p0, v1}, Lorg/h2/message/TraceSystem;->logWritingError(Ljava/lang/Exception;)V

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private updateLevel()V
    .locals 2

    .line 106
    iget v0, p0, Lorg/h2/message/TraceSystem;->levelSystemOut:I

    iget v1, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/h2/message/TraceSystem;->levelMax:I

    return-void
.end method

.method private declared-synchronized writeFile(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    monitor-enter p0

    .line 246
    :try_start_0
    iget v0, p0, Lorg/h2/message/TraceSystem;->checkSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/h2/message/TraceSystem;->checkSize:I

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 247
    iput v0, p0, Lorg/h2/message/TraceSystem;->checkSize:I

    .line 248
    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->closeWriter()V

    .line 249
    iget v0, p0, Lorg/h2/message/TraceSystem;->maxFileSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v0

    iget v2, p0, Lorg/h2/message/TraceSystem;->maxFileSize:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".old"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->openWriter()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 256
    monitor-exit p0

    return-void

    .line 258
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 260
    iget p1, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    instance-of p1, p2, Lorg/h2/jdbc/JdbcSQLException;

    if-eqz p1, :cond_3

    .line 261
    move-object p1, p2

    check-cast p1, Lorg/h2/jdbc/JdbcSQLException;

    .line 262
    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcSQLException;->getErrorCode()I

    move-result p1

    .line 263
    invoke-static {p1}, Lorg/h2/api/ErrorCode;->isCommon(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 264
    iget-object p1, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_2
    iget-object p1, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object p1, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 272
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/h2/message/TraceSystem;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 273
    iget-boolean p1, p0, Lorg/h2/message/TraceSystem;->closed:Z

    if-eqz p1, :cond_5

    .line 274
    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->closeWriter()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 277
    :try_start_2
    invoke-direct {p0, p1}, Lorg/h2/message/TraceSystem;->logWritingError(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    .line 245
    :goto_2
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 336
    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->closeWriter()V

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lorg/h2/message/TraceSystem;->closed:Z

    return-void
.end method

.method public getLevelFile()I
    .locals 1

    .line 212
    iget v0, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    return v0
.end method

.method public getTrace(I)Lorg/h2/message/Trace;
    .locals 3

    .line 126
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->traces:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/message/Trace;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lorg/h2/message/Trace;

    iget-object v1, p0, Lorg/h2/message/TraceSystem;->writer:Lorg/h2/message/TraceWriter;

    invoke-direct {v0, v1, p1}, Lorg/h2/message/Trace;-><init>(Lorg/h2/message/TraceWriter;I)V

    .line 129
    iget-object v1, p0, Lorg/h2/message/TraceSystem;->traces:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->traces:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/h2/message/Trace;

    :cond_0
    return-object v0
.end method

.method public getTrace(Ljava/lang/String;)Lorg/h2/message/Trace;
    .locals 2

    .line 144
    new-instance v0, Lorg/h2/message/Trace;

    iget-object v1, p0, Lorg/h2/message/TraceSystem;->writer:Lorg/h2/message/TraceWriter;

    invoke-direct {v0, v1, p1}, Lorg/h2/message/Trace;-><init>(Lorg/h2/message/TraceWriter;Ljava/lang/String;)V

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 149
    iget v0, p0, Lorg/h2/message/TraceSystem;->levelMax:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setLevelFile(I)V
    .locals 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const-string v0, "org.h2.message.TraceWriterAdapter"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 189
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/message/TraceWriter;

    iput-object v3, p0, Lorg/h2/message/TraceSystem;->writer:Lorg/h2/message/TraceWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v3, ".trace.db"

    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ".trace.db"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x2f

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/2addr v1, v2

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_1
    iget-object v1, p0, Lorg/h2/message/TraceSystem;->writer:Lorg/h2/message/TraceWriter;

    invoke-interface {v1, v0}, Lorg/h2/message/TraceWriter;->setName(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const v3, 0x15fe6

    .line 191
    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-static {v3, p1, v4}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    const/4 v1, 0x2

    .line 192
    invoke-virtual {p0, v2, v1, v0, p1}, Lorg/h2/message/TraceSystem;->write(IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 207
    :cond_2
    :goto_0
    iput p1, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    .line 208
    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->updateLevel()V

    return-void
.end method

.method public setLevelSystemOut(I)V
    .locals 0

    .line 176
    iput p1, p0, Lorg/h2/message/TraceSystem;->levelSystemOut:I

    .line 177
    invoke-direct {p0}, Lorg/h2/message/TraceSystem;->updateLevel()V

    return-void
.end method

.method public setMaxFileSize(I)V
    .locals 0

    .line 167
    iput p1, p0, Lorg/h2/message/TraceSystem;->maxFileSize:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSysOut(Ljava/io/PrintStream;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/h2/message/TraceSystem;->sysOut:Ljava/io/PrintStream;

    return-void
.end method

.method public write(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 224
    sget-object v0, Lorg/h2/message/Trace;->MODULE_NAMES:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/message/TraceSystem;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 229
    iget v0, p0, Lorg/h2/message/TraceSystem;->levelSystemOut:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lorg/h2/message/TraceSystem;->levelMax:I

    if-le p1, v0, :cond_1

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->sysOut:Ljava/io/PrintStream;

    invoke-direct {p0, p2, p3}, Lorg/h2/message/TraceSystem;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 233
    iget v0, p0, Lorg/h2/message/TraceSystem;->levelSystemOut:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 234
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->sysOut:Ljava/io/PrintStream;

    invoke-virtual {p4, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 237
    :cond_1
    iget-object v0, p0, Lorg/h2/message/TraceSystem;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 238
    iget v0, p0, Lorg/h2/message/TraceSystem;->levelFile:I

    if-gt p1, v0, :cond_2

    .line 239
    invoke-direct {p0, p2, p3}, Lorg/h2/message/TraceSystem;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lorg/h2/message/TraceSystem;->writeFile(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
