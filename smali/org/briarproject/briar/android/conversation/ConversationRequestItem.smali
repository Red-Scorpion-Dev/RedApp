.class Lorg/briarproject/briar/android/conversation/ConversationRequestItem;
.super Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;
.source "ConversationRequestItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private answered:Z

.field private final canBeOpened:Z

.field private final requestType:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

.field private final requestedGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final sessionId:Lorg/briarproject/briar/api/client/SessionId;


# direct methods
.method constructor <init>(ILjava/lang/String;Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;Lorg/briarproject/briar/api/conversation/ConversationRequest;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p4}, Lorg/briarproject/briar/android/conversation/ConversationNoticeItem;-><init>(ILjava/lang/String;Lorg/briarproject/briar/api/conversation/ConversationRequest;)V

    .line 31
    iput-object p3, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->requestType:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    .line 32
    invoke-virtual {p4}, Lorg/briarproject/briar/api/conversation/ConversationRequest;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    .line 33
    invoke-virtual {p4}, Lorg/briarproject/briar/api/conversation/ConversationRequest;->wasAnswered()Z

    move-result p1

    iput-boolean p1, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->answered:Z

    .line 34
    instance-of p1, p4, Lorg/briarproject/briar/api/sharing/InvitationRequest;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p4}, Lorg/briarproject/briar/api/conversation/ConversationRequest;->getNameable()Lorg/briarproject/bramble/api/Nameable;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/api/sharing/Shareable;

    invoke-interface {p1}, Lorg/briarproject/briar/api/sharing/Shareable;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->requestedGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 36
    check-cast p4, Lorg/briarproject/briar/api/sharing/InvitationRequest;

    invoke-virtual {p4}, Lorg/briarproject/briar/api/sharing/InvitationRequest;->canBeOpened()Z

    move-result p1

    iput-boolean p1, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->canBeOpened:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->requestedGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->canBeOpened:Z

    :goto_0
    return-void
.end method


# virtual methods
.method canBeOpened()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->canBeOpened:Z

    return v0
.end method

.method getRequestType()Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->requestType:Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    return-object v0
.end method

.method getRequestedGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->requestedGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method getSessionId()Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-object v0
.end method

.method setAnswered()V
    .locals 1

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->answered:Z

    return-void
.end method

.method wasAnswered()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->answered:Z

    return v0
.end method
