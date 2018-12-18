.class Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;
.super Ljava/lang/Object;
.source "XSalsa20Poly1305AuthenticatedCipher.java"

# interfaces
.implements Lorg/briarproject/bramble/crypto/AuthenticatedCipher;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final SUBKEY_LENGTH:I = 0x20


# instance fields
.field private encrypting:Z

.field private final poly1305:Lorg/spongycastle/crypto/macs/Poly1305;

.field private final xSalsa20Engine:Lorg/spongycastle/crypto/engines/XSalsa20Engine;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->xSalsa20Engine:Lorg/spongycastle/crypto/engines/XSalsa20Engine;

    .line 46
    new-instance v0, Lorg/spongycastle/crypto/macs/Poly1305;

    invoke-direct {v0}, Lorg/spongycastle/crypto/macs/Poly1305;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->poly1305:Lorg/spongycastle/crypto/macs/Poly1305;

    return-void
.end method


# virtual methods
.method public getMacBytes()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/briarproject/bramble/api/crypto/SecretKey;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    iput-boolean p1, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->encrypting:Z

    .line 53
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/crypto/SecretKey;->getBytes()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 54
    new-instance p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {p2, v0, p3}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 56
    :try_start_0
    iget-object p3, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->xSalsa20Engine:Lorg/spongycastle/crypto/engines/XSalsa20Engine;

    invoke-virtual {p3, p1, p2}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 58
    new-instance p2, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public process([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 65
    iget-boolean v0, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->encrypting:Z

    const/16 v1, 0x10

    if-nez v0, :cond_1

    if-lt p3, v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x20

    .line 69
    :try_start_0
    new-array v3, v0, [B

    .line 70
    new-array v0, v0, [B

    .line 71
    iget-object v2, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->xSalsa20Engine:Lorg/spongycastle/crypto/engines/XSalsa20Engine;

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/4 v7, 0x0

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->processBytes([BII[BI)I

    .line 74
    invoke-static {v0}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->clamp([B)V

    .line 77
    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 78
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->poly1305:Lorg/spongycastle/crypto/macs/Poly1305;

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/macs/Poly1305;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 81
    iget-boolean v0, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->encrypting:Z

    if-nez v0, :cond_4

    .line 82
    new-array v0, v1, [B

    .line 83
    iget-object v2, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->poly1305:Lorg/spongycastle/crypto/macs/Poly1305;

    add-int/lit8 v3, p2, 0x10

    add-int/lit8 v4, p3, -0x10

    invoke-virtual {v2, p1, v3, v4}, Lorg/spongycastle/crypto/macs/Poly1305;->update([BII)V

    .line 84
    iget-object v2, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->poly1305:Lorg/spongycastle/crypto/macs/Poly1305;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->doFinal([BI)I

    const/4 v2, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 88
    aget-byte v4, v0, v3

    add-int v5, p2, v3

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    goto :goto_2

    .line 90
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->xSalsa20Engine:Lorg/spongycastle/crypto/engines/XSalsa20Engine;

    iget-boolean v1, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->encrypting:Z

    if-eqz v1, :cond_5

    :goto_3
    move v2, p2

    goto :goto_4

    :cond_5
    add-int/lit8 p2, p2, 0x10

    goto :goto_3

    :goto_4
    iget-boolean p2, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->encrypting:Z

    if-eqz p2, :cond_6

    move v3, p3

    goto :goto_5

    :cond_6
    add-int/lit8 p2, p3, -0x10

    move v3, p2

    :goto_5
    iget-boolean p2, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->encrypting:Z

    if-eqz p2, :cond_7

    add-int/lit8 p2, p5, 0x10

    move v5, p2

    goto :goto_6

    :cond_7
    move v5, p5

    :goto_6
    move-object v1, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->processBytes([BII[BI)I

    move-result p1

    .line 100
    iget-boolean p2, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->encrypting:Z

    if-eqz p2, :cond_8

    .line 101
    iget-object p2, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->poly1305:Lorg/spongycastle/crypto/macs/Poly1305;

    add-int/lit8 v0, p5, 0x10

    invoke-virtual {p2, p4, v0, p3}, Lorg/spongycastle/crypto/macs/Poly1305;->update([BII)V

    .line 102
    iget-object p2, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->poly1305:Lorg/spongycastle/crypto/macs/Poly1305;

    invoke-virtual {p2, p4, p5}, Lorg/spongycastle/crypto/macs/Poly1305;->doFinal([BI)I

    .line 105
    :cond_8
    iget-boolean p2, p0, Lorg/briarproject/bramble/crypto/XSalsa20Poly1305AuthenticatedCipher;->encrypting:Z
    :try_end_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_9

    add-int/lit8 p1, p1, 0x10

    :cond_9
    return p1

    :catch_0
    move-exception p1

    .line 107
    new-instance p2, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
