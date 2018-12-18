.class Lorg/briarproject/bramble/crypto/Sec1PrivateKey;
.super Ljava/lang/Object;
.source "Sec1PrivateKey.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/PrivateKey;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final bytesPerInt:I

.field private final key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;->key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    add-int/lit8 p2, p2, 0x7

    .line 18
    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;->bytesPerInt:I

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 4

    .line 23
    iget v0, p0, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;->bytesPerInt:I

    new-array v0, v0, [B

    .line 24
    iget-object v1, p0, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;->key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 25
    iget v2, p0, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;->bytesPerInt:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lorg/briarproject/bramble/crypto/Sec1Utils;->convertToFixedLength([B[BII)V

    return-object v0
.end method

.method getKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/crypto/Sec1PrivateKey;->key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method
