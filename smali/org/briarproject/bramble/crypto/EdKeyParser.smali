.class Lorg/briarproject/bramble/crypto/EdKeyParser;
.super Ljava/lang/Object;
.source "EdKeyParser.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/KeyParser;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePrivateKey([B)Lorg/briarproject/bramble/api/crypto/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 23
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 24
    new-instance v0, Lorg/briarproject/bramble/crypto/EdPrivateKey;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/crypto/EdPrivateKey;-><init>([B)V

    return-object v0

    .line 23
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1
.end method

.method public parsePublicKey([B)Lorg/briarproject/bramble/api/crypto/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 16
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 17
    new-instance v0, Lorg/briarproject/bramble/crypto/EdPublicKey;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/crypto/EdPublicKey;-><init>([B)V

    return-object v0

    .line 16
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p1
.end method
