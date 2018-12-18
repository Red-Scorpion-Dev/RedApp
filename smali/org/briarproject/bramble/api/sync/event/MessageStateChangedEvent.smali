.class public Lorg/briarproject/bramble/api/sync/event/MessageStateChangedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "MessageStateChangedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final local:Z

.field private final messageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final state:Lorg/briarproject/bramble/api/sync/ValidationManager$State;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;ZLorg/briarproject/bramble/api/sync/ValidationManager$State;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/event/MessageStateChangedEvent;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 25
    iput-boolean p2, p0, Lorg/briarproject/bramble/api/sync/event/MessageStateChangedEvent;->local:Z

    .line 26
    iput-object p3, p0, Lorg/briarproject/bramble/api/sync/event/MessageStateChangedEvent;->state:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    return-void
.end method


# virtual methods
.method public getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/event/MessageStateChangedEvent;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getState()Lorg/briarproject/bramble/api/sync/ValidationManager$State;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/event/MessageStateChangedEvent;->state:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/sync/event/MessageStateChangedEvent;->local:Z

    return v0
.end method
