.class Lorg/briarproject/briar/introduction/SessionEncoderImpl;
.super Ljava/lang/Object;
.source "SessionEncoderImpl.java"

# interfaces
.implements Lorg/briarproject/briar/introduction/SessionEncoder;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method

.method private encodeCommon(Lorg/briarproject/briar/introduction/IntroduceeSession$Common;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    .line 108
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v1, "alice"

    .line 109
    iget-boolean v2, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->alice:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ephemeralPublicKey"

    .line 110
    iget-object v2, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->ephemeralPublicKey:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->putNullable(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "transportProperties"

    .line 111
    iget-object v2, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->transportProperties:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v3, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->transportProperties:Ljava/util/Map;

    .line 113
    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->toDictionary(Ljava/util/Map;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    .line 111
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->putNullable(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "acceptTimestamp"

    .line 114
    iget-wide v2, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->acceptTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "macKey"

    .line 115
    iget-object p1, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Common;->macKey:[B

    invoke-direct {p0, v0, v1, p1}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->putNullable(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private encodeIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    .line 85
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v1, "lastLocalMessageId"

    .line 86
    iget-object v2, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->lastLocalMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p0, v0, v1, v2}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->putNullable(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "lastRemoteMessageId"

    .line 87
    iget-object v2, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p0, v0, v1, v2}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->putNullable(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "localTimestamp"

    .line 89
    iget-wide v2, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->localTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "groupId"

    .line 90
    iget-object v2, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "author"

    .line 91
    iget-object v2, p0, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object p1, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-interface {v2, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private encodeLocal(Lorg/briarproject/briar/introduction/IntroduceeSession$Local;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    .line 120
    invoke-direct {p0, p1}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->encodeCommon(Lorg/briarproject/briar/introduction/IntroduceeSession$Common;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    const-string v1, "localTimestamp"

    .line 121
    iget-wide v2, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->lastMessageTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lastLocalMessageId"

    .line 122
    iget-object v2, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->lastMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p0, v0, v1, v2}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->putNullable(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ephemeralPrivateKey"

    .line 123
    iget-object p1, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Local;->ephemeralPrivateKey:[B

    invoke-direct {p0, v0, v1, p1}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->putNullable(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private encodeRemote(Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    .line 129
    invoke-direct {p0, p1}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->encodeCommon(Lorg/briarproject/briar/introduction/IntroduceeSession$Common;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    const-string v1, "remoteAuthor"

    .line 130
    iget-object v2, p0, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    iget-object v3, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lastRemoteMessageId"

    .line 131
    iget-object p1, p1, Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;->lastMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p0, v0, v1, p1}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->putNullable(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private encodeSession(Lorg/briarproject/briar/introduction/Session;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    .line 136
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v1, "sessionId"

    .line 137
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/Session;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    .line 138
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/Session;->getRole()Lorg/briarproject/briar/api/introduction/Role;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/briar/api/introduction/Role;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "state"

    .line 139
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/Session;->getState()Lorg/briarproject/briar/introduction/State;

    move-result-object v2

    invoke-interface {v2}, Lorg/briarproject/briar/introduction/State;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestTimestamp"

    .line 140
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/Session;->getRequestTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private encodeTransportKeys(Ljava/util/Map;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/transport/KeySetId;",
            ">;)",
            "Lorg/briarproject/bramble/api/data/BdfDictionary;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 148
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/transport/KeySetId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/transport/KeySetId;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private putNullable(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    .line 156
    sget-object p3, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, p2, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public encodeIntroduceeSession(Lorg/briarproject/briar/introduction/IntroduceeSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    .line 97
    invoke-direct {p0, p1}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->encodeSession(Lorg/briarproject/briar/introduction/Session;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    const-string v1, "introducer"

    .line 98
    iget-object v2, p0, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getIntroducer()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "local"

    .line 99
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getLocal()Lorg/briarproject/briar/introduction/IntroduceeSession$Local;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->encodeLocal(Lorg/briarproject/briar/introduction/IntroduceeSession$Local;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "remote"

    .line 100
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getRemote()Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->encodeRemote(Lorg/briarproject/briar/introduction/IntroduceeSession$Remote;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "masterKey"

    .line 101
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getMasterKey()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->putNullable(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "transportKeys"

    .line 103
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroduceeSession;->getTransportKeys()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->encodeTransportKeys(Ljava/util/Map;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    .line 102
    invoke-direct {p0, v0, v1, p1}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->putNullable(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public encodeIntroducerSession(Lorg/briarproject/briar/introduction/IntroducerSession;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 3

    .line 78
    invoke-direct {p0, p1}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->encodeSession(Lorg/briarproject/briar/introduction/Session;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    const-string v1, "introduceeA"

    .line 79
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeA()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->encodeIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "introduceeB"

    .line 80
    invoke-virtual {p1}, Lorg/briarproject/briar/introduction/IntroducerSession;->getIntroduceeB()Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->encodeIntroducee(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getIntroduceeSessionsByIntroducerQuery(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "role"

    sget-object v3, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCEE:Lorg/briarproject/briar/api/introduction/Role;

    .line 63
    invoke-virtual {v3}, Lorg/briarproject/briar/api/introduction/Role;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "introducer"

    iget-object v3, p0, Lorg/briarproject/briar/introduction/SessionEncoderImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 65
    invoke-interface {v3, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    .line 62
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    return-object p1
.end method

.method public getIntroducerSessionsQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    const/4 v0, 0x1

    .line 71
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v2, "role"

    sget-object v3, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCER:Lorg/briarproject/briar/api/introduction/Role;

    .line 72
    invoke-virtual {v3}, Lorg/briarproject/briar/api/introduction/Role;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 71
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    return-object v0
.end method
