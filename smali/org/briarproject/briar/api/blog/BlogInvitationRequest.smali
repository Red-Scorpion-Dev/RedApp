.class public Lorg/briarproject/briar/api/blog/BlogInvitationRequest;
.super Lorg/briarproject/briar/api/sharing/InvitationRequest;
.source "BlogInvitationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/api/sharing/InvitationRequest<",
        "Lorg/briarproject/briar/api/blog/Blog;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/api/blog/Blog;Ljava/lang/String;ZZ)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p13}, Lorg/briarproject/briar/api/sharing/InvitationRequest;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/api/sharing/Shareable;Ljava/lang/String;ZZ)V

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
    invoke-interface {p1, p0}, Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;->visitBlogInvitationRequest(Lorg/briarproject/briar/api/blog/BlogInvitationRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method