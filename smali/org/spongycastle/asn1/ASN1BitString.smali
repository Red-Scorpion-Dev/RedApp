.class public abstract Lorg/spongycastle/asn1/ASN1BitString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "ASN1BitString.java"


# static fields
.field private static final table:[C


# instance fields
.field protected final data:[B

.field protected final padBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 18
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/ASN1BitString;->table:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 111
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_3

    .line 116
    array-length v0, p1

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "zero length data with non-zero pad bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x7

    if-gt p2, v0, :cond_2

    if-ltz p2, :cond_2

    .line 125
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1BitString;->data:[B

    .line 126
    iput p2, p0, Lorg/spongycastle/asn1/ASN1BitString;->padBits:I

    return-void

    .line 122
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static derForm([BI)[B
    .locals 3

    .line 234
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    if-lez p1, :cond_0

    .line 238
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    aget-byte v1, v0, p0

    const/16 v2, 0xff

    shl-int p1, v2, p1

    and-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 221
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1BitString;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 226
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/ASN1BitString;

    .line 228
    iget v0, p0, Lorg/spongycastle/asn1/ASN1BitString;->padBits:I

    iget v2, p1, Lorg/spongycastle/asn1/ASN1BitString;->padBits:I

    if-ne v0, v2, :cond_1

    .line 229
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method abstract encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getBytes()[B
    .locals 2

    .line 200
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1BitString;->data:[B

    iget v1, p0, Lorg/spongycastle/asn1/ASN1BitString;->padBits:I

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/ASN1BitString;->derForm([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getPadBits()I
    .locals 1

    .line 205
    iget v0, p0, Lorg/spongycastle/asn1/ASN1BitString;->padBits:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    new-instance v2, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 142
    :try_start_0
    invoke-virtual {v2, p0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 151
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 153
    sget-object v3, Lorg/spongycastle/asn1/ASN1BitString;->table:[C

    aget-byte v4, v1, v2

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    sget-object v3, Lorg/spongycastle/asn1/ASN1BitString;->table:[C

    aget-byte v4, v1, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 146
    new-instance v1, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error encoding BitString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 215
    iget v0, p0, Lorg/spongycastle/asn1/ASN1BitString;->padBits:I

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 281
    new-instance v0, Lorg/spongycastle/asn1/DERBitString;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1BitString;->data:[B

    iget v2, p0, Lorg/spongycastle/asn1/ASN1BitString;->padBits:I

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1BitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
