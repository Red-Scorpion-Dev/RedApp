.class public Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;
.super Lnet/i2p/crypto/eddsa/math/Encoding;
.source "BigIntegerLittleEndianEncoding.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xe27f44a2a9eddL


# instance fields
.field private mask:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/Encoding;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([B)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 3

    .line 70
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    if-eqz v0, :cond_1

    .line 72
    array-length v0, p1

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_0

    .line 74
    new-instance v0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->toBigInteger([B)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->mask:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;Ljava/math/BigInteger;)V

    return-object v0

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "field not set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/math/BigInteger;)[B
    .locals 4

    .line 47
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 50
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 51
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 52
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    array-length p1, p1

    :goto_1
    array-length v2, v0

    if-ge p1, v2, :cond_1

    .line 55
    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "field not set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B
    .locals 1

    .line 35
    check-cast p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->mask:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->encode(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public isNegative(Lnet/i2p/crypto/eddsa/math/FieldElement;)Z
    .locals 1

    .line 100
    check-cast p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;

    iget-object p1, p1, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement;->bi:Ljava/math/BigInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized setField(Lnet/i2p/crypto/eddsa/math/Field;)V
    .locals 1

    monitor-enter p0

    .line 30
    :try_start_0
    invoke-super {p0, p1}, Lnet/i2p/crypto/eddsa/math/Encoding;->setField(Lnet/i2p/crypto/eddsa/math/Field;)V

    .line 31
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding;->mask:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    throw p1
.end method

.method public toBigInteger([B)Ljava/math/BigInteger;
    .locals 4

    .line 84
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 85
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 86
    array-length v2, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method
