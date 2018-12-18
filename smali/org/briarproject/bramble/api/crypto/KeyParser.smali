.class public interface abstract Lorg/briarproject/bramble/api/crypto/KeyParser;
.super Ljava/lang/Object;
.source "KeyParser.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract parsePrivateKey([B)Lorg/briarproject/bramble/api/crypto/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract parsePublicKey([B)Lorg/briarproject/bramble/api/crypto/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
