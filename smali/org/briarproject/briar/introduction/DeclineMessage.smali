.class Lorg/briarproject/briar/introduction/DeclineMessage;
.super Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;
.source "DeclineMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final sessionId:Lorg/briarproject/briar/api/client/SessionId;


# direct methods
.method protected constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    .line 21
    iput-object p6, p0, Lorg/briarproject/briar/introduction/DeclineMessage;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-void
.end method


# virtual methods
.method public getSessionId()Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/introduction/DeclineMessage;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-object v0
.end method
