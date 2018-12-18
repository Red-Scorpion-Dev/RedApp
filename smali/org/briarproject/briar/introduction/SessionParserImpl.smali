.class Lorg/briarproject/briar/introduction/SessionParserImpl;
.super Ljava/lang/Object;
.source "SessionParserImpl.java"

# interfaces
.implements Lorg/briarproject/briar/introduction/SessionParser;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/briarproject/briar/introduction/SessionParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method

.method private getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;)Lorg/briarproject/bramble/api/identity/Author;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/briarproject/briar/introduction/SessionParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object p1

    return-object p1
.end method

.method private getGroupId(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 178
    new-instance v0, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    return-object v0
.end method

.method private getMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 172
    invoke-virtual {p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 173
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private getSessionId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/client/SessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "sessionId"

    .line 165
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object p1

    .line 166
    new-instance v0, Lorg/briarproject/briar/api/client/SessionId;

    invoke-direct {v0, p1}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    return-object v0
.end method

.method private getState(Lorg/briarproject/bramble/api/data/BdfDictionary;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "state"

    .line 161
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1
.end method

.method private parseIntroducee(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "lastLocalMessageId"

    .line 92
    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v7

    const-string v0, "lastRemoteMessageId"

    .line 94
    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v8

    const-string v0, "localTimestamp"

    .line 95
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v0, "groupId"

    .line 96
    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getGroupId(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    const-string v0, "author"

    .line 97
    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v4

    .line 98
    new-instance p2, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-object p2
.end method

.method private parseLocal(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroduceeSession$Local;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "alice"

    .line 121
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v0, "lastLocalMessageId"

    .line 123
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    const-string v0, "localTimestamp"

    .line 124
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "ephemeralPublicKey"

    .line 126
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object v6

    const-string v0, "transportProperties"

    .line 128
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalDictionary(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    const-string v1, "ephemeralPrivateKey"

    .line 130
    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object v7

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    goto :goto_1

    .line 131
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/introduction/SessionParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 133
    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateTransportPropertiesMap(Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :goto_1
    const-string v0, "acceptTimestamp"

    .line 134
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v0, "macKey"

    .line 135
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object v11

    .line 136
    new-instance p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;-><init>(ZLorg/briarproject/bramble/api/sync/MessageId;J[B[BLjava/util/Map;J[B)V

    return-object p1
.end method

.method private parseRemote(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "alice"

    .line 142
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v0, "remoteAuthor"

    .line 143
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v3

    const-string v0, "lastRemoteMessageId"

    .line 145
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    const-string v0, "ephemeralPublicKey"

    .line 147
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object v5

    const-string v0, "transportProperties"

    .line 149
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalDictionary(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 150
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/introduction/SessionParserImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 152
    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateTransportPropertiesMap(Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :goto_1
    const-string v0, "acceptTimestamp"

    .line 153
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v0, "macKey"

    .line 154
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object v9

    .line 155
    new-instance p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;-><init>(ZLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/sync/MessageId;[BLjava/util/Map;J[B)V

    return-object p1
.end method

.method private parseTransportKeys(Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;",
            ")",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 190
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 191
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    new-instance v3, Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-direct {v3, v2}, Lorg/briarproject/bramble/api/plugin/TransportId;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/briarproject/bramble/api/transport/KeySetId;

    .line 193
    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-direct {v4, v2}, Lorg/briarproject/bramble/api/transport/KeySetId;-><init>(I)V

    .line 192
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/introduction/Role;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "role"

    .line 71
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/briarproject/briar/api/introduction/Role;->fromValue(I)Lorg/briarproject/briar/api/introduction/Role;

    move-result-object p1

    return-object p1
.end method

.method public getSessionQuery(Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 3

    const/4 v0, 0x1

    .line 66
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "sessionId"

    invoke-direct {v1, v2, p1}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1
.end method

.method public parseIntroduceeSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroduceeSession;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/introduction/Role;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCEE:Lorg/briarproject/briar/api/introduction/Role;

    if-ne v0, v1, :cond_0

    .line 106
    invoke-direct {p0, p2}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getSessionId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v3

    .line 107
    invoke-direct {p0, p2}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getState(Lorg/briarproject/bramble/api/data/BdfDictionary;)I

    move-result v0

    invoke-static {v0}, Lorg/briarproject/briar/introduction/IntroduceeState;->fromValue(I)Lorg/briarproject/briar/introduction/IntroduceeState;

    move-result-object v4

    const-string v0, "requestTimestamp"

    .line 108
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v0, "introducer"

    .line 109
    invoke-direct {p0, p2, v0}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getAuthor(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v8

    const-string v0, "local"

    .line 110
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getDictionary(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/introduction/SessionParserImpl;->parseLocal(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object v9

    const-string v0, "remote"

    .line 111
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getDictionary(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/introduction/SessionParserImpl;->parseRemote(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v10

    const-string v0, "masterKey"

    .line 112
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object v11

    const-string v0, "transportKeys"

    .line 114
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalDictionary(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    .line 113
    invoke-direct {p0, p2}, Lorg/briarproject/briar/introduction/SessionParserImpl;->parseTransportKeys(Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    move-result-object v12

    .line 115
    new-instance p2, Lorg/briarproject/briar/introduction/IntroduceeSession;

    move-object v2, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v12}, Lorg/briarproject/briar/introduction/IntroduceeSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroduceeState;JLorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/briar/introduction/IntroduceeSession$Local;Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;[BLjava/util/Map;)V

    return-object p2

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public parseIntroducerSession(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroducerSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/introduction/Role;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCER:Lorg/briarproject/briar/api/introduction/Role;

    if-ne v0, v1, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getSessionId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v3

    .line 79
    invoke-direct {p0, p1}, Lorg/briarproject/briar/introduction/SessionParserImpl;->getState(Lorg/briarproject/bramble/api/data/BdfDictionary;)I

    move-result v0

    invoke-static {v0}, Lorg/briarproject/briar/introduction/IntroducerState;->fromValue(I)Lorg/briarproject/briar/introduction/IntroducerState;

    move-result-object v4

    const-string v0, "requestTimestamp"

    .line 80
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v0, "introduceeA"

    .line 82
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getDictionary(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 81
    invoke-direct {p0, v3, v0}, Lorg/briarproject/briar/introduction/SessionParserImpl;->parseIntroducee(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v7

    const-string v0, "introduceeB"

    .line 84
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getDictionary(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    .line 83
    invoke-direct {p0, v3, p1}, Lorg/briarproject/briar/introduction/SessionParserImpl;->parseIntroducee(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v8

    .line 85
    new-instance p1, Lorg/briarproject/briar/introduction/IntroducerSession;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/briarproject/briar/introduction/IntroducerSession;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/briar/introduction/IntroducerState;JLorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)V

    return-object p1

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
