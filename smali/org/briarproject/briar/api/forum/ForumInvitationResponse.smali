.class public Lorg/briarproject/briar/api/forum/ForumInvitationResponse;
.super Lorg/briarproject/briar/api/sharing/InvitationResponse;
.source "ForumInvitationResponse.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;ZLorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p11}, Lorg/briarproject/briar/api/sharing/InvitationResponse;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;ZLorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 25
    invoke-interface {p1, p0}, Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;->visitForumInvitationResponse(Lorg/briarproject/briar/api/forum/ForumInvitationResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
