.class interface abstract Lorg/briarproject/bramble/crypto/AuthenticatedCipher;
.super Ljava/lang/Object;
.source "AuthenticatedCipher.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getMacBytes()I
.end method

.method public abstract init(ZLorg/briarproject/bramble/api/crypto/SecretKey;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract process([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
