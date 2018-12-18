.class public Lorg/h2/tools/ChangeFileEncryption;
.super Lorg/h2/util/Tool;
.source "ChangeFileEncryption.java"


# instance fields
.field private cipherType:Ljava/lang/String;

.field private decrypt:[B

.field private decryptKey:[B

.field private directory:Ljava/lang/String;

.field private encrypt:[B

.field private encryptKey:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method private copy(Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 219
    invoke-static/range {p1 .. p1}, Lorg/h2/store/fs/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v3}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    const/4 v3, 0x0

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lorg/h2/tools/ChangeFileEncryption;->directory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/temp.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    :try_start_0
    iget-object v5, v1, Lorg/h2/tools/ChangeFileEncryption;->decryptKey:[B

    if-eqz v5, :cond_1

    .line 227
    new-instance v5, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;

    iget-object v6, v1, Lorg/h2/tools/ChangeFileEncryption;->decryptKey:[B

    invoke-direct {v5, v0, v6, v2}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;-><init>(Ljava/lang/String;[BLjava/nio/channels/FileChannel;)V

    move-object v2, v5

    .line 229
    :cond_1
    new-instance v5, Lorg/h2/store/fs/FileChannelInputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Lorg/h2/store/fs/FileChannelInputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    .line 230
    invoke-static {v4}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 231
    invoke-static {v4}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v7

    const-string v8, "rw"

    invoke-virtual {v7, v8}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    :try_start_1
    iget-object v3, v1, Lorg/h2/tools/ChangeFileEncryption;->encryptKey:[B

    if-eqz v3, :cond_2

    .line 233
    new-instance v3, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;

    iget-object v8, v1, Lorg/h2/tools/ChangeFileEncryption;->encryptKey:[B

    invoke-direct {v3, v4, v8, v7}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;-><init>(Ljava/lang/String;[BLjava/nio/channels/FileChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object v3, v7

    .line 235
    :goto_0
    :try_start_2
    new-instance v7, Lorg/h2/store/fs/FileChannelOutputStream;

    invoke-direct {v7, v3, v6}, Lorg/h2/store/fs/FileChannelOutputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    const/16 v6, 0x1000

    .line 236
    new-array v6, v6, [B

    .line 237
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-wide v12, v10

    move-wide v10, v8

    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v16, v10, v14

    if-lez v16, :cond_4

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    sub-long/2addr v14, v12

    const-wide/16 v16, 0x3e8

    cmp-long v18, v14, v16

    if-lez v18, :cond_3

    .line 242
    iget-object v12, v1, Lorg/h2/tools/ChangeFileEncryption;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v14, 0x64

    mul-long v16, v10, v14

    div-long v16, v16, v8

    const/16 v18, 0x0

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 245
    :cond_3
    array-length v14, v6

    int-to-long v14, v14

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v14, v14

    const/4 v15, 0x0

    .line 246
    invoke-virtual {v5, v6, v15, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    .line 247
    invoke-virtual {v7, v6, v15, v14}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v14, v14

    sub-long/2addr v10, v14

    goto :goto_1

    .line 250
    :cond_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 251
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    if-eqz v3, :cond_5

    .line 255
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 258
    :cond_5
    invoke-static/range {p1 .. p1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 259
    invoke-static {v4, v0}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v7

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 253
    :goto_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    if-eqz v3, :cond_6

    .line 255
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_6
    throw v0
.end method

.method private copy(Ljava/lang/String;Lorg/h2/store/FileStore;[B)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 263
    invoke-static/range {p1 .. p1}, Lorg/h2/store/fs/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 266
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lorg/h2/tools/ChangeFileEncryption;->directory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/temp.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-static {v4}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const-string v3, "rw"

    .line 270
    invoke-static {v5, v4, v3}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v6, "rw"

    .line 272
    iget-object v7, v0, Lorg/h2/tools/ChangeFileEncryption;->cipherType:Ljava/lang/String;

    invoke-static {v5, v4, v6, v7, v3}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lorg/h2/store/FileStore;

    move-result-object v3

    .line 274
    :goto_0
    invoke-virtual {v3}, Lorg/h2/store/FileStore;->init()V

    const/16 v5, 0x1000

    .line 275
    new-array v5, v5, [B

    .line 276
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x30

    sub-long/2addr v6, v8

    .line 278
    invoke-virtual {v2, v8, v9}, Lorg/h2/store/FileStore;->seek(J)V

    .line 279
    invoke-virtual {v3, v8, v9}, Lorg/h2/store/FileStore;->seek(J)V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide v10, v8

    move-wide v8, v6

    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v14, v8, v12

    if-lez v14, :cond_3

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/16 v14, 0x3e8

    cmp-long v16, v12, v14

    if-lez v16, :cond_2

    .line 283
    iget-object v10, v0, Lorg/h2/tools/ChangeFileEncryption;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x64

    mul-long v14, v8, v12

    div-long/2addr v14, v6

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 286
    :cond_2
    array-length v12, v5

    int-to-long v12, v12

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    const/4 v13, 0x0

    .line 287
    invoke-virtual {v2, v5, v13, v12}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 288
    invoke-virtual {v3, v5, v13, v12}, Lorg/h2/store/FileStore;->write([BII)V

    int-to-long v12, v12

    sub-long/2addr v8, v12

    goto :goto_1

    .line 291
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/h2/store/FileStore;->close()V

    .line 292
    invoke-virtual {v3}, Lorg/h2/store/FileStore;->close()V

    .line 293
    invoke-static/range {p1 .. p1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 294
    invoke-static {v4, v1}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[CZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 140
    :try_start_0
    new-instance v0, Lorg/h2/tools/ChangeFileEncryption;

    invoke-direct {v0}, Lorg/h2/tools/ChangeFileEncryption;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/tools/ChangeFileEncryption;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[CZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 143
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method private static getFileEncryptionKey([C)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "file"

    .line 121
    invoke-static {v0, p0}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/h2/tools/ChangeFileEncryption;

    invoke-direct {v0}, Lorg/h2/tools/ChangeFileEncryption;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/ChangeFileEncryption;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private process(Ljava/lang/String;)V
    .locals 4

    const-string v0, ".mv.db"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    invoke-direct {p0, p1}, Lorg/h2/tools/ChangeFileEncryption;->copy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encrypting / decrypting file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/h2/tools/ChangeFileEncryption;->decrypt:[B

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "r"

    .line 206
    invoke-static {v1, p1, v0}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "r"

    .line 208
    iget-object v2, p0, Lorg/h2/tools/ChangeFileEncryption;->cipherType:Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/tools/ChangeFileEncryption;->decrypt:[B

    invoke-static {v1, p1, v0, v2, v3}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lorg/h2/store/FileStore;

    move-result-object v0

    .line 211
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/h2/store/FileStore;->init()V

    .line 212
    iget-object v1, p0, Lorg/h2/tools/ChangeFileEncryption;->encrypt:[B

    invoke-direct {p0, p1, v0, v1}, Lorg/h2/tools/ChangeFileEncryption;->copy(Ljava/lang/String;Lorg/h2/store/FileStore;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-virtual {v0}, Lorg/h2/store/FileStore;->closeSilently()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->closeSilently()V

    throw p1
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[CZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 150
    invoke-static {p1}, Lorg/h2/store/FileLister;->getDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    new-instance v0, Lorg/h2/tools/ChangeFileEncryption;

    invoke-direct {v0}, Lorg/h2/tools/ChangeFileEncryption;-><init>()V

    const/4 v1, 0x0

    if-eqz p5, :cond_2

    .line 153
    array-length v2, p5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, p5, v3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "The file password may not contain spaces"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_1
    invoke-static {p5}, Lorg/h2/store/fs/FilePathEncrypt;->getPasswordBytes([C)[B

    move-result-object v2

    iput-object v2, v0, Lorg/h2/tools/ChangeFileEncryption;->encryptKey:[B

    .line 159
    invoke-static {p5}, Lorg/h2/tools/ChangeFileEncryption;->getFileEncryptionKey([C)[B

    move-result-object p5

    iput-object p5, v0, Lorg/h2/tools/ChangeFileEncryption;->encrypt:[B

    :cond_2
    if-eqz p4, :cond_3

    .line 162
    invoke-static {p4}, Lorg/h2/store/fs/FilePathEncrypt;->getPasswordBytes([C)[B

    move-result-object p5

    iput-object p5, v0, Lorg/h2/tools/ChangeFileEncryption;->decryptKey:[B

    .line 163
    invoke-static {p4}, Lorg/h2/tools/ChangeFileEncryption;->getFileEncryptionKey([C)[B

    move-result-object p4

    iput-object p4, v0, Lorg/h2/tools/ChangeFileEncryption;->decrypt:[B

    .line 165
    :cond_3
    iget-object p4, p0, Lorg/h2/tools/ChangeFileEncryption;->out:Ljava/io/PrintStream;

    iput-object p4, v0, Lorg/h2/tools/ChangeFileEncryption;->out:Ljava/io/PrintStream;

    .line 166
    iput-object p1, v0, Lorg/h2/tools/ChangeFileEncryption;->directory:Ljava/lang/String;

    .line 167
    iput-object p3, v0, Lorg/h2/tools/ChangeFileEncryption;->cipherType:Ljava/lang/String;

    const/4 p3, 0x1

    .line 169
    invoke-static {p1, p2, p3}, Lorg/h2/store/FileLister;->getDatabaseFiles(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p3

    const-string p4, "encryption"

    .line 170
    invoke-static {p3, p4}, Lorg/h2/store/FileLister;->tryUnlockDatabase(Ljava/util/List;Ljava/lang/String;)V

    .line 171
    invoke-static {p1, p2, v1}, Lorg/h2/store/FileLister;->getDatabaseFiles(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p3

    .line 172
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-nez p4, :cond_4

    if-nez p6, :cond_4

    .line 173
    invoke-virtual {p0, p1, p2}, Lorg/h2/tools/ChangeFileEncryption;->printNoDatabaseFilesFound(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 178
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "/temp.db"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 179
    invoke-static {p5}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 180
    invoke-static {p4, p5}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {p5, p4}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 188
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 189
    invoke-direct {v0, p2}, Lorg/h2/tools/ChangeFileEncryption;->process(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public varargs runTool([Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "."

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    const/4 v8, 0x0

    :goto_0
    if-eqz p1, :cond_8

    .line 77
    array-length v0, p1

    if-ge v1, v0, :cond_8

    .line 78
    aget-object v0, p1, v1

    const-string v2, "-dir"

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 80
    aget-object v0, p1, v1

    move-object v3, v0

    goto :goto_1

    :cond_0
    const-string v2, "-cipher"

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 82
    aget-object v0, p1, v1

    move-object v5, v0

    goto :goto_1

    :cond_1
    const-string v2, "-db"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 84
    aget-object v0, p1, v1

    move-object v4, v0

    goto :goto_1

    :cond_2
    const-string v2, "-decrypt"

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 86
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_3
    const-string v2, "-encrypt"

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 88
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_4
    const-string v2, "-quiet"

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const-string v2, "-help"

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "-?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 95
    :cond_6
    invoke-virtual {p0, v0}, Lorg/h2/tools/ChangeFileEncryption;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/2addr v1, v9

    goto :goto_0

    .line 92
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/h2/tools/ChangeFileEncryption;->showUsage()V

    return-void

    :cond_8
    if-nez v7, :cond_9

    if-eqz v6, :cond_a

    :cond_9
    if-eqz v5, :cond_a

    move-object v2, p0

    .line 104
    :try_start_0
    invoke-direct/range {v2 .. v8}, Lorg/h2/tools/ChangeFileEncryption;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[CZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 106
    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 99
    :cond_a
    invoke-virtual {p0}, Lorg/h2/tools/ChangeFileEncryption;->showUsage()V

    .line 100
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Encryption or decryption password not set, or cipher not set"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
