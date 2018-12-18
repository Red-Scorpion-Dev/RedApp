.class Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;
.super Ljava/lang/Object;
.source "SessionParserImpl.java"

# interfaces
.implements Lorg/briarproject/briar/privategroup/invitation/SessionParser;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
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

    .line 107
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

    .line 91
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 92
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

    .line 98
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalRaw(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 99
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

    .line 103
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getPrivateGroupId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/briarproject/bramble/api/sync/GroupId;

    const-string v1, "privateGroupId"

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

    .line 81
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

    .line 43
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

.method public getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Role;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const-string v0, "role"

    .line 48
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/briarproject/briar/privategroup/invitation/Role;->fromValue(I)Lorg/briarproject/briar/privategroup/invitation/Role;

    move-result-object p1

    return-object p1
.end method

.method public getSessionQuery(Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 3

    const/4 v0, 0x1

    .line 38
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

.method public parseCreatorSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/CreatorSession;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Role;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/Role;->CREATOR:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getPrivateGroupId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 56
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getLastLocalMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getLastRemoteMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    .line 57
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getLocalTimestamp(Lorg/briarproject/bramble/api/data/BdfDictionary;)J

    move-result-wide v7

    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getInviteTimestamp(Lorg/briarproject/bramble/api/data/BdfDictionary;)J

    move-result-wide v9

    .line 58
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getState(Lorg/briarproject/bramble/api/data/BdfDictionary;)I

    move-result p2

    invoke-static {p2}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->fromValue(I)Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-result-object v11

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v11}, Lorg/briarproject/briar/privategroup/invitation/CreatorSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/CreatorState;)V

    return-object v0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public parseInviteeSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/InviteeSession;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Role;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/Role;->INVITEE:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne v0, v1, :cond_0

    .line 65
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getPrivateGroupId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 66
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getLastLocalMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getLastRemoteMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    .line 67
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getLocalTimestamp(Lorg/briarproject/bramble/api/data/BdfDictionary;)J

    move-result-wide v7

    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getInviteTimestamp(Lorg/briarproject/bramble/api/data/BdfDictionary;)J

    move-result-wide v9

    .line 68
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getState(Lorg/briarproject/bramble/api/data/BdfDictionary;)I

    move-result p2

    invoke-static {p2}, Lorg/briarproject/briar/privategroup/invitation/InviteeState;->fromValue(I)Lorg/briarproject/briar/privategroup/invitation/InviteeState;

    move-result-object v11

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v11}, Lorg/briarproject/briar/privategroup/invitation/InviteeSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JJLorg/briarproject/briar/privategroup/invitation/InviteeState;)V

    return-object v0

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public parsePeerSession(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/PeerSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getRole(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/privategroup/invitation/Role;

    move-result-object v0

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/Role;->PEER:Lorg/briarproject/briar/privategroup/invitation/Role;

    if-ne v0, v1, :cond_0

    .line 75
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/PeerSession;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getPrivateGroupId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    .line 76
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getLastLocalMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v5

    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getLastRemoteMessageId(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    .line 77
    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getLocalTimestamp(Lorg/briarproject/bramble/api/data/BdfDictionary;)J

    move-result-wide v7

    invoke-direct {p0, p2}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;->getState(Lorg/briarproject/bramble/api/data/BdfDictionary;)I

    move-result p2

    invoke-static {p2}, Lorg/briarproject/briar/privategroup/invitation/PeerState;->fromValue(I)Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-result-object v9

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lorg/briarproject/briar/privategroup/invitation/PeerSession;-><init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/briar/privategroup/invitation/PeerState;)V

    return-object v0

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
