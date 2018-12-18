.class public Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;
.super Ljava/lang/Object;
.source "KeyAgreementConnection.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

.field private final id:Lorg/briarproject/bramble/api/plugin/TransportId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    .line 19
    iput-object p2, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-void
.end method


# virtual methods
.method public getConnection()Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->conn:Lorg/briarproject/bramble/api/plugin/duplex/DuplexTransportConnection;

    return-object v0
.end method

.method public getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementConnection;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method
