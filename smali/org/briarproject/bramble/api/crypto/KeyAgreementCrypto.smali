.class public interface abstract Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;
.super Ljava/lang/Object;
.source "KeyAgreementCrypto.java"


# static fields
.field public static final COMMIT_LABEL:Ljava/lang/String; = "org.briarproject.bramble.keyagreement/COMMIT"

.field public static final CONFIRMATION_KEY_LABEL:Ljava/lang/String; = "org.briarproject.bramble.keyagreement/CONFIRMATION_KEY"

.field public static final CONFIRMATION_MAC_LABEL:Ljava/lang/String; = "org.briarproject.bramble.keyagreement/CONFIRMATION_MAC"


# virtual methods
.method public abstract deriveConfirmationRecord(Lorg/briarproject/bramble/api/crypto/SecretKey;[B[BLorg/briarproject/bramble/api/crypto/PublicKey;Lorg/briarproject/bramble/api/crypto/KeyPair;ZZ)[B
.end method

.method public abstract deriveKeyCommitment(Lorg/briarproject/bramble/api/crypto/PublicKey;)[B
.end method
