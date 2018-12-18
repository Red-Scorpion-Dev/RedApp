.class public Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "MessagesSentEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final messageIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 25
    iput-object p2, p0, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;->messageIds:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public getMessageIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;->messageIds:Ljava/util/Collection;

    return-object v0
.end method
