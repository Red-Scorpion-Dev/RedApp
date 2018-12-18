.class public abstract Lorg/briarproject/briar/api/conversation/ConversationResponse;
.super Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;
.source "ConversationResponse.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final accepted:Z

.field private final sessionId:Lorg/briarproject/briar/api/client/SessionId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Z)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p8}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZ)V

    .line 21
    iput-object p9, p0, Lorg/briarproject/briar/api/conversation/ConversationResponse;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    .line 22
    iput-boolean p10, p0, Lorg/briarproject/briar/api/conversation/ConversationResponse;->accepted:Z

    return-void
.end method


# virtual methods
.method public getSessionId()Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/api/conversation/ConversationResponse;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-object v0
.end method

.method public wasAccepted()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lorg/briarproject/briar/api/conversation/ConversationResponse;->accepted:Z

    return v0
.end method
