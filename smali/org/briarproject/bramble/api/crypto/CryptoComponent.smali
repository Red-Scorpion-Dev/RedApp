.class public interface abstract Lorg/briarproject/bramble/api/crypto/CryptoComponent;
.super Ljava/lang/Object;
.source "CryptoComponent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract asciiArmour([BI)Ljava/lang/String;
.end method

.method public abstract decryptWithPassword([BLjava/lang/String;)[B
.end method

.method public varargs abstract deriveKey(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;
.end method

.method public varargs abstract deriveSharedSecret(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/KeyPair;[[B)Lorg/briarproject/bramble/api/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract encryptToKey(Lorg/briarproject/bramble/api/crypto/PublicKey;[B)[B
.end method

.method public abstract encryptWithPassword([BLjava/lang/String;)[B
.end method

.method public abstract generateAgreementKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;
.end method

.method public abstract generateSecretKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
.end method

.method public abstract generateSignatureKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;
.end method

.method public abstract getAgreementKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;
.end method

.method public abstract getMessageKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;
.end method

.method public abstract getSecureRandom()Ljava/security/SecureRandom;
.end method

.method public abstract getSignatureKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;
.end method

.method public varargs abstract hash(Ljava/lang/String;[[B)[B
.end method

.method public varargs abstract mac(Ljava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)[B
.end method

.method public abstract sign(Ljava/lang/String;[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public varargs abstract verifyMac([BLjava/lang/String;Lorg/briarproject/bramble/api/crypto/SecretKey;[[B)Z
.end method

.method public abstract verifySignature([BLjava/lang/String;[B[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
