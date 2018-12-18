.class public Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;
.super Ljava/lang/Object;
.source "KeyAgreementResult.java"


# instance fields
.field private final alice:Z

.field private final connection:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

.field private final masterKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final transportId:Lorg/briarproject/bramble/api/plugin/TransportId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->masterKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 18
    iput-object p2, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->connection:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    .line 19
    iput-object p3, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 20
    iput-boolean p4, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->alice:Z

    return-void
.end method


# virtual methods
.method public getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->connection:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    return-object v0
.end method

.method public getMasterKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->masterKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method public getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method

.method public wasAlice()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;->alice:Z

    return v0
.end method
