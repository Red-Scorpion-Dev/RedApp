.class public Lorg/h2/store/DataReader;
.super Ljava/io/Reader;
.source "DataReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/DataReader$FastEOFException;
    }
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/h2/store/DataReader;->in:Ljava/io/InputStream;

    return-void
.end method

.method private readChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    int-to-char v0, v0

    return v0

    :cond_0
    const/16 v1, 0xe0

    if-lt v0, v1, :cond_1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    .line 152
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    .line 156
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private readString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 137
    invoke-direct {p0}, Lorg/h2/store/DataReader;->readChar()C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    if-nez p3, :cond_0

    return p2

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    .line 174
    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/DataReader;->readChar()C

    move-result v0

    aput-char v0, p1, p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    return p2

    :cond_2
    return p3
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/h2/store/DataReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    int-to-byte v0, v0

    return v0

    .line 39
    :cond_0
    new-instance v0, Lorg/h2/store/DataReader$FastEOFException;

    invoke-direct {v0}, Lorg/h2/store/DataReader$FastEOFException;-><init>()V

    throw v0
.end method

.method public readFully([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/h2/store/DataReader;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result p1

    if-lt p1, p2, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance p1, Lorg/h2/store/DataReader$FastEOFException;

    invoke-direct {p1}, Lorg/h2/store/DataReader$FastEOFException;-><init>()V

    throw p1
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readVarInt()I

    move-result v0

    .line 131
    invoke-direct {p0, v0}, Lorg/h2/store/DataReader;->readString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readVarInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 55
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    return v0

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 60
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    return v0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 65
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    return v0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 69
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v1

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    return v0
.end method

.method public readVarLong()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    const/4 v6, 0x7

    .line 84
    :goto_0
    invoke-virtual {p0}, Lorg/h2/store/DataReader;->readByte()B

    move-result v7

    int-to-long v7, v7

    and-long v9, v7, v4

    shl-long/2addr v9, v6

    or-long/2addr v0, v9

    cmp-long v9, v7, v2

    if-ltz v9, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v6, v6, 0x7

    goto :goto_0
.end method
