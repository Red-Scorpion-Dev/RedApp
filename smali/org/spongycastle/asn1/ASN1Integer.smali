.class public Lorg/spongycastle/asn1/ASN1Integer;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "ASN1Integer.java"


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 81
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 92
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    .line 207
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Integer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 212
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/ASN1Integer;

    .line 214
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method encodedLength()I
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 2

    .line 161
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 196
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 198
    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1Integer;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v0, 0x4

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
