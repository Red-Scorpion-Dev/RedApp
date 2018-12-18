.class public abstract Lorg/briarproject/briar/client/ConversationClientImpl;
.super Lorg/briarproject/briar/client/BdfIncomingMessageHook;
.source "ConversationClientImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field protected final messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;


# direct methods
.method protected constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/client/MessageTracker;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/client/BdfIncomingMessageHook;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;)V

    .line 30
    iput-object p4, p0, Lorg/briarproject/briar/client/ConversationClientImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    return-void
.end method


# virtual methods
.method public getGroupCount(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/client/ConversationClientImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p2

    .line 37
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/client/ConversationClientImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/client/ConversationClientImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/api/client/MessageTracker;->getGroupCount(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;

    move-result-object p1

    return-object p1
.end method

.method public setReadFlag(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/briarproject/briar/client/ConversationClientImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/briar/api/client/MessageTracker;->setReadFlag(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    return-void
.end method
