.class Lorg/briarproject/bramble/transport/MutableTransportKeys;
.super Ljava/lang/Object;
.source "MutableTransportKeys.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final inCurr:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

.field private final inNext:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

.field private final inPrev:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

.field private final outCurr:Lorg/briarproject/bramble/transport/MutableOutgoingKeys;

.field private final transportId:Lorg/briarproject/bramble/api/plugin/TransportId;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/transport/TransportKeys;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 19
    new-instance v0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getPreviousIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;-><init>(Lorg/briarproject/bramble/api/transport/IncomingKeys;)V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->inPrev:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    .line 20
    new-instance v0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getCurrentIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;-><init>(Lorg/briarproject/bramble/api/transport/IncomingKeys;)V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->inCurr:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    .line 21
    new-instance v0, Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getNextIncomingKeys()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;-><init>(Lorg/briarproject/bramble/api/transport/IncomingKeys;)V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->inNext:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    .line 22
    new-instance v0, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/transport/TransportKeys;->getCurrentOutgoingKeys()Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;-><init>(Lorg/briarproject/bramble/api/transport/OutgoingKeys;)V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->outCurr:Lorg/briarproject/bramble/transport/MutableOutgoingKeys;

    return-void
.end method


# virtual methods
.method getCurrentIncomingKeys()Lorg/briarproject/bramble/transport/MutableIncomingKeys;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->inCurr:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    return-object v0
.end method

.method getCurrentOutgoingKeys()Lorg/briarproject/bramble/transport/MutableOutgoingKeys;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->outCurr:Lorg/briarproject/bramble/transport/MutableOutgoingKeys;

    return-object v0
.end method

.method getNextIncomingKeys()Lorg/briarproject/bramble/transport/MutableIncomingKeys;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->inNext:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    return-object v0
.end method

.method getPreviousIncomingKeys()Lorg/briarproject/bramble/transport/MutableIncomingKeys;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->inPrev:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    return-object v0
.end method

.method getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method

.method snapshot()Lorg/briarproject/bramble/api/transport/TransportKeys;
    .locals 7

    .line 26
    new-instance v6, Lorg/briarproject/bramble/api/transport/TransportKeys;

    iget-object v1, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->inPrev:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->snapshot()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object v2

    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->inCurr:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    .line 27
    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->snapshot()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object v3

    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->inNext:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/MutableIncomingKeys;->snapshot()Lorg/briarproject/bramble/api/transport/IncomingKeys;

    move-result-object v4

    iget-object v0, p0, Lorg/briarproject/bramble/transport/MutableTransportKeys;->outCurr:Lorg/briarproject/bramble/transport/MutableOutgoingKeys;

    invoke-virtual {v0}, Lorg/briarproject/bramble/transport/MutableOutgoingKeys;->snapshot()Lorg/briarproject/bramble/api/transport/OutgoingKeys;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/bramble/api/transport/TransportKeys;-><init>(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/IncomingKeys;Lorg/briarproject/bramble/api/transport/OutgoingKeys;)V

    return-object v6
.end method
