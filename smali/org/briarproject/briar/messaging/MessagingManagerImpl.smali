.class Lorg/briarproject/briar/messaging/MessagingManagerImpl;
.super Lorg/briarproject/briar/client/ConversationClientImpl;
.source "MessagingManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;
.implements Lorg/briarproject/bramble/api/sync/Client;
.implements Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;
.implements Lorg/briarproject/briar/api/messaging/MessagingManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

.field private final contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/briarproject/briar/client/ConversationClientImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/client/MessageTracker;)V

    .line 62
    iput-object p3, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 63
    iput-object p6, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    return-void
.end method

.method private getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 167
    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    .line 168
    new-instance p2, Lorg/briarproject/bramble/api/contact/ContactId;

    const-string v0, "contactId"

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 170
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public addLocalAttachment(Lorg/briarproject/bramble/api/sync/GroupId;JLjava/lang/String;Ljava/nio/ByteBuffer;)Lorg/briarproject/briar/api/messaging/AttachmentHeader;
    .locals 0

    const/16 p1, 0x20

    .line 158
    new-array p1, p1, [B

    .line 159
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/Random;->nextBytes([B)V

    .line 160
    new-instance p2, Lorg/briarproject/briar/api/messaging/AttachmentHeader;

    new-instance p3, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p3, p1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    const-string p1, "image/png"

    invoke-direct {p2, p3, p1}, Lorg/briarproject/briar/api/messaging/AttachmentHeader;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;)V

    return-object p2
.end method

.method public addLocalMessage(Lorg/briarproject/briar/api/messaging/PrivateMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 140
    :try_start_0
    new-instance v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v2, "timestamp"

    .line 141
    invoke-virtual {p1}, Lorg/briarproject/briar/api/messaging/PrivateMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "local"

    const/4 v3, 0x1

    .line 142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "read"

    .line 143
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/messaging/PrivateMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v4

    invoke-interface {v2, v0, v4, v1, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V

    .line 145
    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/messaging/PrivateMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lorg/briarproject/briar/api/client/MessageTracker;->trackOutgoingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    .line 146
    iget-object p1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object p1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 151
    throw p1
.end method

.method public addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 83
    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 84
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    sget-object v3, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v4, 0x0

    .line 83
    invoke-interface {v1, p1, v2, v3, v4}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->getClientVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 87
    new-instance v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v2, "contactId"

    .line 88
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :try_start_0
    iget-object p2, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {p2, p1, v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 92
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public createLocalState(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    sget-object v1, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createLocalGroup(Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 74
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContacts(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/contact/Contact;

    invoke-virtual {p0, p1, v1}, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAttachment(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/messaging/Attachment;
    .locals 1

    const p1, 0x8000

    .line 242
    new-array p1, p1, [B

    .line 243
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    .line 244
    new-instance v0, Lorg/briarproject/briar/api/messaging/Attachment;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/briar/api/messaging/Attachment;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 3

    .line 98
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    sget-object v1, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createContactGroup(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method

.method public getContactId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    .line 178
    new-instance v0, Lorg/briarproject/bramble/api/contact/ContactId;

    const-string v1, "contactId"

    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 180
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getConversationId(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    .line 190
    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 194
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 192
    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 193
    throw p1
.end method

.method public getMessageHeaders(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/util/Collection;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 204
    :try_start_0
    iget-object v3, v1, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v3, v0, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 205
    iget-object v4, v1, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v4, v0, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object v15

    .line 206
    iget-object v4, v1, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v4, v0, v2, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageStatus(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/api/sync/MessageStatus;

    .line 212
    invoke-virtual {v4}, Lorg/briarproject/bramble/api/sync/MessageStatus;->getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    .line 213
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/briarproject/bramble/api/data/BdfDictionary;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v7, "timestamp"

    .line 216
    invoke-virtual {v6, v7}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v9, "local"

    .line 217
    invoke-virtual {v6, v9}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v10, "read"

    .line 218
    invoke-virtual {v6, v10}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 219
    new-instance v14, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;

    .line 220
    invoke-virtual {v4}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSent()Z

    move-result v11

    invoke-virtual {v4}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSeen()Z

    move-result v12

    const/4 v13, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    move-object v4, v14

    move-object v6, v3

    move-object/from16 v17, v0

    move-object v0, v14

    move-object/from16 v14, v16

    invoke-direct/range {v4 .. v14}, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZLjava/util/List;)V

    .line 219
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, v17

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    new-instance v2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v2, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    return-object v2

    :catch_1
    move-exception v0

    .line 208
    new-instance v2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v2, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getMessageText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 232
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageAsList(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 234
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/data/BdfDictionary;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 119
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p3

    const-string v0, "timestamp"

    .line 120
    invoke-virtual {p4, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v0, "local"

    .line 121
    invoke-virtual {p4, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v0, "read"

    .line 122
    invoke-virtual {p4, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 123
    new-instance p4, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;

    .line 124
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p4

    move-object v2, p3

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZLjava/util/List;)V

    .line 126
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p3

    .line 127
    new-instance v0, Lorg/briarproject/briar/api/messaging/event/PrivateMessageReceivedEvent;

    invoke-direct {v0, p4, p3}, Lorg/briarproject/briar/api/messaging/event/PrivateMessageReceivedEvent;-><init>(Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 129
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/db/Transaction;->attach(Lorg/briarproject/bramble/api/event/Event;)V

    .line 130
    iget-object p3, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->messageTracker:Lorg/briarproject/briar/api/client/MessageTracker;

    invoke-interface {p3, p1, p2}, Lorg/briarproject/briar/api/client/MessageTracker;->trackIncomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    return-void
.end method

.method public removingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p0, p2}, Lorg/briarproject/briar/messaging/MessagingManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method
