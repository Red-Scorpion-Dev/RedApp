.class Lorg/briarproject/bramble/crypto/Sec1PublicKey;
.super Ljava/lang/Object;
.source "Sec1PublicKey.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/PublicKey;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/Sec1PublicKey;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/Sec1PublicKey;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    return-object v0
.end method

.method getKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/Sec1PublicKey;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method
