.class public Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "ConnectionClosedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final incoming:Z

.field private final transportId:Lorg/briarproject/bramble/api/plugin/TransportId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 22
    iput-boolean p3, p0, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;->incoming:Z

    return-void
.end method


# virtual methods
.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;->transportId:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-object v0
.end method

.method public isIncoming()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/plugin/event/ConnectionClosedEvent;->incoming:Z

    return v0
.end method
