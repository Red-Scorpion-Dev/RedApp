.class public Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;
.super Ljava/lang/Object;
.source "EdDSAPrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lnet/i2p/crypto/eddsa/EdDSAKey;


# static fields
.field private static final IDLEN_BYTE:I = 0x6

.field private static final OID_BYTE:I = 0xb

.field private static final OID_ED25519:I = 0x70

.field private static final OID_OLD:I = 0x64

.field private static final serialVersionUID:J = 0x53795f57437c2dL


# instance fields
.field private final A:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final Abyte:[B

.field private final a:[B

.field private final edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

.field private final h:[B

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 65
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->decode([B)[B

    move-result-object p1

    const-string v1, "Ed25519"

    invoke-static {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V

    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getSeed()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    .line 57
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getH()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->h:[B

    .line 58
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->geta()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->a:[B

    .line 59
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 60
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->Abyte:[B

    .line 61
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    return-void
.end method

.method private static decode([B)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 202
    :try_start_0
    aget-byte v0, p0, v0

    const/16 v1, 0x8

    const/16 v2, 0x64

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v5, 0x30

    const/4 v6, 0x7

    if-ne v0, v2, :cond_0

    const/16 v7, 0x31

    const/16 v8, 0x8

    goto :goto_0

    :cond_0
    const/16 v7, 0x70

    if-ne v0, v7, :cond_a

    .line 208
    aget-byte v7, p0, v3

    if-ne v7, v6, :cond_1

    const/16 v7, 0x32

    const/4 v8, 0x7

    goto :goto_0

    :cond_1
    const/16 v7, 0x30

    const/4 v8, 0x5

    .line 219
    :goto_0
    array-length v9, p0

    if-ne v9, v7, :cond_9

    const/4 v9, 0x0

    .line 227
    aget-byte v10, p0, v9

    if-ne v10, v5, :cond_8

    const/4 v10, 0x1

    aget-byte v11, p0, v10

    const/4 v12, 0x2

    sub-int/2addr v7, v12

    if-ne v11, v7, :cond_8

    aget-byte v7, p0, v12

    if-ne v7, v12, :cond_8

    const/4 v7, 0x3

    aget-byte v11, p0, v7

    if-ne v11, v10, :cond_8

    const/4 v11, 0x4

    aget-byte v12, p0, v11

    if-nez v12, :cond_8

    aget-byte v12, p0, v4

    if-ne v12, v5, :cond_8

    aget-byte v5, p0, v3

    if-ne v5, v8, :cond_8

    aget-byte v5, p0, v6

    if-ne v5, v3, :cond_8

    const/16 v3, 0x9

    aget-byte v1, p0, v1

    if-ne v1, v7, :cond_8

    aget-byte v1, p0, v3

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_8

    const/16 v1, 0xa

    aget-byte v3, p0, v1

    const/16 v5, 0x65

    if-ne v3, v5, :cond_8

    const/16 v3, 0xc

    const/16 v5, 0xe

    const/16 v7, 0xd

    if-ne v0, v2, :cond_3

    .line 243
    aget-byte v0, p0, v3

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v7

    if-ne v0, v10, :cond_2

    const/16 v0, 0xf

    aget-byte v1, p0, v5

    if-ne v1, v10, :cond_2

    goto :goto_2

    .line 246
    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "unsupported key spec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-ne v8, v6, :cond_5

    .line 259
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_4

    aget-byte v0, p0, v7

    if-nez v0, :cond_4

    const/16 v3, 0xe

    goto :goto_1

    .line 261
    :cond_4
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "unsupported key spec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    add-int/lit8 v0, v3, 0x1

    .line 265
    aget-byte v1, p0, v3

    if-ne v1, v11, :cond_7

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_7

    move v0, v1

    :goto_2
    add-int/lit8 v1, v0, 0x1

    .line 270
    aget-byte v0, p0, v0

    if-ne v0, v11, :cond_6

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 274
    new-array v1, v2, [B

    .line 275
    invoke-static {p0, v0, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 272
    :cond_6
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "unsupported key spec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_7
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "unsupported key spec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_8
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "unsupported key spec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 220
    :cond_9
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "invalid key spec length"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_a
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "unsupported key spec"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 278
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 332
    :cond_0
    instance-of v1, p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 334
    :cond_1
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 335
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getSeed()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 313
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    return-object v0
.end method

.method public getAbyte()[B
    .locals 1

    .line 320
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->Abyte:[B

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "EdDSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    .line 139
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    const-string v1, "Ed25519"

    invoke-static {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 141
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    if-nez v0, :cond_1

    return-object v1

    .line 143
    :cond_1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    array-length v0, v0

    const/16 v1, 0x10

    add-int/2addr v0, v1

    .line 144
    new-array v2, v0, [B

    const/16 v3, 0x30

    const/4 v4, 0x0

    .line 147
    aput-byte v3, v2, v4

    const/4 v5, 0x2

    sub-int/2addr v0, v5

    int-to-byte v0, v0

    const/4 v6, 0x1

    .line 148
    aput-byte v0, v2, v6

    .line 150
    aput-byte v5, v2, v5

    const/4 v0, 0x3

    .line 151
    aput-byte v6, v2, v0

    const/4 v6, 0x4

    .line 153
    aput-byte v4, v2, v6

    const/4 v7, 0x5

    .line 156
    aput-byte v3, v2, v7

    const/4 v3, 0x7

    const/4 v8, 0x6

    .line 157
    aput-byte v7, v2, v8

    const/16 v7, 0x8

    .line 160
    aput-byte v8, v2, v3

    const/16 v3, 0x9

    .line 161
    aput-byte v0, v2, v7

    const/16 v0, 0xa

    const/16 v7, 0x2b

    .line 162
    aput-byte v7, v2, v3

    const/16 v3, 0xb

    const/16 v7, 0x65

    .line 163
    aput-byte v7, v2, v0

    const/16 v0, 0xc

    const/16 v7, 0x70

    .line 164
    aput-byte v7, v2, v3

    const/16 v3, 0xd

    .line 167
    aput-byte v6, v2, v0

    const/16 v0, 0xe

    .line 168
    iget-object v7, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    array-length v7, v7

    add-int/2addr v7, v5

    int-to-byte v5, v7

    aput-byte v5, v2, v3

    const/16 v3, 0xf

    .line 170
    aput-byte v6, v2, v0

    .line 171
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    array-length v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 173
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    array-length v3, v3

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getH()[B
    .locals 1

    .line 299
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->h:[B

    return-object v0
.end method

.method public getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .locals 1

    .line 284
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->edDsaSpec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .line 292
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    return-object v0
.end method

.method public geta()[B
    .locals 1

    .line 306
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->a:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 325
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->seed:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
