.class Lorg/briarproject/briar/sharing/SessionParserImpl;
.super Ljava/lang/Object;
.source "SessionParserImpl.java"

# interfaces
.implements Lorg/briarproject/briar/sharing/SessionParser;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getInviteTimestamp(Lorg/briarproject/bramble/api/data/BdfDictionary;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "inviteTimestamp"

    .line 78
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getLastLocalMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "lastLocalMessageId"

    .line 62
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getLastRemoteMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "lastRemoteMessageId"

    .line 69
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getLocalTimestamp(Lorg/briarproject/bramble/api/data/BdfDictionary;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "localTimestamp"

    .line 74
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getShareableId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/briarproject/bramble/api/sync/GroupId;

    const-string v1, "shareableId"

    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

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

    .line 52
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public getAllSessionsQuery()Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    const/4 v0, 0x1

    .line 39
    new-array v1, v0, [Ljava/util/Map$Entry;

    new-instance v2, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v3, "isSession"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    invoke-static {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getSessionQuery(Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 3

    const/4 v0, 0x1

    .line 34
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

.method public parseSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/sharing/Session;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 45
    new-instance v10, Lorg/briarproject/briar/sharing/Session;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/SessionParserImpl;->getState(Lorg/briarproject/bramble/api/data/BdfDictionary;)I

    move-result v0

    invoke-static {v0}, Lorg/briarproject/briar/sharing/State;->fromValue(I)Lorg/briarproject/briar/sharing/State;

    move-result-object v1

    .line 46
    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/SessionParserImpl;->getShareableId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/SessionParserImpl;->getLastLocalMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v4

    .line 47
    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/SessionParserImpl;->getLastRemoteMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/SessionParserImpl;->getLocalTimestamp(Lorg/briarproject/bramble/api/data/BdfDictionary;)J

    move-result-wide v6

    .line 48
    invoke-direct {p0, p2}, Lorg/briarproject/briar/sharing/SessionParserImpl;->getInviteTimestamp(Lorg/briarproject/bramble/api/data/BdfDictionary;)J

    move-result-wide v8

    move-object v0, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/Session;-><init>(Lorg/briarproject/briar/sharing/State;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJ)V

    return-object v10
.end method
