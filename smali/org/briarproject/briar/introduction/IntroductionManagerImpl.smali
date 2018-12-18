.class Lorg/briarproject/briar/introduction/IntroductionManagerImpl;
.super Lorg/briarproject/briar/client/ConversationClientImpl;
.source "IntroductionManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;
.implements Lorg/briarproject/bramble/api/sync/Client;
.implements Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;
.implements Lorg/briarproject/briar/api/introduction/IntroductionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

.field private final contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

.field private final contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private final crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

.field private final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field private final introduceeEngine:Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

.field private final introducerEngine:Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;

.field private final localGroup:Lorg/briarproject/bramble/api/sync/Group;

.field private final messageParser:Lorg/briarproject/briar/introduction/MessageParser;

.field private final sessionEncoder:Lorg/briarproject/briar/introduction/SessionEncoder;

.field private final sessionParser:Lorg/briarproject/briar/introduction/SessionParser;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/introduction/MessageParser;Lorg/briarproject/briar/introduction/SessionEncoder;Lorg/briarproject/briar/introduction/SessionParser;Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;Lorg/briarproject/briar/introduction/IntroductionCrypto;Lorg/briarproject/bramble/api/identity/IdentityManager;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/briarproject/briar/client/ConversationClientImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/client/MessageTracker;)V

    .line 100
    iput-object p3, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 101
    iput-object p6, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 102
    iput-object p7, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 103
    iput-object p8, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    .line 104
    iput-object p9, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionEncoder:Lorg/briarproject/briar/introduction/SessionEncoder;

    .line 105
    iput-object p10, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    .line 106
    iput-object p11, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->introducerEngine:Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;

    .line 107
    iput-object p12, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->introduceeEngine:Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    .line 108
    iput-object p13, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    .line 109
    iput-object p14, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 110
    sget-object p1, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p2, 0x1

    .line 111
    invoke-interface {p6, p1, p2}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createLocalGroup(Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    return-void
.end method

.method private abortOrRemoveSessionWithIntroducee(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionEncoder:Lorg/briarproject/briar/introduction/SessionEncoder;

    invoke-interface {v0}, Lorg/briarproject/briar/introduction/SessionEncoder;->getIntroducerSessionsQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 516
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    .line 517
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 522
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v1, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v1

    .line 523
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 526
    :try_start_1
    iget-object v3, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-interface {v3, v4}, Lorg/briarproject/briar/introduction/SessionParser;->parseIntroducerSession(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v4
    :try_end_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 530
    invoke-virtual {v4}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v3

    iget-object v3, v3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 531
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 532
    invoke-virtual {v4}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v7, v1

    .line 531
    invoke-direct/range {v2 .. v7}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->abortOrRemoveSessionWithIntroducee(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V

    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {v4}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v3

    iget-object v3, v3, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 535
    invoke-virtual {v4}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v7, v1

    .line 534
    invoke-direct/range {v2 .. v7}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->abortOrRemoveSessionWithIntroducee(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V

    goto :goto_0

    .line 528
    :catch_0
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw p1

    :cond_2
    return-void

    .line 520
    :catch_1
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw p1
.end method

.method private abortOrRemoveSessionWithIntroducee(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p4, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    invoke-virtual {p5}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p5

    invoke-interface {v0, p1, v1, p5}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 544
    iget-object p5, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->introducerEngine:Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;

    .line 545
    invoke-virtual {p5, p1, p4, p2}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onIntroduceeRemoved(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p2

    .line 546
    invoke-direct {p0, p1, p3, p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/Session;)V

    goto :goto_0

    .line 548
    :cond_0
    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, p1, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    :goto_0
    return-void
.end method

.method private canIntroduce(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    .line 312
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p2

    .line 313
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p3

    .line 312
    invoke-interface {v1, v0, p2, p3}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->getSessionId(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p2

    .line 314
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 316
    :cond_0
    iget-object p3, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    .line 317
    invoke-static {p1}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/briarproject/briar/introduction/SessionParser;->parseIntroducerSession(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object p1

    sget-object p3, Lorg/briarproject/briar/introduction/IntroducerState;->START:Lorg/briarproject/briar/introduction/IntroducerState;

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private createNewIntroduceeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 208
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v1, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p1

    .line 211
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    invoke-interface {v1, p2, p3}, Lorg/briarproject/briar/introduction/MessageParser;->parseRequestMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/RequestMessage;

    move-result-object p3

    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/RequestMessage;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p3

    .line 212
    invoke-virtual {p1, p3}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    invoke-interface {v1, v0, p1, p3}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->getSessionId(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object p1

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->isAlice(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result p1

    .line 216
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    invoke-static {p2, v1, v0, p1, p3}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getInitial(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/identity/Author;ZLorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    return-object p1

    .line 212
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private createStorageId(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    .line 269
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessageForStoringMetadata(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v2, Lorg/briarproject/bramble/api/db/Metadata;

    invoke-direct {v2}, Lorg/briarproject/bramble/api/db/Metadata;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, p1, v0, v2, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Metadata;Z)V

    .line 271
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    return-object p1
.end method

.method private getContactId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 263
    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    .line 264
    new-instance p2, Lorg/briarproject/bramble/api/contact/ContactId;

    const-string v0, "contactId"

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    return-object p2
.end method

.method private getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 251
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    invoke-interface {v1, p2}, Lorg/briarproject/briar/introduction/SessionParser;->getSessionQuery(Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    .line 252
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    .line 253
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object p1

    .line 254
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    const/4 v1, 0x1

    if-gt p2, v1, :cond_2

    .line 255
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    .line 256
    :cond_1
    new-instance p2, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 257
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p2, v1, p1, v0}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/briar/introduction/IntroductionManagerImpl$1;)V

    return-object p2

    .line 254
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw p1
.end method

.method private handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/ProtocolEngine;)Lorg/briarproject/briar/introduction/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/briarproject/briar/introduction/Session;",
            ">(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/Message;",
            "Lorg/briarproject/bramble/api/data/BdfList;",
            "Lorg/briarproject/briar/introduction/MessageType;",
            "TS;",
            "Lorg/briarproject/briar/introduction/ProtocolEngine<",
            "TS;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 223
    sget-object v0, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    if-ne p4, v0, :cond_0

    .line 224
    iget-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/introduction/MessageParser;->parseRequestMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/RequestMessage;

    move-result-object p2

    .line 225
    invoke-interface {p6, p1, p5, p2}, Lorg/briarproject/briar/introduction/ProtocolEngine;->onRequestMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/RequestMessage;)Lorg/briarproject/briar/introduction/Session;

    move-result-object p1

    return-object p1

    .line 226
    :cond_0
    sget-object v0, Lorg/briarproject/briar/introduction/MessageType;->ACCEPT:Lorg/briarproject/briar/introduction/MessageType;

    if-ne p4, v0, :cond_1

    .line 227
    iget-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/introduction/MessageParser;->parseAcceptMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/AcceptMessage;

    move-result-object p2

    .line 228
    invoke-interface {p6, p1, p5, p2}, Lorg/briarproject/briar/introduction/ProtocolEngine;->onAcceptMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/AcceptMessage;)Lorg/briarproject/briar/introduction/Session;

    move-result-object p1

    return-object p1

    .line 229
    :cond_1
    sget-object v0, Lorg/briarproject/briar/introduction/MessageType;->DECLINE:Lorg/briarproject/briar/introduction/MessageType;

    if-ne p4, v0, :cond_2

    .line 230
    iget-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/introduction/MessageParser;->parseDeclineMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/DeclineMessage;

    move-result-object p2

    .line 231
    invoke-interface {p6, p1, p5, p2}, Lorg/briarproject/briar/introduction/ProtocolEngine;->onDeclineMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/DeclineMessage;)Lorg/briarproject/briar/introduction/Session;

    move-result-object p1

    return-object p1

    .line 232
    :cond_2
    sget-object v0, Lorg/briarproject/briar/introduction/MessageType;->AUTH:Lorg/briarproject/briar/introduction/MessageType;

    if-ne p4, v0, :cond_3

    .line 233
    iget-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/introduction/MessageParser;->parseAuthMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/AuthMessage;

    move-result-object p2

    .line 234
    invoke-interface {p6, p1, p5, p2}, Lorg/briarproject/briar/introduction/ProtocolEngine;->onAuthMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/AuthMessage;)Lorg/briarproject/briar/introduction/Session;

    move-result-object p1

    return-object p1

    .line 235
    :cond_3
    sget-object v0, Lorg/briarproject/briar/introduction/MessageType;->ACTIVATE:Lorg/briarproject/briar/introduction/MessageType;

    if-ne p4, v0, :cond_4

    .line 236
    iget-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    .line 237
    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/introduction/MessageParser;->parseActivateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/ActivateMessage;

    move-result-object p2

    .line 238
    invoke-interface {p6, p1, p5, p2}, Lorg/briarproject/briar/introduction/ProtocolEngine;->onActivateMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/ActivateMessage;)Lorg/briarproject/briar/introduction/Session;

    move-result-object p1

    return-object p1

    .line 239
    :cond_4
    sget-object v0, Lorg/briarproject/briar/introduction/MessageType;->ABORT:Lorg/briarproject/briar/introduction/MessageType;

    if-ne p4, v0, :cond_5

    .line 240
    iget-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    invoke-interface {p4, p2, p3}, Lorg/briarproject/briar/introduction/MessageParser;->parseAbortMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/AbortMessage;

    move-result-object p2

    .line 241
    invoke-interface {p6, p1, p5, p2}, Lorg/briarproject/briar/introduction/ProtocolEngine;->onAbortMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/AbortMessage;)Lorg/briarproject/briar/introduction/Session;

    move-result-object p1

    return-object p1

    .line 243
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private parseInvitationRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;Lorg/briarproject/briar/api/client/SessionId;Ljava/util/Map;)Lorg/briarproject/briar/api/introduction/IntroductionRequest;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/briar/introduction/MessageMetadata;",
            "Lorg/briarproject/bramble/api/sync/MessageStatus;",
            "Lorg/briarproject/briar/api/client/SessionId;",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            "Lorg/briarproject/bramble/api/identity/AuthorInfo;",
            ">;)",
            "Lorg/briarproject/briar/api/introduction/IntroductionRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    .line 445
    iget-object v3, v0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    move-object/from16 v5, p3

    invoke-interface {v3, v1, v5}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object v3

    .line 446
    iget-object v4, v0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v4, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/sync/Message;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v4

    .line 447
    iget-object v6, v0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    invoke-interface {v6, v3, v4}, Lorg/briarproject/briar/introduction/MessageParser;->parseRequestMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/RequestMessage;

    move-result-object v3

    .line 448
    invoke-virtual {v3}, Lorg/briarproject/briar/introduction/RequestMessage;->getText()Ljava/lang/String;

    move-result-object v15

    .line 449
    invoke-virtual {v3}, Lorg/briarproject/briar/introduction/RequestMessage;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v14

    .line 450
    invoke-virtual {v14}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    if-nez v3, :cond_0

    .line 452
    iget-object v3, v0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-virtual {v14}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v1

    .line 453
    invoke-virtual {v14}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v1

    goto :goto_0

    :cond_0
    move-object/from16 v17, v3

    .line 455
    :goto_0
    new-instance v1, Lorg/briarproject/briar/api/introduction/IntroductionRequest;

    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->getTimestamp()J

    move-result-wide v7

    .line 456
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->isLocal()Z

    move-result v9

    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSent()Z

    move-result v10

    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSeen()Z

    move-result v11

    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->isRead()Z

    move-result v12

    .line 457
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->isAvailableToAnswer()Z

    move-result v2

    xor-int/lit8 v16, v2, 0x1

    move-object v4, v1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v13, p6

    invoke-direct/range {v4 .. v17}, Lorg/briarproject/briar/api/introduction/IntroductionRequest;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;ZLorg/briarproject/bramble/api/identity/AuthorInfo;)V

    return-object v1
.end method

.method private parseInvitationResponse(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;Z)Lorg/briarproject/briar/api/introduction/IntroductionResponse;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/briar/introduction/MessageMetadata;",
            "Lorg/briarproject/bramble/api/sync/MessageStatus;",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/identity/AuthorId;",
            "Lorg/briarproject/bramble/api/identity/AuthorInfo;",
            ">;Z)",
            "Lorg/briarproject/briar/api/introduction/IntroductionResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 466
    iget-object v4, v0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    invoke-interface {v4, v1}, Lorg/briarproject/briar/introduction/SessionParser;->getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/introduction/Role;

    move-result-object v14

    .line 469
    sget-object v4, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCER:Lorg/briarproject/briar/api/introduction/Role;

    if-ne v14, v4, :cond_1

    .line 470
    iget-object v4, v0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    .line 471
    invoke-interface {v4, v1}, Lorg/briarproject/briar/introduction/SessionParser;->parseIntroducerSession(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v4

    .line 473
    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v5

    iget-object v5, v5, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v3, v5}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 474
    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v1

    iget-object v1, v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v1

    iget-object v1, v1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    goto :goto_0

    .line 478
    :cond_1
    sget-object v4, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCEE:Lorg/briarproject/briar/api/introduction/Role;

    if-ne v14, v4, :cond_3

    .line 479
    iget-object v4, v0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    .line 480
    invoke-interface {v4, v3, v1}, Lorg/briarproject/briar/introduction/SessionParser;->parseIntroduceeSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v1

    .line 481
    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v4

    .line 482
    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v1

    iget-object v1, v1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    :goto_0
    move-object v12, v1

    move-object v10, v4

    .line 484
    invoke-virtual {v12}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    if-nez v1, :cond_2

    .line 486
    iget-object v1, v0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-virtual {v12}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-interface {v1, v5, v4}, Lorg/briarproject/bramble/api/contact/ContactManager;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object v1

    .line 487
    invoke-virtual {v12}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v13, v1

    .line 489
    new-instance v15, Lorg/briarproject/briar/api/introduction/IntroductionResponse;

    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->getTimestamp()J

    move-result-wide v4

    .line 490
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->isLocal()Z

    move-result v6

    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSent()Z

    move-result v7

    invoke-virtual/range {p5 .. p5}, Lorg/briarproject/bramble/api/sync/MessageStatus;->isSeen()Z

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->isRead()Z

    move-result v9

    move-object v1, v15

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v11, p8

    invoke-direct/range {v1 .. v14}, Lorg/briarproject/briar/api/introduction/IntroductionResponse;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;ZLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Lorg/briarproject/briar/api/introduction/Role;)V

    return-object v15

    .line 483
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private removeSessionWithIntroducer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionEncoder:Lorg/briarproject/briar/introduction/SessionEncoder;

    .line 497
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/briarproject/briar/introduction/SessionEncoder;->getIntroduceeSessionsByIntroducerQuery(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    .line 500
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    .line 501
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object p2
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 507
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 504
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 277
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/Session;->getRole()Lorg/briarproject/briar/api/introduction/Role;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCER:Lorg/briarproject/briar/api/introduction/Role;

    if-ne v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionEncoder:Lorg/briarproject/briar/introduction/SessionEncoder;

    check-cast p3, Lorg/briarproject/briar/introduction/IntroducerSession;

    .line 279
    invoke-interface {v0, p3}, Lorg/briarproject/briar/introduction/SessionEncoder;->encodeIntroducerSession(Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p3}, Lorg/briarproject/briar/introduction/Session;->getRole()Lorg/briarproject/briar/api/introduction/Role;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCEE:Lorg/briarproject/briar/api/introduction/Role;

    if-ne v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionEncoder:Lorg/briarproject/briar/introduction/SessionEncoder;

    check-cast p3, Lorg/briarproject/briar/introduction/IntroduceeSession;

    .line 282
    invoke-interface {v0, p3}, Lorg/briarproject/briar/introduction/SessionEncoder;->encodeIntroduceeSession(Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    .line 287
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 289
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 284
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 129
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 130
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    sget-object v3, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v4, 0x1

    .line 129
    invoke-interface {v1, p1, v2, v3, v4}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->getClientVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 133
    new-instance v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v2, "contactId"

    .line 134
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :try_start_0
    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {p2, p1, v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 138
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public canIntroduce(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 297
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->canIntroduce(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;)Z

    move-result p1

    .line 298
    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 301
    :try_start_1
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :goto_0
    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 304
    throw p1
.end method

.method public createLocalState(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 120
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

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

    invoke-virtual {p0, p1, v1}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 3

    .line 161
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    sget-object v1, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v2, 0x1

    .line 162
    invoke-interface {v0, v1, v2, p1}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createContactGroup(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method

.method public getMessageHeaders(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/util/Collection;
    .locals 13
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

    .line 407
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v0

    .line 408
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    invoke-interface {v1}, Lorg/briarproject/briar/introduction/MessageParser;->getMessagesVisibleInUiQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    .line 410
    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 411
    invoke-interface {v2, p1, v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v1

    .line 412
    new-instance v10, Ljava/util/ArrayList;

    .line 413
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 415
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 416
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/briarproject/bramble/api/sync/MessageId;

    .line 417
    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    .line 418
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-interface {v2, v1}, Lorg/briarproject/briar/introduction/MessageParser;->parseMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/MessageMetadata;

    move-result-object v5

    .line 419
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, p2, v4}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getMessageStatus(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/MessageStatus;

    move-result-object v6

    .line 420
    invoke-virtual {v5}, Lorg/briarproject/briar/introduction/MessageMetadata;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 422
    invoke-virtual {v5}, Lorg/briarproject/briar/introduction/MessageMetadata;->getMessageType()Lorg/briarproject/briar/introduction/MessageType;

    move-result-object v2

    .line 423
    sget-object v3, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    if-ne v2, v3, :cond_1

    .line 425
    invoke-virtual {v5}, Lorg/briarproject/briar/introduction/MessageMetadata;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v8, v11

    .line 424
    invoke-direct/range {v1 .. v8}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->parseInvitationRequest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;Lorg/briarproject/briar/api/client/SessionId;Ljava/util/Map;)Lorg/briarproject/briar/api/introduction/IntroductionRequest;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 426
    :cond_1
    sget-object v3, Lorg/briarproject/briar/introduction/MessageType;->ACCEPT:Lorg/briarproject/briar/introduction/MessageType;

    if-ne v2, v3, :cond_2

    .line 428
    invoke-static {v1}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v7

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v8, v11

    .line 427
    invoke-direct/range {v1 .. v9}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->parseInvitationResponse(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;Z)Lorg/briarproject/briar/api/introduction/IntroductionResponse;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    :cond_2
    sget-object v3, Lorg/briarproject/briar/introduction/MessageType;->DECLINE:Lorg/briarproject/briar/introduction/MessageType;

    if-ne v2, v3, :cond_0

    .line 431
    invoke-static {v1}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v7

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v8, v11

    .line 430
    invoke-direct/range {v1 .. v9}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->parseInvitationResponse(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/MessageMetadata;Lorg/briarproject/bramble/api/sync/MessageStatus;Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Map;Z)Lorg/briarproject/briar/api/introduction/IntroductionResponse;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v10

    :catch_0
    move-exception p1

    .line 436
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/data/BdfDictionary;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->messageParser:Lorg/briarproject/briar/introduction/MessageParser;

    invoke-interface {v0, p4}, Lorg/briarproject/briar/introduction/MessageParser;->parseMetadata(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/MessageMetadata;

    move-result-object p4

    .line 171
    invoke-virtual {p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v0

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->getMessageType()Lorg/briarproject/briar/introduction/MessageType;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    if-ne v0, v1, :cond_0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->createNewIntroduceeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_0

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    const/4 v1, 0x0

    move-object v6, v1

    .line 178
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;

    move-result-object v0

    if-nez v0, :cond_4

    .line 183
    invoke-virtual {p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->getMessageType()Lorg/briarproject/briar/introduction/MessageType;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    if-ne v0, v1, :cond_3

    if-eqz v6, :cond_2

    .line 185
    invoke-direct {p0, p1}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->createStorageId(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    .line 186
    invoke-virtual {p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->getMessageType()Lorg/briarproject/briar/introduction/MessageType;

    move-result-object v5

    iget-object v7, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->introduceeEngine:Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/ProtocolEngine;)Lorg/briarproject/briar/introduction/Session;

    move-result-object p2

    move-object v1, v0

    goto :goto_1

    .line 184
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 183
    :cond_3
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 189
    :cond_4
    invoke-static {v0}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    invoke-static {v0}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/briarproject/briar/introduction/SessionParser;->getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/introduction/Role;

    move-result-object v2

    .line 191
    sget-object v3, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCER:Lorg/briarproject/briar/api/introduction/Role;

    if-ne v2, v3, :cond_5

    .line 192
    invoke-virtual {p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->getMessageType()Lorg/briarproject/briar/introduction/MessageType;

    move-result-object v8

    iget-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    .line 193
    invoke-static {v0}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/briarproject/briar/introduction/SessionParser;->parseIntroducerSession(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v9

    iget-object v10, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->introducerEngine:Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 192
    invoke-direct/range {v4 .. v10}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/ProtocolEngine;)Lorg/briarproject/briar/introduction/Session;

    move-result-object p2

    goto :goto_1

    .line 195
    :cond_5
    sget-object v3, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCEE:Lorg/briarproject/briar/api/introduction/Role;

    if-ne v2, v3, :cond_6

    .line 196
    invoke-virtual {p4}, Lorg/briarproject/briar/introduction/MessageMetadata;->getMessageType()Lorg/briarproject/briar/introduction/MessageType;

    move-result-object v8

    iget-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    .line 197
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 198
    invoke-static {v0}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 197
    invoke-interface {p4, v2, v0}, Lorg/briarproject/briar/introduction/SessionParser;->parseIntroduceeSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object v9

    iget-object v10, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->introduceeEngine:Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 196
    invoke-direct/range {v4 .. v10}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->handleMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/introduction/Session;Lorg/briarproject/briar/introduction/ProtocolEngine;)Lorg/briarproject/briar/introduction/Session;

    move-result-object p2

    .line 202
    :goto_1
    invoke-direct {p0, p1, v1, p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/Session;)V

    const/4 p1, 0x0

    return p1

    .line 199
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public makeIntroduction(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/contact/Contact;Ljava/lang/String;J)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v1, p0

    .line 324
    iget-object v0, v1, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v2

    .line 327
    :try_start_0
    iget-object v0, v1, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0, v2}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v0

    .line 328
    iget-object v3, v1, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    .line 329
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v4

    .line 330
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v5

    .line 329
    invoke-interface {v3, v0, v4, v5}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->getSessionId(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v7

    .line 331
    invoke-direct {p0, v2, v7}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;

    move-result-object v0

    if-nez v0, :cond_4

    .line 337
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    move-object v3, p2

    .line 338
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v4

    invoke-virtual {v4}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 339
    iget-object v5, v1, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->crypto:Lorg/briarproject/briar/introduction/IntroductionCrypto;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v6

    invoke-virtual {v6}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v6

    .line 340
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v8

    invoke-virtual {v8}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v8

    .line 339
    invoke-interface {v5, v6, v8}, Lorg/briarproject/briar/introduction/IntroductionCrypto;->isAlice(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result v5

    .line 342
    new-instance v12, Lorg/briarproject/briar/introduction/IntroducerSession;

    if-eqz v5, :cond_0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object v8, v4

    :goto_0
    if-eqz v5, :cond_1

    .line 344
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v6

    :goto_1
    move-object v9, v6

    if-eqz v5, :cond_2

    move-object v10, v4

    goto :goto_2

    :cond_2
    move-object v10, v0

    :goto_2
    if-eqz v5, :cond_3

    .line 346
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    :goto_3
    move-object v11, v0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)V

    .line 348
    invoke-direct {p0, v2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->createStorageId(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    move-object v5, v12

    goto :goto_4

    .line 351
    :cond_4
    iget-object v3, v1, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    invoke-static {v0}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/briarproject/briar/introduction/SessionParser;->parseIntroducerSession(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v3

    .line 352
    invoke-static {v0}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    move-object v5, v3

    .line 355
    :goto_4
    iget-object v3, v1, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->introducerEngine:Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;

    move-object v4, v2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    .line 356
    invoke-virtual/range {v3 .. v8}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;->onRequestAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroducerSession;Ljava/lang/String;J)Lorg/briarproject/briar/introduction/IntroducerSession;

    move-result-object v3

    .line 358
    invoke-direct {p0, v2, v0, v3}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/Session;)V

    .line 359
    iget-object v0, v1, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iget-object v0, v1, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 361
    :try_start_1
    new-instance v3, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v3, v0}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :goto_5
    iget-object v3, v1, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v3, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 364
    throw v0
.end method

.method public onClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

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

    .line 144
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->removeSessionWithIntroducer(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    .line 145
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->abortOrRemoveSessionWithIntroducee(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    .line 148
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p0, p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method

.method public respondToIntroduction(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/client/SessionId;JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 373
    :try_start_0
    invoke-direct {p0, v0, p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 381
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    .line 382
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    .line 383
    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->sessionParser:Lorg/briarproject/briar/introduction/SessionParser;

    .line 384
    invoke-static {p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;->access$100(Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/briarproject/briar/introduction/SessionParser;->parseIntroduceeSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 387
    iget-object p5, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->introduceeEngine:Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    .line 388
    invoke-virtual {p5, v0, p1, p3, p4}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onAcceptAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;J)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    goto :goto_0

    .line 390
    :cond_0
    iget-object p5, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->introduceeEngine:Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    .line 391
    invoke-virtual {p5, v0, p1, p3, p4}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;->onDeclineAction(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/introduction/IntroduceeSession;J)Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-result-object p1

    .line 394
    :goto_0
    invoke-static {p2}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;->access$000(Lorg/briarproject/briar/introduction/IntroductionManagerImpl$StoredSession;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->storeSession(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/introduction/Session;)V

    .line 395
    iget-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    .line 378
    :cond_1
    :try_start_1
    new-instance p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>()V

    throw p1
    :try_end_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 397
    :try_start_2
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :goto_1
    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 400
    throw p1
.end method
