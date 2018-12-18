.class public Lorg/briarproject/briar/api/introduction/event/IntroductionRequestReceivedEvent;
.super Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;
.source "IntroductionRequestReceivedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent<",
        "Lorg/briarproject/briar/api/introduction/IntroductionRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/api/introduction/IntroductionRequest;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;-><init>(Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method
