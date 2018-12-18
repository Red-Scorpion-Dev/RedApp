.class public Lorg/whispersystems/curve25519/java/ge_cached;
.super Ljava/lang/Object;
.source "ge_cached.java"


# instance fields
.field public T2d:[I

.field public YminusX:[I

.field public YplusX:[I

.field public Z:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 12
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/whispersystems/curve25519/java/ge_cached;->YplusX:[I

    .line 13
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/whispersystems/curve25519/java/ge_cached;->YminusX:[I

    .line 14
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/whispersystems/curve25519/java/ge_cached;->Z:[I

    .line 15
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/whispersystems/curve25519/java/ge_cached;->T2d:[I

    return-void
.end method
