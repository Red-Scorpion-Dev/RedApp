.class public final Lnet/i2p/crypto/eddsa/EdDSAEngine;
.super Ljava/security/Signature;
.source "EdDSAEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/i2p/crypto/eddsa/EdDSAEngine$OneShotSpec;
    }
.end annotation


# static fields
.field public static final ONE_SHOT_MODE:Ljava/security/spec/AlgorithmParameterSpec;

.field public static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "NONEwithEdDSA"


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private digest:Ljava/security/MessageDigest;

.field private key:Lnet/i2p/crypto/eddsa/EdDSAKey;

.field private oneShotBytes:[B

.field private oneShotLength:I

.field private oneShotMode:Z

.field private oneShotOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSAEngine$OneShotSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/i2p/crypto/eddsa/EdDSAEngine$OneShotSpec;-><init>(Lnet/i2p/crypto/eddsa/EdDSAEngine$1;)V

    sput-object v0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->ONE_SHOT_MODE:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "NONEwithEdDSA"

    .line 92
    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;-><init>()V

    .line 101
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    return-void
.end method

.method private digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V
    .locals 3

    .line 138
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v0

    .line 139
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getH()[B

    move-result-object p1

    div-int/lit8 v2, v0, 0x8

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, v2

    invoke-virtual {v1, p1, v2, v0}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 105
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 107
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_1
    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    return-void
.end method

.method private x_engineSign()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getScalarOps()Lnet/i2p/crypto/eddsa/math/ScalarOps;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v2, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->geta()[B

    move-result-object v2

    .line 213
    iget-boolean v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    .line 217
    iget v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotOffset:I

    .line 218
    iget v5, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotLength:I

    goto :goto_1

    .line 215
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "update() not called first"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_2

    .line 221
    new-array v3, v4, [B

    goto :goto_0

    .line 223
    :cond_2
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 225
    :goto_0
    array-length v5, v3

    .line 228
    :goto_1
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v6, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 229
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 233
    invoke-interface {v1, v6}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->reduce([B)[B

    move-result-object v6

    .line 236
    iget-object v7, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v7}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v7

    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->scalarMultiply([B)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    .line 237
    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v7

    .line 240
    iget-object v8, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v8, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 241
    iget-object v8, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    iget-object v9, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v9, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    invoke-virtual {v9}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;->getAbyte()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 242
    iget-object v8, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v8, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 243
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 244
    invoke-interface {v1, v3}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->reduce([B)[B

    move-result-object v3

    .line 245
    invoke-interface {v1, v3, v2, v6}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->multiplyAndAdd([B[B[B)[B

    move-result-object v1

    .line 248
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v0

    .line 249
    div-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private x_engineVerify([B)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v0

    .line 266
    array-length v1, p1

    div-int/lit8 v2, v0, 0x4

    if-ne v1, v2, :cond_5

    .line 270
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    div-int/lit8 v0, v0, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 271
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v4, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 275
    iget-boolean v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    .line 279
    iget v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotOffset:I

    .line 280
    iget v5, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotLength:I

    goto :goto_1

    .line 277
    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "update() not called first"

    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_1
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_2

    .line 283
    new-array v1, v3, [B

    goto :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 287
    :goto_0
    array-length v5, v1

    const/4 v4, 0x0

    .line 289
    :goto_1
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v6, v1, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 290
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 293
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v4}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getScalarOps()Lnet/i2p/crypto/eddsa/math/ScalarOps;

    move-result-object v4

    invoke-interface {v4, v1}, Lnet/i2p/crypto/eddsa/math/ScalarOps;->reduce([B)[B

    move-result-object v1

    .line 295
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 297
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v2}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v4, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getNegativeA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    invoke-virtual {v2, v4, v1, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->doubleScalarMultiplyVariableTime(Lnet/i2p/crypto/eddsa/math/GroupElement;[B[B)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 303
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 304
    aget-byte v2, v0, v1

    aget-byte v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    return p1

    .line 267
    :cond_5
    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "signature length is wrong"

    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 476
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 116
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    if-eqz v0, :cond_2

    .line 117
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 118
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 120
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot get required digest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for private key."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v0}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :goto_0
    invoke-direct {p0, p1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V

    return-void

    .line 128
    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Key hash algorithm does not match chosen digest"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EdDSA private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 145
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    if-eqz v0, :cond_2

    .line 146
    check-cast p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    .line 148
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    if-nez p1, :cond_0

    .line 151
    :try_start_0
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {p1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot get required digest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {v1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for private key."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_0
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    invoke-interface {p1}, Lnet/i2p/crypto/eddsa/EdDSAKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 156
    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Key hash algorithm does not match chosen digest"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EdDSA public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 468
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "engineSetParameter unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 454
    sget-object v0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->ONE_SHOT_MODE:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    iget-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    if-nez p1, :cond_1

    iget-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-gtz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 457
    iput-boolean p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    goto :goto_0

    .line 456
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "update() already called"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 459
    :cond_2
    invoke-super {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    return-void
.end method

.method protected engineSign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 196
    :try_start_0
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->x_engineSign()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 201
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 202
    invoke-direct {p0, v1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 198
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    .line 201
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->key:Lnet/i2p/crypto/eddsa/EdDSAKey;

    check-cast v1, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    .line 202
    invoke-direct {p0, v1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->digestInitSign(Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;)V

    .line 203
    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 167
    iget-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    .line 171
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    .line 168
    :cond_1
    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "unsupported in one-shot mode"

    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineUpdate([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    if-nez v0, :cond_0

    .line 183
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotBytes:[B

    .line 184
    iput p2, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotOffset:I

    .line 185
    iput p3, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotLength:I

    goto :goto_0

    .line 182
    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "update() already called"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_2

    .line 188
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    .line 189
    :cond_2
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 257
    :try_start_0
    invoke-direct {p0, p1}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->x_engineVerify([B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->reset()V

    throw p1
.end method

.method public signOneShot([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 327
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->signOneShot([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public signOneShot([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    .line 350
    invoke-virtual {p0, p1, p2, p3}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->update([BII)V

    .line 351
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->sign()[B

    move-result-object p1

    return-object p1
.end method

.method public verifyOneShot([BII[B)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 395
    array-length v6, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verifyOneShot([BII[BII)Z

    move-result p1

    return p1
.end method

.method public verifyOneShot([BII[BII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lnet/i2p/crypto/eddsa/EdDSAEngine;->oneShotMode:Z

    .line 444
    invoke-virtual {p0, p1, p2, p3}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->update([BII)V

    .line 445
    invoke-virtual {p0, p4, p5, p6}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verify([BII)Z

    move-result p1

    return p1
.end method

.method public verifyOneShot([B[B)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 372
    array-length v3, p1

    array-length v6, p2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verifyOneShot([BII[BII)Z

    move-result p1

    return p1
.end method

.method public verifyOneShot([B[BII)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 418
    array-length v3, p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/EdDSAEngine;->verifyOneShot([BII[BII)Z

    move-result p1

    return p1
.end method
