.class public interface abstract Lorg/briarproject/briar/sharing/InvitationFactory;
.super Ljava/lang/Object;
.source "InvitationFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/briarproject/briar/api/sharing/Shareable;",
        "R:",
        "Lorg/briarproject/briar/api/sharing/InvitationResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createInvitationRequest(ZZZZLorg/briarproject/briar/sharing/InviteMessage;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)Lorg/briarproject/briar/api/conversation/ConversationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ",
            "Lorg/briarproject/briar/sharing/InviteMessage<",
            "TS;>;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "ZZ)",
            "Lorg/briarproject/briar/api/conversation/ConversationRequest<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract createInvitationResponse(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZLorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/sharing/InvitationResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "JZZZZZ",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")TR;"
        }
    .end annotation
.end method
