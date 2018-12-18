.class public Lorg/whispersystems/curve25519/java/open;
.super Ljava/lang/Object;
.source "open.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crypto_sign_open(Lorg/whispersystems/curve25519/java/Sha512;[BJ[BJ[B)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    const/16 v6, 0x20

    .line 19
    new-array v7, v6, [B

    .line 20
    new-array v8, v6, [B

    .line 21
    new-array v9, v6, [B

    const/16 v10, 0x40

    .line 22
    new-array v11, v10, [B

    .line 23
    new-array v12, v6, [B

    .line 24
    new-instance v13, Lorg/whispersystems/curve25519/java/ge_p3;

    invoke-direct {v13}, Lorg/whispersystems/curve25519/java/ge_p3;-><init>()V

    .line 25
    new-instance v14, Lorg/whispersystems/curve25519/java/ge_p2;

    invoke-direct {v14}, Lorg/whispersystems/curve25519/java/ge_p2;-><init>()V

    const-wide/16 v15, 0x40

    const/16 v17, -0x1

    cmp-long v18, v3, v15

    if-gez v18, :cond_0

    return v17

    :cond_0
    const/16 v18, 0x3f

    .line 28
    aget-byte v15, v2, v18

    and-int/lit16 v15, v15, 0xe0

    if-eqz v15, :cond_1

    return v17

    .line 29
    :cond_1
    invoke-static {v13, v5}, Lorg/whispersystems/curve25519/java/ge_frombytes;->ge_frombytes_negate_vartime(Lorg/whispersystems/curve25519/java/ge_p3;[B)I

    move-result v15

    if-eqz v15, :cond_2

    return v17

    .line 31
    :cond_2
    new-array v15, v10, [B

    move-object/from16 v19, v11

    const-wide/16 v10, 0x20

    .line 32
    invoke-interface {v0, v15, v5, v10, v11}, Lorg/whispersystems/curve25519/java/Sha512;->calculateDigest([B[BJ)V

    const/4 v10, 0x0

    .line 34
    invoke-static {v5, v10, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    invoke-static {v2, v10, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    invoke-static {v2, v6, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    long-to-int v5, v3

    .line 38
    invoke-static {v2, v10, v1, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    invoke-static {v7, v10, v1, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v2, v19

    .line 40
    invoke-interface {v0, v2, v1, v3, v4}, Lorg/whispersystems/curve25519/java/Sha512;->calculateDigest([B[BJ)V

    .line 41
    invoke-static {v2}, Lorg/whispersystems/curve25519/java/sc_reduce;->sc_reduce([B)V

    .line 43
    invoke-static {v14, v2, v13, v9}, Lorg/whispersystems/curve25519/java/ge_double_scalarmult;->ge_double_scalarmult_vartime(Lorg/whispersystems/curve25519/java/ge_p2;[BLorg/whispersystems/curve25519/java/ge_p3;[B)V

    .line 44
    invoke-static {v12, v14}, Lorg/whispersystems/curve25519/java/ge_tobytes;->ge_tobytes([BLorg/whispersystems/curve25519/java/ge_p2;)V

    .line 45
    invoke-static {v12, v8}, Lorg/whispersystems/curve25519/java/crypto_verify_32;->crypto_verify_32([B[B)I

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v5, 0x40

    sub-long/2addr v3, v5

    long-to-int v0, v3

    const/16 v2, 0x40

    .line 46
    invoke-static {v1, v2, v1, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v10

    :cond_3
    return v17
.end method
