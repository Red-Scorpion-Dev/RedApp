.class public Lorg/h2/tools/CompressTool;
.super Ljava/lang/Object;
.source "CompressTool.java"


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x60000


# instance fields
.field private cachedBuffer:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compress([BILorg/h2/compress/Compressor;[B)I
    .locals 3

    .line 89
    invoke-interface {p2}, Lorg/h2/compress/Compressor;->getAlgorithm()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p3, v1

    const/4 v0, 0x1

    .line 90
    invoke-static {p3, v0, p1}, Lorg/h2/tools/CompressTool;->writeVariableInt([BII)I

    move-result v2

    add-int/2addr v2, v0

    .line 91
    invoke-interface {p2, p0, p1, p3, v2}, Lorg/h2/compress/Compressor;->compress([BI[BI)I

    move-result p2

    add-int v0, p1, v2

    if-gt p2, v0, :cond_0

    if-gtz p2, :cond_1

    .line 93
    :cond_0
    aput-byte v1, p3, v1

    .line 94
    invoke-static {p0, v1, p3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v0

    :cond_1
    return p2
.end method

.method public static expand([B[BI)V
    .locals 9

    const/4 v0, 0x0

    .line 124
    aget-byte v1, p0, v0

    .line 125
    invoke-static {v1}, Lorg/h2/tools/CompressTool;->getCompressor(I)Lorg/h2/compress/Compressor;

    move-result-object v2

    const/4 v1, 0x1

    .line 127
    :try_start_0
    invoke-static {p0, v1}, Lorg/h2/tools/CompressTool;->readVariableInt([BI)I

    move-result v8

    .line 128
    invoke-static {v8}, Lorg/h2/tools/CompressTool;->getVariableIntLength(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 129
    array-length v1, p0

    sub-int v5, v1, v4

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-interface/range {v2 .. v8}, Lorg/h2/compress/Compressor;->expand([BII[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const p1, 0x15ff8

    .line 131
    new-array p2, v0, [Ljava/lang/String;

    invoke-static {p1, p0, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private getBuffer(I)[B
    .locals 1

    const/high16 v0, 0x60000

    if-le p1, v0, :cond_0

    .line 46
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/h2/tools/CompressTool;->cachedBuffer:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/tools/CompressTool;->cachedBuffer:[B

    array-length v0, v0

    if-ge v0, p1, :cond_2

    .line 49
    :cond_1
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/CompressTool;->cachedBuffer:[B

    .line 51
    :cond_2
    iget-object p1, p0, Lorg/h2/tools/CompressTool;->cachedBuffer:[B

    return-object p1
.end method

.method public static getCompressAlgorithm(Ljava/lang/String;)I
    .locals 1

    .line 255
    invoke-static {p0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NO"

    .line 256
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "LZF"

    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "DEFLATE"

    .line 260
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const v0, 0x15ff7

    .line 263
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static getCompressor(I)Lorg/h2/compress/Compressor;
    .locals 3

    packed-switch p0, :pswitch_data_0

    const v0, 0x15ff7

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    .line 276
    :pswitch_0
    new-instance p0, Lorg/h2/compress/CompressDeflate;

    invoke-direct {p0}, Lorg/h2/compress/CompressDeflate;-><init>()V

    return-object p0

    .line 274
    :pswitch_1
    new-instance p0, Lorg/h2/compress/CompressLZF;

    invoke-direct {p0}, Lorg/h2/compress/CompressLZF;-><init>()V

    return-object p0

    .line 272
    :pswitch_2
    new-instance p0, Lorg/h2/compress/CompressNo;

    invoke-direct {p0}, Lorg/h2/compress/CompressNo;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getCompressor(Ljava/lang/String;)Lorg/h2/compress/Compressor;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "LZF"

    :cond_0
    const/16 v0, 0x20

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 242
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 243
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 245
    :cond_1
    invoke-static {p0}, Lorg/h2/tools/CompressTool;->getCompressAlgorithm(Ljava/lang/String;)I

    move-result p0

    .line 246
    invoke-static {p0}, Lorg/h2/tools/CompressTool;->getCompressor(I)Lorg/h2/compress/Compressor;

    move-result-object p0

    .line 247
    invoke-interface {p0, v1}, Lorg/h2/compress/Compressor;->setOptions(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInstance()Lorg/h2/tools/CompressTool;
    .locals 1

    .line 62
    new-instance v0, Lorg/h2/tools/CompressTool;

    invoke-direct {v0}, Lorg/h2/tools/CompressTool;-><init>()V

    return-object v0
.end method

.method public static getVariableIntLength(I)I
    .locals 2

    const/4 v0, 0x5

    if-gez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x80

    if-ge p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v1, 0x4000

    if-ge p0, v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/high16 v1, 0x200000

    if-ge p0, v1, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/high16 v1, 0x10000000

    if-ge p0, v1, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    return v0
.end method

.method public static readVariableInt([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 143
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    return p1

    :cond_0
    const/16 v1, 0xc0

    if-ge p1, v1, :cond_1

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x8

    .line 148
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    return p1

    :cond_1
    const/16 v1, 0xe0

    if-ge p1, v1, :cond_2

    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v1, v0, 0x1

    .line 151
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    return p1

    :cond_2
    const/16 v1, 0xf0

    if-ge p1, v1, :cond_3

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v1, v0, 0x1

    .line 156
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    return p1

    :cond_3
    add-int/lit8 p1, v0, 0x1

    .line 161
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr v0, p1

    add-int/lit8 p1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static wrapInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "GZIP"

    .line 317
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string v1, "ZIP"

    .line 319
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 322
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 326
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_3
    const-string p2, "DEFLATE"

    .line 331
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 332
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_4
    const-string p2, "LZF"

    .line 333
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 334
    new-instance p1, Lorg/h2/compress/LZFInputStream;

    invoke-direct {p1, p0}, Lorg/h2/compress/LZFInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    move-object p1, p0

    :goto_0
    return-object p1

    :cond_6
    const p0, 0x15ff7

    .line 336
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 342
    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static wrapOutputStream(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    :try_start_0
    const-string v0, "GZIP"

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    const-string v0, "ZIP"

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    new-instance p1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 294
    new-instance p0, Ljava/util/zip/ZipEntry;

    invoke-direct {p0, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    goto :goto_0

    :cond_1
    const-string p2, "DEFLATE"

    .line 296
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 297
    new-instance p1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    const-string p2, "LZF"

    .line 298
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 299
    new-instance p1, Lorg/h2/compress/LZFOutputStream;

    invoke-direct {p1, p0}, Lorg/h2/compress/LZFOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    move-object p1, p0

    :goto_0
    return-object p1

    :cond_4
    const p0, 0x15ff7

    .line 301
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 307
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static writeVariableInt([BII)I
    .locals 4

    const/4 v0, 0x5

    const/16 v1, -0x10

    if-gez p2, :cond_0

    add-int/lit8 v2, p1, 0x1

    .line 178
    aput-byte v1, p0, p1

    add-int/lit8 p1, v2, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    .line 179
    aput-byte v1, p0, v2

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    .line 180
    aput-byte v2, p0, p1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    .line 181
    aput-byte v2, p0, v1

    int-to-byte p2, p2

    .line 182
    aput-byte p2, p0, p1

    return v0

    :cond_0
    const/16 v2, 0x80

    if-ge p2, v2, :cond_1

    int-to-byte p2, p2

    .line 185
    aput-byte p2, p0, p1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v3, 0x4000

    if-ge p2, v3, :cond_2

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 188
    aput-byte v1, p0, p1

    int-to-byte p1, p2

    .line 189
    aput-byte p1, p0, v0

    const/4 p0, 0x2

    return p0

    :cond_2
    const/high16 v2, 0x200000

    if-ge p2, v2, :cond_3

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    .line 192
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 193
    aput-byte v1, p0, v0

    int-to-byte p2, p2

    .line 194
    aput-byte p2, p0, p1

    const/4 p0, 0x3

    return p0

    :cond_3
    const/high16 v2, 0x10000000

    if-ge p2, v2, :cond_4

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    .line 197
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 198
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 199
    aput-byte v1, p0, p1

    int-to-byte p1, p2

    .line 200
    aput-byte p1, p0, v0

    const/4 p0, 0x4

    return p0

    :cond_4
    add-int/lit8 v2, p1, 0x1

    .line 203
    aput-byte v1, p0, p1

    add-int/lit8 p1, v2, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    .line 204
    aput-byte v1, p0, v2

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    .line 205
    aput-byte v2, p0, p1

    add-int/lit8 p1, v1, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    .line 206
    aput-byte v2, p0, v1

    int-to-byte p2, p2

    .line 207
    aput-byte p2, p0, p1

    return v0
.end method


# virtual methods
.method public compress([BLjava/lang/String;)[B
    .locals 3

    .line 74
    array-length v0, p1

    .line 75
    array-length v1, p1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const-string p2, "NO"

    .line 78
    :cond_0
    invoke-static {p2}, Lorg/h2/tools/CompressTool;->getCompressor(Ljava/lang/String;)Lorg/h2/compress/Compressor;

    move-result-object p2

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x64

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    .line 79
    invoke-direct {p0, v0}, Lorg/h2/tools/CompressTool;->getBuffer(I)[B

    move-result-object v0

    .line 80
    array-length v1, p1

    invoke-static {p1, v1, p2, v0}, Lorg/h2/tools/CompressTool;->compress([BILorg/h2/compress/Compressor;[B)I

    move-result p1

    .line 81
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p2

    const/4 v1, 0x0

    .line 82
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public expand([B)[B
    .locals 9

    const/4 v0, 0x0

    .line 107
    aget-byte v1, p1, v0

    .line 108
    invoke-static {v1}, Lorg/h2/tools/CompressTool;->getCompressor(I)Lorg/h2/compress/Compressor;

    move-result-object v2

    const/4 v1, 0x1

    .line 110
    :try_start_0
    invoke-static {p1, v1}, Lorg/h2/tools/CompressTool;->readVariableInt([BI)I

    move-result v8

    .line 111
    invoke-static {v8}, Lorg/h2/tools/CompressTool;->getVariableIntLength(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 112
    invoke-static {v8}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v1

    .line 113
    array-length v3, p1

    sub-int v5, v3, v4

    const/4 v7, 0x0

    move-object v3, p1

    move-object v6, v1

    invoke-interface/range {v2 .. v8}, Lorg/h2/compress/Compressor;->expand([BII[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const v1, 0x15ff8

    .line 116
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
