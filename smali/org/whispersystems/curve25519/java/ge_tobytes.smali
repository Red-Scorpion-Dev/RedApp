.class public Lorg/whispersystems/curve25519/java/ge_tobytes;
.super Ljava/lang/Object;
.source "ge_tobytes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ge_tobytes([BLorg/whispersystems/curve25519/java/ge_p2;)V
    .locals 4

    const/16 v0, 0xa

    .line 9
    new-array v1, v0, [I

    .line 10
    new-array v2, v0, [I

    .line 11
    new-array v0, v0, [I

    .line 13
    iget-object v3, p1, Lorg/whispersystems/curve25519/java/ge_p2;->Z:[I

    invoke-static {v1, v3}, Lorg/whispersystems/curve25519/java/fe_invert;->fe_invert([I[I)V

    .line 14
    iget-object v3, p1, Lorg/whispersystems/curve25519/java/ge_p2;->X:[I

    invoke-static {v2, v3, v1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 15
    iget-object p1, p1, Lorg/whispersystems/curve25519/java/ge_p2;->Y:[I

    invoke-static {v0, p1, v1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 16
    invoke-static {p0, v0}, Lorg/whispersystems/curve25519/java/fe_tobytes;->fe_tobytes([B[I)V

    const/16 p1, 0x1f

    .line 17
    aget-byte v0, p0, p1

    invoke-static {v2}, Lorg/whispersystems/curve25519/java/fe_isnegative;->fe_isnegative([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    return-void
.end method
