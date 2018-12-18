.class public Lorg/whispersystems/curve25519/java/ge_p3;
.super Ljava/lang/Object;
.source "ge_p3.java"


# instance fields
.field public T:[I

.field public X:[I

.field public Y:[I

.field public Z:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 12
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p3;->X:[I

    .line 13
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p3;->Y:[I

    .line 14
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p3;->Z:[I

    .line 15
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/whispersystems/curve25519/java/ge_p3;->T:[I

    return-void
.end method
