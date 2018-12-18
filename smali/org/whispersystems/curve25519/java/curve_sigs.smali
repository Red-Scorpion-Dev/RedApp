.class public Lorg/whispersystems/curve25519/java/curve_sigs;
.super Ljava/lang/Object;
.source "curve_sigs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static curve25519_keygen([B[B)V
    .locals 6

    .line 8
    new-instance v0, Lorg/whispersystems/curve25519/java/ge_p3;

    invoke-direct {v0}, Lorg/whispersystems/curve25519/java/ge_p3;-><init>()V

    const/16 v1, 0xa

    .line 9
    new-array v2, v1, [I

    .line 10
    new-array v3, v1, [I

    .line 11
    new-array v4, v1, [I

    .line 12
    new-array v1, v1, [I

    .line 29
    invoke-static {v0, p1}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->ge_scalarmult_base(Lorg/whispersystems/curve25519/java/ge_p3;[B)V

    .line 30
    iget-object p1, v0, Lorg/whispersystems/curve25519/java/ge_p3;->Y:[I

    iget-object v5, v0, Lorg/whispersystems/curve25519/java/ge_p3;->Z:[I

    invoke-static {v2, p1, v5}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 31
    iget-object p1, v0, Lorg/whispersystems/curve25519/java/ge_p3;->Z:[I

    iget-object v0, v0, Lorg/whispersystems/curve25519/java/ge_p3;->Y:[I

    invoke-static {v3, p1, v0}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 32
    invoke-static {v4, v3}, Lorg/whispersystems/curve25519/java/fe_invert;->fe_invert([I[I)V

    .line 33
    invoke-static {v1, v2, v4}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 34
    invoke-static {p0, v1}, Lorg/whispersystems/curve25519/java/fe_tobytes;->fe_tobytes([B[I)V

    return-void
.end method

.method public static curve25519_sign(Lorg/whispersystems/curve25519/java/Sha512;[B[B[BI[B)I
    .locals 10

    .line 42
    new-instance v0, Lorg/whispersystems/curve25519/java/ge_p3;

    invoke-direct {v0}, Lorg/whispersystems/curve25519/java/ge_p3;-><init>()V

    const/16 v1, 0x20

    .line 43
    new-array v8, v1, [B

    add-int/lit16 v1, p4, 0x80

    .line 44
    new-array v1, v1, [B

    .line 48
    invoke-static {v0, p2}, Lorg/whispersystems/curve25519/java/ge_scalarmult_base;->ge_scalarmult_base(Lorg/whispersystems/curve25519/java/ge_p3;[B)V

    .line 49
    invoke-static {v8, v0}, Lorg/whispersystems/curve25519/java/ge_p3_tobytes;->ge_p3_tobytes([BLorg/whispersystems/curve25519/java/ge_p3;)V

    const/16 v0, 0x1f

    .line 50
    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    int-to-long v5, p4

    move-object v2, p0

    move-object v3, v1

    move-object v4, p3

    move-object v7, p2

    move-object v9, p5

    .line 53
    invoke-static/range {v2 .. v9}, Lorg/whispersystems/curve25519/java/sign_modified;->crypto_sign_modified(Lorg/whispersystems/curve25519/java/Sha512;[B[BJ[B[B[B)I

    const/4 p0, 0x0

    const/16 p2, 0x40

    .line 55
    invoke-static {v1, p0, p1, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0x3f

    .line 58
    aget-byte p3, p1, p2

    and-int/lit8 p3, p3, 0x7f

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    .line 59
    aget-byte p3, p1, p2

    or-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return p0
.end method

.method public static curve25519_verify(Lorg/whispersystems/curve25519/java/Sha512;[B[B[BI)I
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p4

    const/16 v2, 0xa

    .line 67
    new-array v3, v2, [I

    .line 68
    new-array v4, v2, [I

    .line 69
    new-array v5, v2, [I

    .line 70
    new-array v6, v2, [I

    .line 71
    new-array v7, v2, [I

    .line 72
    new-array v2, v2, [I

    const/16 v8, 0x20

    .line 73
    new-array v8, v8, [B

    add-int/lit8 v9, v1, 0x40

    .line 75
    new-array v13, v9, [B

    .line 76
    new-array v10, v9, [B

    move-object/from16 v11, p2

    .line 88
    invoke-static {v3, v11}, Lorg/whispersystems/curve25519/java/fe_frombytes;->fe_frombytes([I[B)V

    .line 89
    invoke-static {v7}, Lorg/whispersystems/curve25519/java/fe_1;->fe_1([I)V

    .line 90
    invoke-static {v4, v3, v7}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 91
    invoke-static {v5, v3, v7}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 92
    invoke-static {v6, v5}, Lorg/whispersystems/curve25519/java/fe_invert;->fe_invert([I[I)V

    .line 93
    invoke-static {v2, v4, v6}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 94
    invoke-static {v8, v2}, Lorg/whispersystems/curve25519/java/fe_tobytes;->fe_tobytes([B[I)V

    const/16 v2, 0x1f

    .line 97
    aget-byte v3, v8, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    .line 98
    aget-byte v3, v8, v2

    const/16 v4, 0x3f

    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0x80

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    const/4 v2, 0x0

    const/16 v3, 0x40

    .line 99
    invoke-static {v0, v2, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    aget-byte v0, v13, v4

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, v13, v4

    move-object/from16 v0, p3

    .line 102
    invoke-static {v0, v2, v13, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v14, v9

    const-wide/16 v11, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, v8

    .line 110
    invoke-static/range {v9 .. v16}, Lorg/whispersystems/curve25519/java/open;->crypto_sign_open(Lorg/whispersystems/curve25519/java/Sha512;[BJ[BJ[B)I

    move-result v0

    return v0
.end method
