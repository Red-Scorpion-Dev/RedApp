.class public Lorg/h2/store/LobStorageMap;
.super Ljava/lang/Object;
.source "LobStorageMap.java"

# interfaces
.implements Lorg/h2/store/LobStorageInterface;


# static fields
.field private static final TRACE:Z


# instance fields
.field private dataMap:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private final database:Lorg/h2/engine/Database;

.field private init:Z

.field private lobMap:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nextLobId:J

.field private nextLobIdSync:Ljava/lang/Object;

.field private refMap:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private streamStore:Lorg/h2/mvstore/StreamStore;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/h2/store/LobStorageMap;->nextLobIdSync:Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    return-void
.end method

.method private createLob(Ljava/io/InputStream;I)Lorg/h2/value/ValueLobDb;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/StreamStore;->put(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    invoke-direct {p0}, Lorg/h2/store/LobStorageMap;->generateLobId()J

    move-result-wide v3

    .line 224
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/StreamStore;->length([B)J

    move-result-wide v6

    const/4 v0, -0x2

    const/4 v1, 0x4

    .line 226
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v1, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v8, 0x2

    aput-object v0, v1, v8

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v0

    .line 227
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9, v1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v5

    .line 229
    iget-object p1, p0, Lorg/h2/store/LobStorageMap;->refMap:Lorg/h2/mvstore/MVMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    const/4 v5, 0x0

    const/4 v2, -0x2

    move v0, p2

    invoke-static/range {v0 .. v7}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 221
    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private generateLobId()J
    .locals 8

    .line 239
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->nextLobIdSync:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-wide v1, p0, Lorg/h2/store/LobStorageMap;->nextLobId:J

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    cmp-long v7, v1, v3

    if-nez v7, :cond_1

    .line 241
    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    move-wide v1, v5

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    add-long/2addr v1, v5

    :goto_0
    iput-wide v1, p0, Lorg/h2/store/LobStorageMap;->nextLobId:J

    .line 244
    :cond_1
    iget-wide v1, p0, Lorg/h2/store/LobStorageMap;->nextLobId:J

    const/4 v3, 0x0

    add-long/2addr v5, v1

    iput-wide v5, p0, Lorg/h2/store/LobStorageMap;->nextLobId:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 245
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeLob(IJ)V
    .locals 3

    .line 348
    iget-object p1, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 353
    aget-object p1, p1, v0

    check-cast p1, [B

    const/4 v1, 0x2

    .line 354
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v2, p3

    .line 355
    iget-object p2, p0, Lorg/h2/store/LobStorageMap;->refMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p2, v2}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, p3

    .line 358
    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->refMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1, p2}, Lorg/h2/mvstore/MVMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 361
    aget-object p2, p2, v0

    check-cast p2, [B

    .line 362
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    .line 373
    iget-object p2, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/StreamStore;->remove([B)V

    :cond_2
    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 3

    .line 378
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] LOB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copyLob(Lorg/h2/value/ValueLobDb;IJ)Lorg/h2/value/ValueLobDb;
    .locals 8

    .line 255
    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    .line 256
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getType()I

    move-result v0

    .line 257
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v1

    .line 258
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v3

    cmp-long p1, v3, p3

    if-nez p1, :cond_0

    .line 262
    iget-object p1, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 263
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 264
    aget-object v2, p1, v1

    check-cast v2, [B

    .line 265
    invoke-direct {p0}, Lorg/h2/store/LobStorageMap;->generateLobId()J

    move-result-wide v3

    .line 266
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, p1, v6

    .line 267
    iget-object v5, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7, p1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 268
    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v6

    .line 269
    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->refMap:Lorg/h2/mvstore/MVMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    const/4 v5, 0x0

    move v2, p2

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Length is different"

    .line 260
    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;
    .locals 6

    .line 146
    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_0

    move-wide p2, v0

    .line 151
    :cond_0
    iget-object v2, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMaxLengthInplaceLob()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0xf

    if-eqz v2, :cond_3

    const v4, 0x7fffffff

    if-ge v2, v4, :cond_3

    .line 154
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 155
    invoke-virtual {v4, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 156
    new-array p1, v2, [B

    .line 157
    invoke-static {v4, p1, v2}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v5

    if-ge v5, v2, :cond_2

    .line 159
    array-length p2, p1

    if-ge v5, p2, :cond_1

    .line 160
    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 162
    :cond_1
    invoke-static {v3, p1}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    .line 164
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->reset()V

    move-object p1, v4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    cmp-long v2, p2, v0

    if-eqz v2, :cond_4

    .line 168
    new-instance v0, Lorg/h2/store/LimitInputStream;

    invoke-direct {v0, p1, p2, p3}, Lorg/h2/store/LimitInputStream;-><init>(Ljava/io/InputStream;J)V

    move-object p1, v0

    .line 170
    :cond_4
    invoke-direct {p0, p1, v3}, Lorg/h2/store/LobStorageMap;->createLob(Ljava/io/InputStream;I)Lorg/h2/value/ValueLobDb;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    const/4 p2, 0x0

    .line 174
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :goto_2
    const p2, 0x15f97

    const/4 p3, 0x0

    .line 172
    new-array p3, p3, [Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;
    .locals 10

    .line 180
    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMaxLengthInplaceLob()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eqz v0, :cond_3

    const v3, 0x7fffffff

    if-ge v0, v3, :cond_3

    .line 188
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 189
    invoke-virtual {v3, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 190
    new-array p1, v0, [C

    .line 191
    invoke-static {v3, p1, v0}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/Reader;[CI)I

    move-result v4

    if-ge v4, v0, :cond_2

    .line 193
    array-length p2, p1

    if-ge v4, p2, :cond_1

    .line 194
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    .line 196
    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, v1, v4}, Ljava/lang/String;-><init>([CII)V

    sget-object p1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 197
    invoke-static {v2, p1}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    .line 199
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->reset()V

    move-object p1, v3

    .line 202
    :cond_3
    new-instance v0, Lorg/h2/store/CountingReaderInputStream;

    invoke-direct {v0, p1, p2, p3}, Lorg/h2/store/CountingReaderInputStream;-><init>(Ljava/io/Reader;J)V

    .line 204
    invoke-direct {p0, v0, v2}, Lorg/h2/store/LobStorageMap;->createLob(Ljava/io/InputStream;I)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    .line 206
    iget-object v3, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result v4

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v0}, Lorg/h2/store/CountingReaderInputStream;->getLength()J

    move-result-wide v8

    const/16 v2, 0x10

    invoke-static/range {v2 .. v9}, Lorg/h2/value/ValueLobDb;->create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 212
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    const p2, 0x15f97

    .line 210
    new-array p3, v1, [Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getInputStream(Lorg/h2/value/ValueLobDb;[BJ)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    .line 283
    iget-object p2, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-nez p2, :cond_2

    .line 285
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result p2

    const/4 p3, -0x3

    if-eq p2, p3, :cond_1

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Lob not found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const p2, 0x15fb7

    .line 287
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 294
    aget-object p1, p2, p1

    check-cast p1, [B

    .line 295
    iget-object p2, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/StreamStore;->get([B)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 8

    .line 82
    iget-boolean v0, p0, Lorg/h2/store/LobStorageMap;->init:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lorg/h2/store/LobStorageMap;->init:Z

    .line 86
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 90
    invoke-static {v0}, Lorg/h2/mvstore/MVStore;->open(Ljava/lang/String;)Lorg/h2/mvstore/MVStore;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    :goto_0
    const-string v1, "lobMap"

    .line 94
    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    const-string v1, "lobRef"

    .line 95
    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/store/LobStorageMap;->refMap:Lorg/h2/mvstore/MVMap;

    const-string v1, "lobData"

    .line 96
    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/LobStorageMap;->dataMap:Lorg/h2/mvstore/MVMap;

    .line 97
    new-instance v0, Lorg/h2/mvstore/StreamStore;

    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->dataMap:Lorg/h2/mvstore/MVMap;

    invoke-direct {v0, v1}, Lorg/h2/mvstore/StreamStore;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    .line 99
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->dataMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 110
    :cond_3
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, -0x1

    move-wide v3, v1

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 112
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 113
    aget-object v5, v5, v6

    check-cast v5, [B

    .line 114
    iget-object v6, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {v6, v5}, Lorg/h2/mvstore/StreamStore;->getMaxBlockKey([B)J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-eqz v7, :cond_4

    cmp-long v7, v5, v3

    if-lez v7, :cond_4

    move-wide v3, v5

    goto :goto_1

    .line 128
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->dataMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 129
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-gtz v5, :cond_6

    goto :goto_3

    .line 135
    :cond_6
    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->dataMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 138
    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->dataMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 140
    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->streamStore:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/h2/mvstore/StreamStore;->setNextKey(J)V

    :cond_8
    return-void
.end method

.method public isReadOnly()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public removeAllForTable(I)V
    .locals 5

    .line 313
    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    .line 314
    iget-object v0, p0, Lorg/h2/store/LobStorageMap;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    .line 322
    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 324
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 328
    invoke-direct {p0, p1, v1, v2}, Lorg/h2/store/LobStorageMap;->removeLob(IJ)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    const/4 p1, -0x2

    .line 331
    invoke-virtual {p0, p1}, Lorg/h2/store/LobStorageMap;->removeAllForTable(I)V

    const/4 p1, -0x3

    .line 332
    invoke-virtual {p0, p1}, Lorg/h2/store/LobStorageMap;->removeAllForTable(I)V

    :cond_4
    return-void
.end method

.method public removeLob(Lorg/h2/value/ValueLobDb;)V
    .locals 3

    .line 338
    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    .line 339
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getTableId()I

    move-result v0

    .line 340
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v1

    .line 341
    invoke-direct {p0, v0, v1, v2}, Lorg/h2/store/LobStorageMap;->removeLob(IJ)V

    return-void
.end method

.method public setTable(Lorg/h2/value/ValueLobDb;I)V
    .locals 3

    .line 300
    invoke-virtual {p0}, Lorg/h2/store/LobStorageMap;->init()V

    .line 301
    invoke-virtual {p1}, Lorg/h2/value/ValueLobDb;->getLobId()J

    move-result-wide v0

    .line 302
    iget-object p1, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, p1, v2

    .line 308
    iget-object p2, p0, Lorg/h2/store/LobStorageMap;->lobMap:Lorg/h2/mvstore/MVMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
