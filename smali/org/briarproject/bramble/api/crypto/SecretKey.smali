.class public Lorg/briarproject/bramble/api/crypto/SecretKey;
.super Ljava/lang/Object;
.source "SecretKey.java"


# static fields
.field public static final LENGTH:I = 0x20


# instance fields
.field private final key:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/api/crypto/SecretKey;->key:[B

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/api/crypto/SecretKey;->key:[B

    return-object v0
.end method
