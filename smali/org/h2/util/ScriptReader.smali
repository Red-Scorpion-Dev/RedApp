.class public Lorg/h2/util/ScriptReader;
.super Ljava/lang/Object;
.source "ScriptReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private blockRemark:Z

.field private buffer:[C

.field private bufferEnd:I

.field private bufferPos:I

.field private bufferStart:I

.field private endOfFile:Z

.field private insideRemark:Z

.field private final reader:Ljava/io/Reader;

.field private remarkStart:I

.field private skipRemarks:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    .line 72
    iput-object p1, p0, Lorg/h2/util/ScriptReader;->reader:Ljava/io/Reader;

    const/16 p1, 0x2000

    .line 73
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    return-void
.end method

.method private clearRemark()V
    .locals 4

    .line 247
    iget-boolean v0, p0, Lorg/h2/util/ScriptReader;->skipRemarks:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    iget v1, p0, Lorg/h2/util/ScriptReader;->remarkStart:I

    iget v2, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    :cond_0
    return-void
.end method

.method private endRemark()V
    .locals 1

    .line 242
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->clearRemark()V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lorg/h2/util/ScriptReader;->insideRemark:Z

    return-void
.end method

.method private read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget v0, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    iget v1, p0, Lorg/h2/util/ScriptReader;->bufferEnd:I

    if-lt v0, v1, :cond_0

    .line 254
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->readBuffer()I

    move-result v0

    return v0

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    iget v1, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    aget-char v0, v0, v1

    return v0
.end method

.method private readBuffer()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-boolean v0, p0, Lorg/h2/util/ScriptReader;->endOfFile:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 263
    :cond_0
    iget v0, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    iget v2, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    if-lez v0, :cond_3

    .line 265
    iget-object v3, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    add-int/lit16 v4, v0, 0x1000

    .line 266
    array-length v5, v3

    if-le v4, v5, :cond_2

    .line 268
    array-length v4, v3

    const v5, 0x3fffffff    # 1.9999999f

    if-ge v4, v5, :cond_1

    .line 274
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    iput-object v4, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    goto :goto_0

    .line 269
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in parsing script, statement size exceeds 1G, first 80 characters of statement looks like: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    iget v4, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_2
    :goto_0
    iget v4, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    iget-object v5, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    invoke-static {v3, v4, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    :cond_3
    iget v3, p0, Lorg/h2/util/ScriptReader;->remarkStart:I

    iget v4, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/h2/util/ScriptReader;->remarkStart:I

    .line 279
    iput v2, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    .line 280
    iput v0, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    .line 281
    iget-object v2, p0, Lorg/h2/util/ScriptReader;->reader:Ljava/io/Reader;

    iget-object v3, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    const/16 v4, 0x1000

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-ne v2, v1, :cond_4

    const/16 v0, -0x400

    .line 284
    iput v0, p0, Lorg/h2/util/ScriptReader;->bufferEnd:I

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lorg/h2/util/ScriptReader;->endOfFile:Z

    .line 288
    iget v2, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    return v1

    :cond_4
    add-int/2addr v0, v2

    .line 291
    iput v0, p0, Lorg/h2/util/ScriptReader;->bufferEnd:I

    .line 292
    iget-object v0, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    iget v1, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    aget-char v0, v0, v1

    return v0
.end method

.method private readStatementLoop()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    iput v0, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    .line 107
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 110
    iput-boolean v1, p0, Lorg/h2/util/ScriptReader;->endOfFile:Z

    .line 111
    iget v0, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    sub-int/2addr v0, v1

    iget v2, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v2, 0x3b

    if-ne v0, v2, :cond_3

    .line 232
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    iget v3, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    iget v4, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    sub-int/2addr v4, v1

    iget v1, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    sub-int/2addr v4, v1

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3
    const/16 v2, 0x22

    if-eq v0, v2, :cond_16

    const/16 v2, 0x24

    if-eq v0, v2, :cond_12

    const/16 v3, 0x27

    if-eq v0, v3, :cond_10

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_c

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_4

    .line 228
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    goto :goto_0

    .line 167
    :cond_4
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    const/16 v6, 0x2a

    if-ne v0, v6, :cond_8

    .line 170
    invoke-direct {p0, v1}, Lorg/h2/util/ScriptReader;->startRemark(Z)V

    .line 172
    :cond_5
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_6

    goto :goto_1

    :cond_6
    if-ne v0, v6, :cond_5

    .line 177
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_7

    .line 179
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->clearRemark()V

    goto :goto_1

    :cond_7
    if-ne v0, v5, :cond_5

    .line 183
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->endRemark()V

    .line 188
    :goto_1
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    goto :goto_0

    :cond_8
    if-ne v0, v5, :cond_0

    .line 191
    invoke-direct {p0, v4}, Lorg/h2/util/ScriptReader;->startRemark(Z)V

    .line 193
    :cond_9
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_a

    .line 195
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->clearRemark()V

    goto :goto_2

    :cond_a
    if-eq v0, v3, :cond_b

    if-ne v0, v2, :cond_9

    .line 199
    :cond_b
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->endRemark()V

    .line 203
    :goto_2
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    goto/16 :goto_0

    .line 208
    :cond_c
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 211
    invoke-direct {p0, v4}, Lorg/h2/util/ScriptReader;->startRemark(Z)V

    .line 213
    :cond_d
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_e

    .line 215
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->clearRemark()V

    goto :goto_3

    :cond_e
    if-eq v0, v3, :cond_f

    if-ne v0, v2, :cond_d

    .line 219
    :cond_f
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->endRemark()V

    .line 223
    :goto_3
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    goto/16 :goto_0

    .line 144
    :cond_10
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_11

    goto :goto_4

    :cond_11
    if-ne v0, v3, :cond_10

    .line 152
    :goto_4
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    goto/16 :goto_0

    .line 120
    :cond_12
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 121
    iget v1, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    iget v3, p0, Lorg/h2/util/ScriptReader;->bufferStart:I

    sub-int/2addr v1, v3

    const/4 v3, 0x3

    if-lt v1, v3, :cond_13

    iget-object v1, p0, Lorg/h2/util/ScriptReader;->buffer:[C

    iget v4, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    sub-int/2addr v4, v3

    aget-char v1, v1, v4

    const/16 v3, 0x20

    if-gt v1, v3, :cond_0

    .line 124
    :cond_13
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_14

    goto :goto_5

    :cond_14
    if-ne v0, v2, :cond_13

    .line 129
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_15

    goto :goto_5

    :cond_15
    if-ne v0, v2, :cond_13

    .line 138
    :goto_5
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    goto/16 :goto_0

    .line 156
    :cond_16
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    if-gez v0, :cond_17

    goto :goto_6

    :cond_17
    if-ne v0, v2, :cond_16

    .line 164
    :goto_6
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->read()I

    move-result v0

    goto/16 :goto_0
.end method

.method private startRemark(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lorg/h2/util/ScriptReader;->blockRemark:Z

    .line 237
    iget p1, p0, Lorg/h2/util/ScriptReader;->bufferPos:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/h2/util/ScriptReader;->remarkStart:I

    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Lorg/h2/util/ScriptReader;->insideRemark:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/h2/util/ScriptReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 84
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public isBlockRemark()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lorg/h2/util/ScriptReader;->blockRemark:Z

    return v0
.end method

.method public isInsideRemark()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lorg/h2/util/ScriptReader;->insideRemark:Z

    return v0
.end method

.method public readStatement()Ljava/lang/String;
    .locals 2

    .line 95
    iget-boolean v0, p0, Lorg/h2/util/ScriptReader;->endOfFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 99
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/h2/util/ScriptReader;->readStatementLoop()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 101
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public setSkipRemarks(Z)V
    .locals 0

    .line 321
    iput-boolean p1, p0, Lorg/h2/util/ScriptReader;->skipRemarks:Z

    return-void
.end method
