.class Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyEncoder;
.super Ljava/lang/Object;
.source "MessageEncrypter.java"

# interfaces
.implements Lorg/spongycastle/crypto/KeyEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/crypto/MessageEncrypter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublicKeyEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/crypto/MessageEncrypter$1;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1

    .line 132
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
