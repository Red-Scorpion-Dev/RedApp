.class public interface abstract Lorg/briarproject/bramble/api/crypto/TransportCrypto;
.super Ljava/lang/Object;
.source "TransportCrypto.java"


# virtual methods
.method public abstract deriveTransportKeys(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZ)Lorg/briarproject/bramble/api/transport/TransportKeys;
.end method

.method public abstract encodeTag([BLorg/briarproject/bramble/api/crypto/SecretKey;IJ)V
.end method

.method public abstract rotateTransportKeys(Lorg/briarproject/bramble/api/transport/TransportKeys;J)Lorg/briarproject/bramble/api/transport/TransportKeys;
.end method
