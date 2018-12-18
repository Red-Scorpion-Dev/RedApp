.class public Lorg/whispersystems/curve25519/java/ge_frombytes;
.super Ljava/lang/Object;
.source "ge_frombytes.java"


# static fields
.field static d:[I

.field static sqrtm1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    .line 7
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/whispersystems/curve25519/java/ge_frombytes;->d:[I

    .line 12
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/whispersystems/curve25519/java/ge_frombytes;->sqrtm1:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xa6874a
        0xd37285
        -0xea9143
        0x6a0a0f
        0x1c029
        -0x861768
        -0x5fc344
        -0x318e67
        -0x11d4900
        -0xb7f24c
    .end array-data

    :array_1
    .array-data 4
        -0x1f15f50
        -0x79362d
        0x8f189e
        0x35697f
        0xbd0c60
        -0x42859
        -0x17fb361
        -0x1e9a96
        0x4fc1e
        0xae0c92
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ge_frombytes_negate_vartime(Lorg/whispersystems/curve25519/java/ge_p3;[B)I
    .locals 7

    const/16 v0, 0xa

    .line 19
    new-array v1, v0, [I

    .line 20
    new-array v2, v0, [I

    .line 21
    new-array v3, v0, [I

    .line 22
    new-array v4, v0, [I

    .line 23
    new-array v0, v0, [I

    .line 25
    iget-object v5, p0, Lorg/whispersystems/curve25519/java/ge_p3;->Y:[I

    invoke-static {v5, p1}, Lorg/whispersystems/curve25519/java/fe_frombytes;->fe_frombytes([I[B)V

    .line 26
    iget-object v5, p0, Lorg/whispersystems/curve25519/java/ge_p3;->Z:[I

    invoke-static {v5}, Lorg/whispersystems/curve25519/java/fe_1;->fe_1([I)V

    .line 27
    iget-object v5, p0, Lorg/whispersystems/curve25519/java/ge_p3;->Y:[I

    invoke-static {v1, v5}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 28
    sget-object v5, Lorg/whispersystems/curve25519/java/ge_frombytes;->d:[I

    invoke-static {v2, v1, v5}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 29
    iget-object v5, p0, Lorg/whispersystems/curve25519/java/ge_p3;->Z:[I

    invoke-static {v1, v1, v5}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 30
    iget-object v5, p0, Lorg/whispersystems/curve25519/java/ge_p3;->Z:[I

    invoke-static {v2, v2, v5}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 32
    invoke-static {v3, v2}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 33
    invoke-static {v3, v3, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 34
    iget-object v5, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v5, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 35
    iget-object v5, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    iget-object v6, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v5, v6, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 36
    iget-object v5, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    iget-object v6, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v5, v6, v1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 38
    iget-object v5, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    iget-object v6, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v5, v6}, Lorg/whispersystems/curve25519/java/fe_pow22523;->fe_pow22523([I[I)V

    .line 39
    iget-object v5, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    iget-object v6, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v5, v6, v3}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 40
    iget-object v3, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    iget-object v5, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v3, v5, v1}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 42
    iget-object v3, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v4, v3}, Lorg/whispersystems/curve25519/java/fe_sq;->fe_sq([I[I)V

    .line 43
    invoke-static {v4, v4, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 44
    invoke-static {v0, v4, v1}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 45
    invoke-static {v0}, Lorg/whispersystems/curve25519/java/fe_isnonzero;->fe_isnonzero([I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-static {v0, v4, v1}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 47
    invoke-static {v0}, Lorg/whispersystems/curve25519/java/fe_isnonzero;->fe_isnonzero([I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    iget-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    sget-object v2, Lorg/whispersystems/curve25519/java/ge_frombytes;->sqrtm1:[I

    invoke-static {v0, v1, v2}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    .line 51
    :cond_1
    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v0}, Lorg/whispersystems/curve25519/java/fe_isnegative;->fe_isnegative([I)I

    move-result v0

    const/16 v1, 0x1f

    aget-byte p1, p1, v1

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 p1, p1, 0x1

    if-ne v0, p1, :cond_2

    .line 52
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {p1, v0}, Lorg/whispersystems/curve25519/java/fe_neg;->fe_neg([I[I)V

    .line 55
    :cond_2
    iget-object p1, p0, Lorg/whispersystems/curve25519/java/ge_p3;->T:[I

    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    iget-object p0, p0, Lorg/whispersystems/curve25519/java/ge_p3;->Y:[I

    invoke-static {p1, v0, p0}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    const/4 p0, 0x0

    return p0
.end method
