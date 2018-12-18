.class Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;
.super Ljava/lang/Object;
.source "TransportPropertyManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;
.implements Lorg/briarproject/bramble/api/properties/TransportPropertyManager;
.implements Lorg/briarproject/bramble/api/sync/Client;
.implements Lorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;
.implements Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final localGroup:Lorg/briarproject/bramble/api/sync/Group;

.field private final metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 60
    iput-object p2, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 61
    iput-object p3, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 62
    iput-object p4, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;

    .line 63
    iput-object p5, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 64
    iput-object p6, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 65
    sget-object p1, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p2, 0x0

    invoke-interface {p5, p1, p2}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createLocalGroup(Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    return-void
.end method

.method private encodeProperties(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;J)Lorg/briarproject/bramble/api/data/BdfList;
    .locals 2

    const/4 v0, 0x3

    .line 296
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v0, p3

    const/4 p1, 0x2

    aput-object p2, v0, p1

    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    return-object p1
.end method

.method private findLatest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 317
    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object p1

    .line 318
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    const-string v2, "transportId"

    .line 320
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "local"

    .line 321
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, p4, :cond_0

    .line 322
    new-instance p1, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/sync/MessageId;

    const-string p3, "version"

    invoke-virtual {v1, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-direct {p1, p2, p3, p4, v0}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/properties/TransportPropertyManagerImpl$1;)V

    return-object p1

    :cond_1
    return-object v0
.end method

.method private findLatestLocal(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    iget-object v1, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v2, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    .line 303
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Map;

    move-result-object p1

    .line 304
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/data/BdfDictionary;

    .line 306
    new-instance v3, Lorg/briarproject/bramble/api/plugin/TransportId;

    const-string v4, "transportId"

    invoke-virtual {v2, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/briarproject/bramble/api/plugin/TransportId;-><init>(Ljava/lang/String;)V

    const-string v4, "version"

    .line 307
    invoke-virtual {v2, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 308
    new-instance v2, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/sync/MessageId;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v4, v5, v6}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/properties/TransportPropertyManagerImpl$1;)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;
    .locals 3

    .line 273
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    sget-object v1, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createContactGroup(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    return-object p1
.end method

.method private getRemoteProperties(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/properties/TransportProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 203
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>()V

    return-object p1

    .line 204
    :cond_0
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    .line 207
    :try_start_0
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->findLatest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;

    move-result-object p2

    if-nez p2, :cond_1

    .line 208
    new-instance p1, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>()V

    return-object p1

    .line 210
    :cond_1
    iget-object p3, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 211
    invoke-static {p2}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->access$100(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageAsList(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    .line 212
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->parseProperties(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 214
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static synthetic lambda$getLocalProperties$0(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/properties/TransportProperties;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, p1, v1}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->findLatest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 179
    invoke-static {p1}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->access$100(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    .line 178
    invoke-interface {v0, p2, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageAsList(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    .line 180
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->parseProperties(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 182
    new-instance p1, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>()V

    :cond_1
    return-object p1
.end method

.method public static synthetic lambda$getRemoteProperties$1(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    iget-object v1, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContacts(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/contact/Contact;

    .line 195
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v3

    invoke-direct {p0, p2, v2, p1}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->getRemoteProperties(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$getRemoteProperties$2(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/properties/TransportProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p3, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    invoke-direct {p0, p3, p1, p2}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->getRemoteProperties(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$mergeLocalProperties$3(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 233
    iget-object v0, v9, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    const/4 v12, 0x1

    invoke-direct {v9, v11, v0, v10, v12}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->findLatest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;

    move-result-object v13

    if-nez v13, :cond_0

    move-object/from16 v14, p2

    const/4 v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, v9, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 240
    invoke-static {v13}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->access$100(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    .line 239
    invoke-interface {v0, v11, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageAsList(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 241
    invoke-direct {v9, v0}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->parseProperties(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object v0

    .line 242
    new-instance v1, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {v1, v0}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>(Ljava/util/Map;)V

    move-object/from16 v2, p2

    .line 243
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/properties/TransportProperties;->putAll(Ljava/util/Map;)V

    .line 244
    invoke-virtual {v1, v0}, Lorg/briarproject/bramble/api/properties/TransportProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v12

    move-object v14, v1

    :goto_0
    if-eqz v0, :cond_5

    const-wide/16 v15, 0x1

    if-nez v13, :cond_1

    move-wide v5, v15

    goto :goto_1

    .line 248
    :cond_1
    invoke-static {v13}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->access$000(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)J

    move-result-wide v0

    add-long/2addr v0, v15

    move-wide v5, v0

    .line 249
    :goto_1
    iget-object v0, v9, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, p1

    move-object v4, v14

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->storeMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;JZZ)V

    if-eqz v13, :cond_2

    .line 253
    iget-object v0, v9, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v13}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->access$100(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 255
    :cond_2
    iget-object v0, v9, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v11}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContacts(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/Contact;

    .line 256
    invoke-direct {v9, v0}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-direct {v9, v11, v1, v10, v12}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->findLatest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;

    move-result-object v17

    if-nez v17, :cond_4

    move-wide v5, v15

    goto :goto_3

    .line 258
    :cond_4
    invoke-static/range {v17 .. v17}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->access$000(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)J

    move-result-wide v1

    add-long/2addr v1, v15

    move-wide v5, v1

    .line 259
    :goto_3
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, p1

    move-object v4, v14

    invoke-direct/range {v0 .. v8}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->storeMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;JZZ)V

    if-eqz v17, :cond_3

    .line 263
    iget-object v0, v9, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static/range {v17 .. v17}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->access$100(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private parseProperties(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/properties/TransportProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 331
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    .line 332
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateTransportProperties(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object p1

    return-object p1
.end method

.method private storeMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;JZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 281
    :try_start_0
    invoke-direct {p0, p3, p4, p5, p6}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->encodeProperties(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;J)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p4

    .line 282
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 283
    iget-object v2, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v2, p2, v0, v1, p4}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p2

    .line 284
    new-instance p4, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p4}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v0, "transportId"

    .line 285
    invoke-virtual {p3}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, v0, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "version"

    .line 286
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "local"

    .line 287
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object p3, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p3, p1, p2, p4, p8}, Lorg/briarproject/bramble/api/client/ClientHelper;->addLocalMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 290
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public addRemoteProperties(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    .line 136
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/bramble/api/properties/TransportProperties;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->storeMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;JZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 83
    iget-object v1, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 84
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v2

    sget-object v3, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v4, 0x0

    .line 83
    invoke-interface {v1, p1, v2, v3, v4}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->getClientVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group$Visibility;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p2

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->setGroupVisibility(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    .line 87
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->getLocalProperties(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Map;

    move-result-object p2

    .line 88
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/briarproject/bramble/api/properties/TransportProperties;

    const-wide/16 v7, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->storeMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;JZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createLocalState(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    iget-object v1, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->localGroup:Lorg/briarproject/bramble/api/sync/Group;

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 74
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

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

    invoke-virtual {p0, p1, v1}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getLocalProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/properties/-$$Lambda$3u-v27JdSI7gzQOnqcJLdEqq0O0;

    invoke-direct {v1, p0}, Lorg/briarproject/bramble/properties/-$$Lambda$3u-v27JdSI7gzQOnqcJLdEqq0O0;-><init>(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getLocalProperties(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 152
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->findLatestLocal(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/Map;

    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    iget-object v3, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;

    invoke-static {v4}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->access$100(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    .line 157
    invoke-interface {v3, p1, v4}, Lorg/briarproject/bramble/api/client/ClientHelper;->getMessageAsList(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v3

    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v3}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->parseProperties(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 163
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getLocalProperties(Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/properties/TransportProperties;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    new-instance v2, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$LhxWYjP5rlVST_cbpc_sWyH7dZE;

    invoke-direct {v2, p0, p1}, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$LhxWYjP5rlVST_cbpc_sWyH7dZE;-><init>(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/properties/TransportProperties;
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 185
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getRemoteProperties(Lorg/briarproject/bramble/api/plugin/TransportId;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$xqIAd3Xp1vvy9IY0sm5Xn11H0Gw;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$xqIAd3Xp1vvy9IY0sm5Xn11H0Gw;-><init>(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getRemoteProperties(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/properties/TransportProperties;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$VgxKy7ZYmL_x01warzUTkjEIA2Y;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$VgxKy7ZYmL_x01warzUTkjEIA2Y;-><init>(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/plugin/TransportId;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/properties/TransportProperties;

    return-object p1
.end method

.method public incomingMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/db/Metadata;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;
        }
    .end annotation

    .line 112
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->metadataParser:Lorg/briarproject/bramble/api/data/MetadataParser;

    invoke-interface {v0, p3}, Lorg/briarproject/bramble/api/data/MetadataParser;->parse(Lorg/briarproject/bramble/api/db/Metadata;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    .line 113
    new-instance v0, Lorg/briarproject/bramble/api/plugin/TransportId;

    const-string v1, "transportId"

    invoke-virtual {p3, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/plugin/TransportId;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->findLatest(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/plugin/TransportId;Z)Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "version"

    .line 116
    invoke-virtual {p3, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->access$000(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)J

    move-result-wide v5

    cmp-long p3, v3, v5

    if-lez p3, :cond_0

    .line 118
    iget-object p2, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v0}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->access$100(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 119
    iget-object p2, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-static {v0}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->access$100(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p3, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V

    .line 123
    iget-object p3, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->deleteMessageMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception p1

    .line 127
    new-instance p2, Lorg/briarproject/bramble/api/sync/InvalidMessageException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/sync/InvalidMessageException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public mergeLocalProperties(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 229
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    new-instance v2, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$BXt04dkG296YFYu-4pdhcqKcgc0;

    invoke-direct {v2, p0, p1, p2}, Lorg/briarproject/bramble/properties/-$$Lambda$TransportPropertyManagerImpl$BXt04dkG296YFYu-4pdhcqKcgc0;-><init>(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;)V

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 268
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public onClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p2}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

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

    .line 96
    iget-object v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-direct {p0, p2}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;->getContactGroup(Lorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->removeGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    return-void
.end method
