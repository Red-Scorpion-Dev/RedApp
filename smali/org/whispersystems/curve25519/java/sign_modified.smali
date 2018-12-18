.class public Lorg/whispersystems/curve25519/java/sign_modified;
.super Ljava/lang/Object;
.source "sign_modified.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crypto_sign_modified(Lorg/whispersystems/curve25519/java/Sha512;[B[BJ[B[B[B)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    const/16 v5, 0x40

    .line 24
    new-array v6, v5, [B

    .line 25
    new-array v7, v5, [B

    .line 26
    new-instance v8, Lorg/whispersystems/curve25519/java/ge_p3;

    invoke-direct {v8}, Lorg/whispersystems/curve25519/java/ge_p3;-><init>()V

    long-to-int v9, v2

    const/4 v10, 0x0

    move-object/from16 v11, p2

    .line 29
    invoke-static {v11, v10, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v9, 0x20

    .line 30
    invoke-static {v4, v10, v1, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, -0x2

    .line 33
    aput-byte v11, v1, v10

    const/4 v11, 0x1

    :goto_0
    if-ge v11, v9, :cond_0

    const/4 v12, -0x1

    .line 35
    aput-byte v12, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v11, 0x40

    add-long/2addr v11, v2

    long-to-int v13, v11

    move-object/from16 v14, p7

    .line 38
    invoke-static {v14, v10, v1, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v13, 0x80

    add-long/2addr v2, v13

    .line 40
    invoke-interface {p0, v6, v1, v2, v3}, Lorg/whispersystems/curve25519/java/Sha512;->calculateDigest([B[BJ)V

    move-object/from16 v2, p6

    .line 41
    invoke-static {v2, v10, v1, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    invoke-static {v6}, Lorg/whispersystems/curve25519/java/sc_reduce;->sc_reduce([B)V

    .line 44
    invoke-static {v8, v6}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->ge_scalarmult_base(Lorg/whispersystems/curve25519/java/ge_p3;[B)V

    .line 45
    invoke-static {v1, v8}, Lorg/whispersystems/curve25519/java/ge_p3_tobytes;->ge_p3_tobytes([BLorg/whispersystems/curve25519/java/ge_p3;)V

    .line 47
    invoke-interface {p0, v7, v1, v11, v12}, Lorg/whispersystems/curve25519/java/Sha512;->calculateDigest([B[BJ)V

    .line 48
    invoke-static {v7}, Lorg/whispersystems/curve25519/java/sc_reduce;->sc_reduce([B)V

    .line 49
    new-array v0, v9, [B

    .line 50
    invoke-static {v0, v7, v4, v6}, Lorg/whispersystems/curve25519/java/sc_muladd;->sc_muladd([B[B[B[B)V

    .line 51
    invoke-static {v0, v10, v1, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v10
.end method
