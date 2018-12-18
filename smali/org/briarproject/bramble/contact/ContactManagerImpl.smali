.class Lorg/briarproject/bramble/contact/ContactManagerImpl;
.super Ljava/lang/Object;
.source "ContactManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/contact/ContactManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final hooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

.field private final keyManager:Lorg/briarproject/bramble/api/transport/KeyManager;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/identity/IdentityManager;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 48
    iput-object p2, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->keyManager:Lorg/briarproject/bramble/api/transport/KeyManager;

    .line 49
    iput-object p3, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 50
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->hooks:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$addContact$0(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZZLorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 83
    invoke-virtual/range {v0 .. v9}, Lorg/briarproject/bramble/contact/ContactManagerImpl;->addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZZ)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$contactExists$5(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p3, p1, p2}, Lorg/briarproject/bramble/contact/ContactManagerImpl;->contactExists(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getAuthorInfo$6(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/AuthorInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p2, p1}, Lorg/briarproject/bramble/contact/ContactManagerImpl;->getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getContact$1(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/contact/Contact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p2, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getContact$2(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/contact/Contact;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p3, p1, p2}, Lorg/briarproject/bramble/contact/ContactManagerImpl;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$removeContact$3(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p2, p1}, Lorg/briarproject/bramble/contact/ContactManagerImpl;->removeContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method

.method public static synthetic lambda$setContactAlias$4(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p3, p1, p2}, Lorg/briarproject/bramble/contact/ContactManagerImpl;->setContactAlias(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZZ)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v0, p0

    move-object v9, p1

    .line 62
    iget-object v1, v0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-interface/range {v1 .. v6}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;ZZ)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v10

    .line 63
    iget-object v1, v0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->keyManager:Lorg/briarproject/bramble/api/transport/KeyManager;

    move-object v3, v10

    move-object v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-interface/range {v1 .. v8}, Lorg/briarproject/bramble/api/transport/KeyManager;->addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZ)Ljava/util/Map;

    .line 64
    iget-object v1, v0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v10}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v1

    .line 65
    iget-object v2, v0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->hooks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;

    invoke-interface {v3, p1, v1}, Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;->addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method public addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;ZZ)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;ZZ)Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    .line 73
    iget-object p3, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p3, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p3

    .line 74
    iget-object p4, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->hooks:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;

    invoke-interface {p5, p1, p3}, Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;->addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public addContact(Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZZ)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    move-object v10, p0

    .line 82
    iget-object v11, v10, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v12, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$jmNrPc7FumNkK44HwL_pcIa11BY;-><init>(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/crypto/SecretKey;JZZZ)V

    const/4 v0, 0x0

    invoke-interface {v11, v0, v12}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public contactExists(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z

    move-result p1

    return p1
.end method

.method public contactExists(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qOUEH10OW_q7vkSBq2wATQMJ8XM;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qOUEH10OW_q7vkSBq2wATQMJ8XM;-><init>(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getActiveContacts()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 114
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/briarproject/bramble/contact/-$$Lambda$gH7w6_moWn3w4yUONFIQe0qlkcY;

    invoke-direct {v2, v1}, Lorg/briarproject/bramble/contact/-$$Lambda$gH7w6_moWn3w4yUONFIQe0qlkcY;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;)V

    const/4 v1, 0x1

    .line 115
    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/contact/Contact;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAuthorInfo(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/briarproject/bramble/api/identity/AuthorId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance p1, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    sget-object p2, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->OURSELVES:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/identity/AuthorInfo;-><init>(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;)V

    return-object p1

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContactsByAuthorId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;

    move-result-object p1

    .line 182
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    sget-object p2, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->UNKNOWN:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/identity/AuthorInfo;-><init>(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;)V

    return-object p1

    .line 183
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_3

    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/contact/Contact;

    .line 185
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->isVerified()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    sget-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->VERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/briarproject/bramble/api/identity/AuthorInfo;-><init>(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;Ljava/lang/String;)V

    return-object p2

    .line 186
    :cond_2
    new-instance p2, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    sget-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->UNVERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/Contact;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/briarproject/bramble/api/identity/AuthorInfo;-><init>(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;Ljava/lang/String;)V

    return-object p2

    .line 183
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public getAuthorInfo(Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/identity/AuthorInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$WEVXGtBztVtczfJ4r_Tl3KuG0h4;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$WEVXGtBztVtczfJ4r_Tl3KuG0h4;-><init>(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/AuthorId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    return-object p1
.end method

.method public getContact(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qmwNJrGUX-eZOnsX7tF5sVVeKuw;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qmwNJrGUX-eZOnsX7tF5sVVeKuw;-><init>(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/contact/Contact;

    return-object p1
.end method

.method public getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/contact/Contact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 103
    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContactsByAuthorId(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/identity/AuthorId;)Ljava/util/Collection;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/contact/Contact;

    .line 105
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getLocalAuthorId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/briarproject/bramble/api/identity/AuthorId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 109
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/db/NoSuchContactException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/db/NoSuchContactException;-><init>()V

    throw p1
.end method

.method public getContact(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/contact/Contact;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$j-P73CveGRKmgOVyLS2lYdBrJGg;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$j-P73CveGRKmgOVyLS2lYdBrJGg;-><init>(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/contact/Contact;

    return-object p1
.end method

.method public registerContactHook(Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->hooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeContact(Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$a--95cZjybdXXqNiv3Ypr5pRO3I;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$a--95cZjybdXXqNiv3Ypr5pRO3I;-><init>(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    return-void
.end method

.method public removeContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->hooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;

    invoke-interface {v2, p1, v0}, Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;->removingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method

.method public setContactActive(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setContactActive(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Z)V

    return-void
.end method

.method public setContactAlias(Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$EfFGAUvRrCV355yeOOy1D8He3mI;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$EfFGAUvRrCV355yeOOy1D8He3mI;-><init>(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    return-void
.end method

.method public setContactAlias(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 136
    invoke-static {p3}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/briarproject/bramble/contact/ContactManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setContactAlias(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V

    return-void
.end method
