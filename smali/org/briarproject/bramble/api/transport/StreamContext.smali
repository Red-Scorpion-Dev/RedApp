.class public Lorg/briarproject/bramble/api/transport/StreamContext;
.super Ljava/lang/Object;
.source "StreamContext.java"


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final streamNumber:J

.field private final tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

.field private final transportId:Lorg/briarproject/bramble/api/plugin/TransportId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/crypto/SecretKey;J)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/api/transport/StreamContext;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 17
    iput-object p2, p0, Lorg/briarproject/bramble/api/transport/StreamContext;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 18
    iput-object p3, p0, Lorg/briarproject/bramble/api/transport/StreamContext;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 19
    iput-object p4, p0, Lorg/briarproject/bramble/api/transport/StreamContext;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    .line 20
    iput-wide p5, p0, Lorg/briarproject/bramble/api/transport/StreamContext;->streamNumber:J

    return-void
.end method


# virtual methods
.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/StreamContext;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public getHeaderKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/StreamContext;->headerKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method public getStreamNumber()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lorg/briarproject/bramble/api/transport/StreamContext;->streamNumber:J

    return-wide v0
.end method

.method public getTagKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/StreamContext;->tagKey:Lorg/briarproject/bramble/api/crypto/SecretKey;

    return-object v0
.end method

.method public getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/StreamContext;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method
