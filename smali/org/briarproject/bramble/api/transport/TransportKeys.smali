.class public Lorg/briarproject/bramble/api/transport/TransportKeys;
.super Ljava/lang/Object;
.source "TransportKeys.java"


# instance fields
.field private final inCurr:Lorg/briarproject/bramble/api/transport/IncomingKeys;

.field private final inNext:Lorg/briarproject/bramble/api/transport/IncomingKeys;

.field private final inPrev:Lorg/briarproject/bramble/api/transport/IncomingKeys;

.field private final outCurr:Lorg/briarproject/bramble/api/transport/OutgoingKeys;

.field private final transportId:Lorg/briarproject/bramble/api/plugin/TransportId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/OutgoingKeys;)V
    .locals 7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v0

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    .line 18
    invoke-virtual {p4}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v0

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v2

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 20
    invoke-virtual {p5}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getRotationPeriod()J

    move-result-wide v0

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/transport/IncomingKeys;->getRotationPeriod()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/api/transport/TransportKeys;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 23
    iput-object p2, p0, Lorg/briarproject/bramble/api/transport/TransportKeys;->inPrev:Lorg/briarproject/bramble/api/transport/IncomingKeys;

    .line 24
    iput-object p3, p0, Lorg/briarproject/bramble/api/transport/TransportKeys;->inCurr:Lorg/briarproject/bramble/api/transport/IncomingKeys;

    .line 25
    iput-object p4, p0, Lorg/briarproject/bramble/api/transport/TransportKeys;->inNext:Lorg/briarproject/bramble/api/transport/IncomingKeys;

    .line 26
    iput-object p5, p0, Lorg/briarproject/bramble/api/transport/TransportKeys;->outCurr:Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getCurrentIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/TransportKeys;->inCurr:Lorg/briarproject/bramble/api/transport/IncomingKeys;

    return-object v0
.end method

.method public getCurrentOutgoingKeys()Lorg/briarproject/bramble/api/transport/OutgoingKeys;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/TransportKeys;->outCurr:Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    return-object v0
.end method

.method public getNextIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/TransportKeys;->inNext:Lorg/briarproject/bramble/api/transport/IncomingKeys;

    return-object v0
.end method

.method public getPreviousIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/TransportKeys;->inPrev:Lorg/briarproject/bramble/api/transport/IncomingKeys;

    return-object v0
.end method

.method public getRotationPeriod()J
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/TransportKeys;->outCurr:Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/transport/OutgoingKeys;->getRotationPeriod()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/api/transport/TransportKeys;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method
