.class public Lorg/whispersystems/curve25519/java/ge_precomp_0;
.super Ljava/lang/Object;
.source "ge_precomp_0.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ge_precomp_0(Lorg/whispersystems/curve25519/java/ge_precomp;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->yplusx:[I

    invoke-static {v0}, Lorg/whispersystems/curve25519/java/fe_1;->fe_1([I)V

    .line 10
    iget-object v0, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->yminusx:[I

    invoke-static {v0}, Lorg/whispersystems/curve25519/java/fe_1;->fe_1([I)V

    .line 11
    iget-object p0, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->xy2d:[I

    invoke-static {p0}, Lorg/whispersystems/curve25519/java/fe_0;->fe_0([I)V

    return-void
.end method
