.class Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyParser;
.super Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;
.source "MessageEncrypter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/crypto/MessageEncrypter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublicKeyParser"
.end annotation


# direct methods
.method private constructor <init>(Lorg/spongycastle/crypto/params/ECDomainParameters;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Lorg/briarproject/bramble/crypto/MessageEncrypter$1;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/crypto/MessageEncrypter$PublicKeyParser;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    return-void
.end method


# virtual methods
.method public readKey(Ljava/io/InputStream;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    :try_start_0
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;->readKey(Ljava/io/InputStream;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 150
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
