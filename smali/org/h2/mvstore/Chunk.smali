.class public Lorg/h2/mvstore/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# static fields
.field static final FOOTER_LENGTH:I = 0x80

.field static final MAX_HEADER_LENGTH:I = 0x400

.field public static final MAX_ID:I = 0x3ffffff


# instance fields
.field public block:J

.field public collectPriority:I

.field public final id:I

.field public len:I

.field public mapId:I

.field public maxLen:J

.field public maxLenLive:J

.field public metaRootPos:J

.field public next:J

.field public pageCount:I

.field public pageCountLive:I

.field public time:J

.field public unused:J

.field public version:J


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lorg/h2/mvstore/Chunk;->id:I

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;
    .locals 8

    .line 182
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->parseMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "chunk"

    const/4 v1, 0x0

    .line 183
    invoke-static {p0, v0, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v0

    .line 184
    new-instance v2, Lorg/h2/mvstore/Chunk;

    invoke-direct {v2, v0}, Lorg/h2/mvstore/Chunk;-><init>(I)V

    const-string v3, "block"

    const-wide/16 v4, 0x0

    .line 185
    invoke-static {p0, v3, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->block:J

    const-string v3, "len"

    .line 186
    invoke-static {p0, v3, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lorg/h2/mvstore/Chunk;->len:I

    const-string v3, "pages"

    .line 187
    invoke-static {p0, v3, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lorg/h2/mvstore/Chunk;->pageCount:I

    const-string v3, "livePages"

    .line 188
    iget v6, v2, Lorg/h2/mvstore/Chunk;->pageCount:I

    invoke-static {p0, v3, v6}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    const-string v3, "map"

    .line 189
    invoke-static {p0, v3, v1}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lorg/h2/mvstore/Chunk;->mapId:I

    const-string v1, "max"

    .line 190
    invoke-static {p0, v1, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->maxLen:J

    const-string v1, "liveMax"

    .line 191
    iget-wide v6, v2, Lorg/h2/mvstore/Chunk;->maxLen:J

    invoke-static {p0, v1, v6, v7}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    const-string v1, "root"

    .line 192
    invoke-static {p0, v1, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    const-string v1, "time"

    .line 193
    invoke-static {p0, v1, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->time:J

    const-string v1, "unused"

    .line 194
    invoke-static {p0, v1, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v2, Lorg/h2/mvstore/Chunk;->unused:J

    const-string v1, "version"

    int-to-long v6, v0

    .line 195
    invoke-static {p0, v1, v6, v7}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/h2/mvstore/Chunk;->version:J

    const-string v0, "next"

    .line 196
    invoke-static {p0, v0, v4, v5}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/h2/mvstore/Chunk;->next:J

    return-object v2
.end method

.method static getMetaKey(I)Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chunk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static readChunkHeader(Ljava/nio/ByteBuffer;J)Lorg/h2/mvstore/Chunk;
    .locals 8

    .line 122
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [B

    .line 124
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    .line 126
    :try_start_0
    array-length v6, v1

    if-ge v3, v6, :cond_1

    .line 127
    aget-byte v6, v1, v3

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    add-int/2addr v0, v3

    add-int/2addr v0, v5

    .line 129
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    new-instance p0, Ljava/lang/String;

    sget-object v0, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v2, v3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-static {p0}, Lorg/h2/mvstore/Chunk;->fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_1
    new-array p0, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "File corrupt reading chunk at position {0}"

    invoke-static {v4, p1, p0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    const/4 v0, 0x2

    .line 136
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p0, v0, v5

    const-string p0, "File corrupt reading chunk at position {0}"

    invoke-static {v4, p0, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 7

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chunk"

    .line 231
    iget v2, p0, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "block"

    .line 232
    iget-wide v2, p0, Lorg/h2/mvstore/Chunk;->block:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "len"

    .line 233
    iget v2, p0, Lorg/h2/mvstore/Chunk;->len:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->maxLen:J

    iget-wide v3, p0, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-string v1, "liveMax"

    .line 235
    iget-wide v2, p0, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    :cond_0
    iget v1, p0, Lorg/h2/mvstore/Chunk;->pageCount:I

    iget v2, p0, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    if-eq v1, v2, :cond_1

    const-string v1, "livePages"

    .line 238
    iget v2, p0, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v1, "map"

    .line 240
    iget v2, p0, Lorg/h2/mvstore/Chunk;->mapId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "max"

    .line 241
    iget-wide v2, p0, Lorg/h2/mvstore/Chunk;->maxLen:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->next:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const-string v1, "next"

    .line 243
    iget-wide v5, p0, Lorg/h2/mvstore/Chunk;->next:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v1, "pages"

    .line 245
    iget v2, p0, Lorg/h2/mvstore/Chunk;->pageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "root"

    .line 246
    iget-wide v5, p0, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "time"

    .line 247
    iget-wide v5, p0, Lorg/h2/mvstore/Chunk;->time:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    iget-wide v1, p0, Lorg/h2/mvstore/Chunk;->unused:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const-string v1, "unused"

    .line 249
    iget-wide v2, p0, Lorg/h2/mvstore/Chunk;->unused:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string v1, "version"

    .line 251
    iget-wide v2, p0, Lorg/h2/mvstore/Chunk;->version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 221
    instance-of v0, p1, Lorg/h2/mvstore/Chunk;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/h2/mvstore/Chunk;

    iget p1, p1, Lorg/h2/mvstore/Chunk;->id:I

    iget v0, p0, Lorg/h2/mvstore/Chunk;->id:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFillRate()I
    .locals 5

    .line 206
    iget-wide v0, p0, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    iget-wide v0, p0, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    iget-wide v2, p0, Lorg/h2/mvstore/Chunk;->maxLen:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/16 v0, 0x64

    return v0

    :cond_1
    const-wide/16 v0, 0x62

    .line 211
    iget-wide v2, p0, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    mul-long v2, v2, v0

    iget-wide v0, p0, Lorg/h2/mvstore/Chunk;->maxLen:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getFooterBytes()[B
    .locals 4

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chunk"

    .line 257
    iget v2, p0, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "block"

    .line 258
    iget-wide v2, p0, Lorg/h2/mvstore/Chunk;->block:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "version"

    .line 259
    iget-wide v2, p0, Lorg/h2/mvstore/Chunk;->version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 261
    array-length v2, v1

    invoke-static {v1, v2}, Lorg/h2/mvstore/DataUtils;->getFletcher32([BI)I

    move-result v1

    const-string v2, "fletcher"

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_0

    const/16 v1, 0x20

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 216
    iget v0, p0, Lorg/h2/mvstore/Chunk;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 272
    invoke-virtual {p0}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeChunkHeader(Lorg/h2/mvstore/WriteBuffer;I)V
    .locals 7

    .line 152
    invoke-virtual {p1}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    .line 153
    invoke-virtual {p0}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    .line 154
    :goto_0
    invoke-virtual {p1}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v2, v0

    add-int/lit8 v4, p2, -0x1

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/16 v2, 0x20

    .line 155
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 157
    invoke-virtual {p1}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v0

    if-gt v0, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 158
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Chunk metadata too long"

    invoke-static {p1, v0, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_1
    const/16 p2, 0xa

    .line 162
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    return-void
.end method
