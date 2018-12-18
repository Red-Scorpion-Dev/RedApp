.class Lorg/briarproject/briar/introduction/ActivateMessage;
.super Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;
.source "ActivateMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final mac:[B

.field private final sessionId:Lorg/briarproject/briar/api/client/SessionId;


# direct methods
.method protected constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[B)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    .line 21
    iput-object p6, p0, Lorg/briarproject/briar/introduction/ActivateMessage;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    .line 22
    iput-object p7, p0, Lorg/briarproject/briar/introduction/ActivateMessage;->mac:[B

    return-void
.end method


# virtual methods
.method public getMac()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/briar/introduction/ActivateMessage;->mac:[B

    return-object v0
.end method

.method public getSessionId()Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/introduction/ActivateMessage;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-object v0
.end method
