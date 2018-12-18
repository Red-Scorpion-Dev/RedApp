.class public interface abstract Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;
.super Ljava/lang/Object;
.source "ConversationMessageVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract visitBlogInvitationRequest(Lorg/briarproject/briar/api/blog/BlogInvitationRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/blog/BlogInvitationRequest;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract visitBlogInvitationResponse(Lorg/briarproject/briar/api/blog/BlogInvitationResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract visitForumInvitationRequest(Lorg/briarproject/briar/api/forum/ForumInvitationRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/forum/ForumInvitationRequest;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract visitForumInvitationResponse(Lorg/briarproject/briar/api/forum/ForumInvitationResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/forum/ForumInvitationResponse;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract visitGroupInvitationRequest(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationRequest;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract visitGroupInvitationResponse(Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationResponse;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract visitIntroductionRequest(Lorg/briarproject/briar/api/introduction/IntroductionRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/introduction/IntroductionRequest;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract visitIntroductionResponse(Lorg/briarproject/briar/api/introduction/IntroductionResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/introduction/IntroductionResponse;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract visitPrivateMessageHeader(Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;",
            ")TT;"
        }
    .end annotation
.end method
