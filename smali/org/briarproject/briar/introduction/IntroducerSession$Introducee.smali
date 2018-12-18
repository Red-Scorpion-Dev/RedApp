.class Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;
.super Ljava/lang/Object;
.source "IntroducerSession.java"

# interfaces
.implements Lorg/briarproject/briar/introduction/PeerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/introduction/IntroducerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Introducee"
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field final author:Lorg/briarproject/bramble/api/identity/Author;

.field final groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field final lastLocalMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field final lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field final localTimestamp:J

.field final sessionId:Lorg/briarproject/briar/api/client/SessionId;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)V
    .locals 8

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 84
    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method constructor <init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    .line 65
    iput-object p2, p0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 66
    iput-wide p4, p0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->localTimestamp:J

    .line 67
    iput-object p3, p0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 68
    iput-object p6, p0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->lastLocalMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 69
    iput-object p7, p0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/Message;)V
    .locals 8

    .line 73
    iget-object v1, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    iget-object v2, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v3, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v4

    .line 74
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v6

    iget-object v7, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    move-object v0, p0

    .line 73
    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method

.method constructor <init>(Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 8

    .line 78
    iget-object v1, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    iget-object v2, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    iget-object v3, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->author:Lorg/briarproject/bramble/api/identity/Author;

    iget-wide v4, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->localTimestamp:J

    iget-object v6, p1, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->lastLocalMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;-><init>(Lorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    return-void
.end method


# virtual methods
.method public getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method public getLastLocalMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->lastLocalMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getLastRemoteMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->lastRemoteMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getLocalTimestamp()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->localTimestamp:J

    return-wide v0
.end method

.method public getSessionId()Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroducerSession$Introducee;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-object v0
.end method
