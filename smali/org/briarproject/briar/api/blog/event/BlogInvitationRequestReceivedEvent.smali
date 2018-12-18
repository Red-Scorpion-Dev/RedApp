.class public Lorg/briarproject/briar/api/blog/event/BlogInvitationRequestReceivedEvent;
.super Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;
.source "BlogInvitationRequestReceivedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent<",
        "Lorg/briarproject/briar/api/conversation/ConversationRequest<",
        "Lorg/briarproject/briar/api/blog/Blog;",
        ">;>;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/api/conversation/ConversationRequest;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/conversation/ConversationRequest<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;-><init>(Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method
