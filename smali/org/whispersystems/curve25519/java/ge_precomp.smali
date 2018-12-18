.class public Lorg/whispersystems/curve25519/java/ge_precomp;
.super Ljava/lang/Object;
.source "ge_precomp.java"


# instance fields
.field public xy2d:[I

.field public yminusx:[I

.field public yplusx:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 11
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->yplusx:[I

    .line 12
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->yminusx:[I

    .line 13
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->xy2d:[I

    return-void
.end method

.method public constructor <init>([I[I[I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->yplusx:[I

    .line 19
    iput-object p2, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->yminusx:[I

    .line 20
    iput-object p3, p0, Lorg/whispersystems/curve25519/java/ge_precomp;->xy2d:[I

    return-void
.end method
