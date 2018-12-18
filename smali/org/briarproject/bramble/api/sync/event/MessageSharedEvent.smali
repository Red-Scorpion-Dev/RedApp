.class public Lorg/briarproject/bramble/api/sync/event/MessageSharedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "MessageSharedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final messageId:Lorg/briarproject/bramble/api/sync/MessageId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/event/MessageSharedEvent;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-void
.end method


# virtual methods
.method public getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/event/MessageSharedEvent;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method
