.class public Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "MessageAddedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final message:Lorg/briarproject/bramble/api/sync/Message;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;->message:Lorg/briarproject/bramble/api/sync/Message;

    .line 25
    iput-object p2, p0, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;->message:Lorg/briarproject/bramble/api/sync/Message;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lorg/briarproject/bramble/api/sync/Message;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/event/MessageAddedEvent;->message:Lorg/briarproject/bramble/api/sync/Message;

    return-object v0
.end method
