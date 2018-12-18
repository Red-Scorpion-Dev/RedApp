.class public Lorg/briarproject/briar/api/introduction/event/IntroductionResponseReceivedEvent;
.super Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;
.source "IntroductionResponseReceivedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent<",
        "Lorg/briarproject/briar/api/introduction/IntroductionResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/api/introduction/IntroductionResponse;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;-><init>(Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method
