.class public Lorg/h2/value/ValueBytes;
.super Lorg/h2/value/Value;
.source "ValueBytes.java"


# static fields
.field private static final EMPTY:Lorg/h2/value/ValueBytes;


# instance fields
.field protected hash:I

.field protected value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lorg/h2/value/ValueBytes;

    sget-object v1, Lorg/h2/util/Utils;->EMPTY_BYTES:[B

    invoke-direct {v0, v1}, Lorg/h2/value/ValueBytes;-><init>([B)V

    sput-object v0, Lorg/h2/value/ValueBytes;->EMPTY:Lorg/h2/value/ValueBytes;

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/h2/value/ValueBytes;->value:[B

    return-void
.end method

.method public static get([B)Lorg/h2/value/ValueBytes;
    .locals 1

    .line 47
    array-length v0, p0

    if-nez v0, :cond_0

    .line 48
    sget-object p0, Lorg/h2/value/ValueBytes;->EMPTY:Lorg/h2/value/ValueBytes;

    return-object p0

    .line 50
    :cond_0
    invoke-static {p0}, Lorg/h2/util/Utils;->cloneByteArray([B)[B

    move-result-object p0

    .line 51
    invoke-static {p0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object p0

    return-object p0
.end method

.method public static getNoCopy([B)Lorg/h2/value/ValueBytes;
    .locals 2

    .line 62
    array-length v0, p0

    if-nez v0, :cond_0

    .line 63
    sget-object p0, Lorg/h2/value/ValueBytes;->EMPTY:Lorg/h2/value/ValueBytes;

    return-object p0

    .line 65
    :cond_0
    new-instance v0, Lorg/h2/value/ValueBytes;

    invoke-direct {v0, p0}, Lorg/h2/value/ValueBytes;-><init>([B)V

    .line 66
    array-length p0, p0

    sget v1, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_MAX_PER_ELEMENT_SIZE:I

    if-le p0, v1, :cond_1

    return-object v0

    .line 69
    :cond_1
    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueBytes;

    return-object p0
.end method


# virtual methods
.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    .line 94
    check-cast p1, Lorg/h2/value/ValueBytes;

    iget-object p1, p1, Lorg/h2/value/ValueBytes;->value:[B

    .line 95
    invoke-virtual {p2}, Lorg/h2/value/CompareMode;->isBinaryUnsigned()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    iget-object p2, p0, Lorg/h2/value/ValueBytes;->value:[B

    invoke-static {p2, p1}, Lorg/h2/util/Utils;->compareNotNullUnsigned([B[B)I

    move-result p1

    return p1

    .line 98
    :cond_0
    iget-object p2, p0, Lorg/h2/value/ValueBytes;->value:[B

    invoke-static {p2, p1}, Lorg/h2/util/Utils;->compareNotNullSigned([B[B)I

    move-result p1

    return p1
.end method

.method public convertPrecision(JZ)Lorg/h2/value/Value;
    .locals 2

    .line 148
    iget-object p3, p0, Lorg/h2/value/ValueBytes;->value:[B

    array-length p3, p3

    int-to-long v0, p3

    cmp-long p3, v0, p1

    if-gtz p3, :cond_0

    return-object p0

    .line 151
    :cond_0
    invoke-static {p1, p2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1

    .line 152
    new-array p2, p1, [B

    .line 153
    iget-object p3, p0, Lorg/h2/value/ValueBytes;->value:[B

    const/4 v0, 0x0

    invoke-static {p3, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    invoke-static {p2}, Lorg/h2/value/ValueBytes;->get([B)Lorg/h2/value/ValueBytes;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 142
    instance-of v0, p1, Lorg/h2/value/ValueBytes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    check-cast p1, Lorg/h2/value/ValueBytes;

    iget-object p1, p1, Lorg/h2/value/ValueBytes;->value:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 89
    invoke-virtual {p0}, Lorg/h2/value/ValueBytes;->getBytesNoCopy()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/Utils;->cloneByteArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesNoCopy()[B
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 4

    .line 132
    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getMemory()I
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/h2/value/ValueBytes;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/value/ValueBytes;->getBytesNoCopy()[B

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/h2/value/ValueBytes;->hash:I

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    invoke-static {v0}, Lorg/h2/util/Utils;->getByteArrayHash([B)I

    move-result v0

    iput v0, p0, Lorg/h2/value/ValueBytes;->hash:I

    .line 116
    :cond_0
    iget v0, p0, Lorg/h2/value/ValueBytes;->hash:I

    return v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/h2/value/ValueBytes;->value:[B

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    return-void
.end method
