.class public Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;
.super Lorg/h2/store/fs/FileBase;
.source "FilePathEncrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/fs/FilePathEncrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileEncrypt"
.end annotation


# static fields
.field static final BLOCK_SIZE:I = 0x1000

.field static final BLOCK_SIZE_MASK:I = 0xfff

.field private static final HASH_ITERATIONS:I = 0xa

.field private static final HEADER:[B

.field static final HEADER_LENGTH:I = 0x1000

.field private static final SALT_LENGTH:I = 0x8

.field private static final SALT_POS:I


# instance fields
.field private final base:Ljava/nio/channels/FileChannel;

.field private encryptionKey:[B

.field private final name:Ljava/lang/String;

.field private pos:J

.field private size:J

.field private xts:Lorg/h2/store/fs/FilePathEncrypt$XTS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "H2encrypt\n"

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->HEADER:[B

    .line 146
    sget-object v0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->HEADER:[B

    array-length v0, v0

    sput v0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->SALT_POS:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/nio/channels/FileChannel;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    .line 181
    iput-object p1, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->name:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    .line 183
    iput-object p2, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->encryptionKey:[B

    return-void
.end method

.method private init()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->xts:Lorg/h2/store/fs/FilePathEncrypt$XTS;

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    .line 191
    iget-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-gez v7, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 194
    sget-object v0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->HEADER:[B

    const/16 v2, 0x1000

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 195
    invoke-static {v1}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object v1

    .line 196
    sget v2, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->SALT_POS:I

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget-object v2, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v2, v5, v6, v0}, Lorg/h2/mvstore/DataUtils;->writeFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    .line 198
    iput-wide v5, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    goto :goto_1

    .line 200
    :cond_2
    new-array v1, v1, [B

    .line 201
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    sget v4, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->SALT_POS:I

    int-to-long v7, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v0, v7, v8, v4}, Lorg/h2/mvstore/DataUtils;->readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    .line 202
    iget-wide v7, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    const-wide/16 v9, 0xfff

    and-long/2addr v7, v9

    cmp-long v0, v7, v5

    if-eqz v0, :cond_3

    .line 203
    iget-wide v4, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    .line 206
    :cond_3
    :goto_1
    new-instance v0, Lorg/h2/security/AES;

    invoke-direct {v0}, Lorg/h2/security/AES;-><init>()V

    .line 207
    iget-object v2, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->encryptionKey:[B

    const/16 v3, 0xa

    const/16 v4, 0x10

    invoke-static {v2, v1, v3, v4}, Lorg/h2/security/SHA256;->getPBKDF2([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/security/AES;->setKey([B)V

    const/4 v1, 0x0

    .line 209
    iput-object v1, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->encryptionKey:[B

    .line 210
    new-instance v1, Lorg/h2/store/fs/FilePathEncrypt$XTS;

    invoke-direct {v1, v0}, Lorg/h2/store/fs/FilePathEncrypt$XTS;-><init>(Lorg/h2/security/BlockCipher;)V

    iput-object v1, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->xts:Lorg/h2/store/fs/FilePathEncrypt$XTS;

    return-void
.end method

.method private static readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    if-ltz v0, :cond_1

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 290
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 287
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private readInternal(Ljava/nio/ByteBuffer;JI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 273
    iget-object v1, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x1000

    add-long v4, p2, v2

    invoke-static {v1, v4, v5, p1}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    .line 274
    div-long/2addr p2, v2

    move-wide v1, p2

    move p2, v0

    :goto_0
    if-lez p4, :cond_0

    .line 276
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->xts:Lorg/h2/store/fs/FilePathEncrypt$XTS;

    const-wide/16 v3, 0x1

    add-long v6, v1, v3

    const/16 v3, 0x1000

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int v5, p3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->decrypt(JI[BI)V

    add-int/lit16 p2, p2, 0x1000

    add-int/lit16 p4, p4, -0x1000

    move-wide v1, v6

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writeFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    int-to-long v1, v0

    add-long/2addr v1, p1

    .line 351
    invoke-virtual {p0, p3, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_0

    return-void
.end method

.method private writeInternal(Ljava/nio/ByteBuffer;JI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 336
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v1, 0x1000

    .line 337
    div-long v3, p2, v1

    const/4 p1, 0x0

    move-wide v4, v3

    :goto_0
    if-lez p4, :cond_0

    .line 340
    iget-object v3, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->xts:Lorg/h2/store/fs/FilePathEncrypt$XTS;

    const-wide/16 v6, 0x1

    add-long v9, v4, v6

    const/16 v6, 0x1000

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    add-int/2addr v8, p1

    invoke-virtual/range {v3 .. v8}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->encrypt(JI[BI)V

    add-int/lit16 p1, p1, 0x1000

    add-int/lit16 p4, p4, -0x1000

    move-wide v4, v9

    goto :goto_0

    .line 344
    :cond_0
    iget-object p1, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    add-long/2addr p2, v1

    invoke-static {p1, p2, p3, v0}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->writeFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public force(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method protected implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->pos:J

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iput-wide p1, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->pos:J

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->pos:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->read(Ljava/nio/ByteBuffer;J)I

    move-result p1

    if-lez p1, :cond_0

    .line 233
    iget-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->pos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->pos:J

    :cond_0
    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 244
    :cond_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->init()V

    int-to-long v0, v0

    .line 245
    iget-wide v2, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    sub-long/2addr v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 246
    iget-wide v1, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    cmp-long v3, p2, v1

    if-ltz v3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_4

    const-wide/16 v3, 0xfff

    and-long/2addr v3, p2

    cmp-long v5, v3, v1

    if-nez v5, :cond_3

    and-int/lit16 v1, v0, 0xfff

    if-eqz v1, :cond_2

    goto :goto_0

    .line 266
    :cond_2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->readInternal(Ljava/nio/ByteBuffer;JI)V

    return v0

    :cond_3
    :goto_0
    const-wide/16 v1, 0x1000

    .line 255
    div-long v3, p2, v1

    mul-long v3, v3, v1

    sub-long/2addr p2, v3

    long-to-int p2, p2

    add-int p3, v0, p2

    add-int/lit16 v1, p3, 0x1000

    add-int/lit8 v1, v1, -0x1

    .line 257
    div-int/lit16 v1, v1, 0x1000

    mul-int/lit16 v1, v1, 0x1000

    .line 258
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 259
    invoke-direct {p0, v2, v3, v4, v1}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->readInternal(Ljava/nio/ByteBuffer;JI)V

    .line 260
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 261
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 262
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return v0

    .line 249
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->init()V

    .line 368
    iget-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->name:Ljava/lang/String;

    return-object v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->init()V

    .line 374
    iget-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    const-wide/16 v0, 0xfff

    and-long/2addr v0, p1

    long-to-int v0, v0

    const-wide/16 v1, 0x1000

    if-lez v0, :cond_1

    .line 382
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    add-long v3, p1, v1

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 386
    :goto_0
    iput-wide p1, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    .line 387
    iget-wide p1, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->pos:J

    iget-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->pos:J

    return-object p0

    .line 378
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->pos:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1

    if-lez p1, :cond_0

    .line 360
    iget-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->pos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->pos:J

    :cond_0
    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 295
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->init()V

    .line 296
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const-wide/16 v5, 0xfff

    and-long v7, v2, v5

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    and-int/lit16 v7, v4, 0xfff

    if-eqz v7, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->writeInternal(Ljava/nio/ByteBuffer;JI)V

    int-to-long v5, v4

    add-long/2addr v2, v5

    .line 328
    iget-wide v5, v0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    return v4

    :cond_1
    :goto_0
    const-wide/16 v7, 0x1000

    .line 301
    div-long v9, v2, v7

    mul-long v9, v9, v7

    sub-long v11, v2, v9

    long-to-int v11, v11

    add-int v12, v4, v11

    add-int/lit16 v13, v12, 0x1000

    add-int/lit8 v13, v13, -0x1

    .line 303
    div-int/lit16 v13, v13, 0x1000

    mul-int/lit16 v13, v13, 0x1000

    .line 304
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 305
    iget-wide v5, v0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    sub-long/2addr v5, v9

    add-long/2addr v5, v7

    const-wide/16 v15, 0x1

    sub-long/2addr v5, v15

    long-to-int v5, v5

    div-int/lit16 v5, v5, 0x1000

    mul-int/lit16 v5, v5, 0x1000

    .line 306
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v5, :cond_2

    .line 308
    invoke-direct {v0, v14, v9, v10, v5}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->readInternal(Ljava/nio/ByteBuffer;JI)V

    .line 309
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 311
    :cond_2
    invoke-virtual {v14, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 312
    invoke-virtual {v14, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    invoke-virtual {v14, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 314
    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 315
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 316
    invoke-direct {v0, v14, v9, v10, v13}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->writeInternal(Ljava/nio/ByteBuffer;JI)V

    int-to-long v5, v4

    add-long/2addr v2, v5

    .line 318
    iget-wide v5, v0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    .line 319
    iget-wide v1, v0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->size:J

    const-wide/16 v5, 0xfff

    and-long/2addr v1, v5

    long-to-int v1, v1

    if-lez v1, :cond_3

    .line 321
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 322
    iget-object v2, v0, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;->base:Ljava/nio/channels/FileChannel;

    add-long/2addr v9, v7

    int-to-long v5, v13

    add-long/2addr v9, v5

    invoke-static {v2, v9, v10, v1}, Lorg/h2/mvstore/DataUtils;->writeFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    :cond_3
    return v4
.end method
