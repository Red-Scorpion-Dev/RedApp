.class public Lorg/h2/store/fs/FilePathEncrypt;
.super Lorg/h2/store/fs/FilePathWrapper;
.source "FilePathEncrypt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/fs/FilePathEncrypt$XTS;,
        Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;
    }
.end annotation


# static fields
.field private static final SCHEME:Ljava/lang/String; = "encrypt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathWrapper;-><init>()V

    return-void
.end method

.method public static getPasswordBytes([C)[B
    .locals 6

    .line 114
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 115
    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 117
    aget-char v3, p0, v2

    add-int v4, v2, v2

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    .line 118
    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v3, v3

    .line 119
    aput-byte v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private parse(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 89
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathEncrypt;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathEncrypt;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3a

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v1

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 102
    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t contain encryption algorithm and password"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t start with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathEncrypt;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static register()V
    .locals 1

    .line 35
    new-instance v0, Lorg/h2/store/fs/FilePathEncrypt;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathEncrypt;-><init>()V

    invoke-static {v0}, Lorg/h2/store/fs/FilePath;->register(Lorg/h2/store/fs/FilePath;)V

    return-void
.end method


# virtual methods
.method protected getPrefix()Ljava/lang/String;
    .locals 3

    .line 53
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/h2/store/fs/FilePathEncrypt;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathEncrypt;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "encrypt"

    return-object v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/h2/store/fs/FileChannelInputStream;

    const-string v1, "r"

    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathEncrypt;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/h2/store/fs/FileChannelInputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/h2/store/fs/FileChannelOutputStream;

    const-string v1, "rw"

    invoke-virtual {p0, v1}, Lorg/h2/store/fs/FilePathEncrypt;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/h2/store/fs/FileChannelOutputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/h2/store/fs/FilePathEncrypt;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/h2/store/fs/FilePathEncrypt;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 41
    aget-object v1, v0, v1

    invoke-static {v1, p1}, Lorg/h2/store/fs/FileUtils;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 v1, 0x0

    .line 42
    aget-object v0, v0, v1

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 43
    new-instance v1, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;

    iget-object v2, p0, Lorg/h2/store/fs/FilePathEncrypt;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;-><init>(Ljava/lang/String;[BLjava/nio/channels/FileChannel;)V

    return-object v1
.end method

.method public size()J
    .locals 9

    .line 64
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathEncrypt;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    .line 65
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v6, 0xfff

    and-long/2addr v6, v0

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public unwrap(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lorg/h2/store/fs/FilePathEncrypt;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    return-object p1
.end method
