.class public Lorg/whispersystems/curve25519/java/ge_p3_to_cached;
.super Ljava/lang/Object;
.source "ge_p3_to_cached.java"


# static fields
.field static d2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 11
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/whispersystems/curve25519/java/ge_p3_to_cached;->d2:[I

    return-void

    :array_0
    .array-data 4
        -0x14d0ea7
        -0x591af6
        -0x1d52285
        0xd4141e
        0x38052
        0xf3d130
        -0xbf8689
        -0x631cce
        0x1c56e00
        0x901b67
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ge_p3_to_cached(Lorg/whispersystems/curve25519/java/ge_cached;Lorg/whispersystems/curve25519/java/ge_p3;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_cached;->YplusX:[I

    iget-object v1, p1, Lorg/whispersystems/curve25519/java/ge_p3;->Y:[I

    iget-object v2, p1, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v0, v1, v2}, Lorg/whispersystems/curve25519/java/fe_add;->fe_add([I[I[I)V

    .line 19
    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_cached;->YminusX:[I

    iget-object v1, p1, Lorg/whispersystems/curve25519/java/ge_p3;->Y:[I

    iget-object v2, p1, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    invoke-static {v0, v1, v2}, Lorg/whispersystems/curve25519/java/fe_sub;->fe_sub([I[I[I)V

    .line 20
    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_cached;->Z:[I

    iget-object v1, p1, Lorg/whispersystems/curve25519/java/ge_p3;->Z:[I

    invoke-static {v0, v1}, Lorg/whispersystems/curve25519/java/fe_copy;->fe_copy([I[I)V

    .line 21
    iget-object p0, p0, Lorg/whispersystems/curve25519/java/ge_cached;->T2d:[I

    iget-object p1, p1, Lorg/whispersystems/curve25519/java/ge_p3;->T:[I

    sget-object v0, Lorg/whispersystems/curve25519/java/ge_p3_to_cached;->d2:[I

    invoke-static {p0, p1, v0}, Lorg/whispersystems/curve25519/java/fe_mul;->fe_mul([I[I[I)V

    return-void
.end method
