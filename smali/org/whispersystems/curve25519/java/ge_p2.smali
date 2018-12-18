.class public Lorg/whispersystems/curve25519/java/ge_p2;
.super Ljava/lang/Object;
.source "ge_p2.java"


# instance fields
.field public X:[I

.field public Y:[I

.field public Z:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 11
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p2;->X:[I

    .line 12
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/whispersystems/curve25519/java/ge_p2;->Y:[I

    .line 13
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/whispersystems/curve25519/java/ge_p2;->Z:[I

    return-void
.end method
