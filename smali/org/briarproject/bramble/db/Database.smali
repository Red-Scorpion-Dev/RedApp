.class interface abstract Lorg/briarproject/bramble/db/Database;
.super Ljava/lang/Object;
.source "Database.java"


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
.method public abstract abortTransaction(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract addContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;ZZ)Lorg/briarproject/bramble/api/contact/ContactId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/identity/Author;",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            "ZZ)",
            "Lorg/briarproject/bramble/api/contact/ContactId;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/Group;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/Group;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ValidationManager$State;ZLorg/briarproject/bramble/api/contact/ContactId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/Message;",
            "Lorg/briarproject/bramble/api/sync/ValidationManager$State;",
            "Z",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addMessageDependency(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/Message;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/ValidationManager$State;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addOfferedMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/transport/TransportKeys;)Lorg/briarproject/bramble/api/transport/KeySetId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/transport/TransportKeys;",
            ")",
            "Lorg/briarproject/bramble/api/transport/KeySetId;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract commitTransaction(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract containsContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract containsGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract containsLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract containsMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract containsTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract containsVisibleMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract countOfferedMessages(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract deleteMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract deleteMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ")",
            "Lorg/briarproject/bramble/api/contact/Contact;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getContacts(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
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

.method public abstract getContacts(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getContactsByAuthorId(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
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

.method public abstract getFreeSpace()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Lorg/briarproject/bramble/api/sync/Group;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getGroupMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/db/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Lorg/briarproject/bramble/api/db/Metadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Group$Visibility;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Lorg/briarproject/bramble/api/sync/Group$Visibility;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getGroups(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/ClientId;I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/ClientId;",
            "I)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/Group;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/LocalAuthor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            ")",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getLocalAuthors(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")",
            "Lorg/briarproject/bramble/api/sync/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageDependencies(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/ValidationManager$State;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageDependents(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/ValidationManager$State;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageIds(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageIds(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")",
            "Lorg/briarproject/bramble/api/db/Metadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageMetadataForValidator(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/db/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")",
            "Lorg/briarproject/bramble/api/db/Metadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageState(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")",
            "Lorg/briarproject/bramble/api/sync/ValidationManager$State;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageStatus(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageStatus(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")",
            "Lorg/briarproject/bramble/api/sync/MessageStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessagesToAck(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "I)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessagesToOffer(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "II)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessagesToRequest(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "I)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessagesToSend(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "II)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessagesToShare(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessagesToValidate(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getNextSendTime(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getPendingMessages(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getRequestedMessagesToSend(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;II)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "II)",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getSettings(Ljava/lang/Object;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Lorg/briarproject/bramble/api/settings/Settings;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/transport/KeySet;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract incrementStreamCounter(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract lowerAckFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract lowerRequestedFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract mergeGroupMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Metadata;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract mergeMessageMetadata(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/db/Metadata;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/db/Metadata;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract mergeSettings(Ljava/lang/Object;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/settings/Settings;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract open(Lorg/briarproject/bramble/api/crypto/SecretKey;Lorg/briarproject/bramble/api/db/MigrationListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract raiseAckFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract raiseRequestedFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract raiseSeenFlag(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removeContact(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removeGroup(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removeGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removeLocalAuthor(Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/AuthorId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removeMessage(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removeOfferedMessages(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removeTransport(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removeTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract resetExpiryTime(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract setContactActive(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract setContactAlias(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract setContactVerified(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract setGroupVisibility(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract setMessageShared(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract setMessageState(Ljava/lang/Object;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/ValidationManager$State;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/ValidationManager$State;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract setReorderingWindow(Ljava/lang/Object;Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/plugin/TransportId;JJ[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "JJ[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract setTransportKeysActive(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/transport/KeySetId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract startTransaction()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract updateExpiryTimeAndEta(Ljava/lang/Object;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract updateTransportKeys(Ljava/lang/Object;Lorg/briarproject/bramble/api/transport/KeySet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/briarproject/bramble/api/transport/KeySet;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
