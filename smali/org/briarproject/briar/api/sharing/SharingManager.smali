.class public interface abstract Lorg/briarproject/briar/api/sharing/SharingManager;
.super Ljava/lang/Object;
.source "SharingManager.java"

# interfaces
.implements Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/briarproject/briar/api/sharing/Shareable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract canBeShared(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/Contact;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getInvitations()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/sharing/SharingInvitationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getSharedWith(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract respondToInvitation(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/client/SessionId;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract respondToInvitation(Lorg/briarproject/briar/api/sharing/Shareable;Lorg/briarproject/bramble/api/contact/Contact;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract sendInvitation(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
