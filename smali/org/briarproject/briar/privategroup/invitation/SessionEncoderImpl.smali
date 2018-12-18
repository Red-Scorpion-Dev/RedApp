.class Lorg/briarproject/briar/privategroup/invitation/SessionEncoderImpl;
.super Ljava/lang/Object;
.source "SessionEncoderImpl.java"

# interfaces
.implements Lorg/briarproject/briar/privategroup/invitation/SessionEncoder;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeSession(Lorg/briarproject/briar/privategroup/invitation/Session;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 4

    .line 31
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v1, "isSession"

    const/4 v2, 0x1

    .line 32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionId"

    .line 33
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/Session;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "privateGroupId"

    .line 34
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/Session;->getPrivateGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/Session;->getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "lastLocalMessageId"

    .line 37
    sget-object v2, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "lastLocalMessageId"

    .line 38
    invoke-virtual {v0, v2, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :goto_0
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/Session;->getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "lastRemoteMessageId"

    .line 41
    sget-object v2, Lorg/briarproject/bramble/api/data/BdfDictionary;->NULL_VALUE:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v2, "lastRemoteMessageId"

    .line 42
    invoke-virtual {v0, v2, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v1, "localTimestamp"

    .line 43
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/Session;->getLocalTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inviteTimestamp"

    .line 44
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/Session;->getInviteTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "role"

    .line 45
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/Session;->getRole()Lorg/briarproject/briar/privategroup/invitation/Role;

    move-result-object v2

    invoke-virtual {v2}, Lorg/briarproject/briar/privategroup/invitation/Role;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "state"

    .line 46
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/Session;->getState()Lorg/briarproject/briar/privategroup/invitation/State;

    move-result-object p1

    invoke-interface {p1}, Lorg/briarproject/briar/privategroup/invitation/State;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
