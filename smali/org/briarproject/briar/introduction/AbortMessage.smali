.class Lorg/briarproject/briar/introduction/AbortMessage;
.super Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;
.source "AbortMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final sessionId:Lorg/briarproject/briar/api/client/SessionId;


# direct methods
.method protected constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    .line 20
    iput-object p6, p0, Lorg/briarproject/briar/introduction/AbortMessage;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-void
.end method


# virtual methods
.method public getSessionId()Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/briarproject/briar/introduction/AbortMessage;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-object v0
.end method
