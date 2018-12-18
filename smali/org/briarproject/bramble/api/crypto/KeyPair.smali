.class public Lorg/briarproject/bramble/api/crypto/KeyPair;
.super Ljava/lang/Object;
.source "KeyPair.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final privateKey:Lorg/briarproject/bramble/api/crypto/PrivateKey;

.field private final publicKey:Lorg/briarproject/bramble/api/crypto/PublicKey;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/PrivateKey;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/bramble/api/crypto/KeyPair;->publicKey:Lorg/briarproject/bramble/api/crypto/PublicKey;

    .line 19
    iput-object p2, p0, Lorg/briarproject/bramble/api/crypto/KeyPair;->privateKey:Lorg/briarproject/bramble/api/crypto/PrivateKey;

    return-void
.end method


# virtual methods
.method public getPrivate()Lorg/briarproject/bramble/api/crypto/PrivateKey;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/api/crypto/KeyPair;->privateKey:Lorg/briarproject/bramble/api/crypto/PrivateKey;

    return-object v0
.end method

.method public getPublic()Lorg/briarproject/bramble/api/crypto/PublicKey;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/api/crypto/KeyPair;->publicKey:Lorg/briarproject/bramble/api/crypto/PublicKey;

    return-object v0
.end method
