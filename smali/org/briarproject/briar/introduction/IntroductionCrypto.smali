.class interface abstract Lorg/briarproject/briar/introduction/IntroductionCrypto;
.super Ljava/lang/Object;
.source "IntroductionCrypto.java"


# virtual methods
.method public abstract activateMac(Lorg/briarproject/briar/introduction/IntroduceeSession;)[B
.end method

.method public abstract authMac(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/identity/AuthorId;)[B
.end method

.method public abstract deriveMacKey(Lorg/briarproject/bramble/api/crypto/SecretKey;Z)Lorg/briarproject/bramble/api/crypto/SecretKey;
.end method

.method public abstract deriveMasterKey(Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract generateKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;
.end method

.method public abstract getSessionId(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/client/SessionId;
.end method

.method public abstract isAlice(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
.end method

.method public abstract sign(Lorg/briarproject/bramble/api/crypto/SecretKey;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract verifyActivateMac([BLorg/briarproject/briar/introduction/IntroduceeSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract verifyAuthMac([BLorg/briarproject/briar/introduction/IntroduceeSession;Lorg/briarproject/bramble/api/identity/AuthorId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract verifySignature([BLorg/briarproject/briar/introduction/IntroduceeSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
