.class public Lorg/briarproject/bramble/api/plugin/event/TransportDisabledEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "TransportDisabledEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final transportId:Lorg/briarproject/bramble/api/plugin/TransportId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/bramble/api/plugin/event/TransportDisabledEvent;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-void
.end method


# virtual methods
.method public getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/event/TransportDisabledEvent;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method
