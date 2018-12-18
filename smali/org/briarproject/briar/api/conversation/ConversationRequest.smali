.class public abstract Lorg/briarproject/briar/api/conversation/ConversationRequest;
.super Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;
.source "ConversationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N::",
        "Lorg/briarproject/bramble/api/Nameable;",
        ">",
        "Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final answered:Z

.field private final nameable:Lorg/briarproject/bramble/api/Nameable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field private final sessionId:Lorg/briarproject/briar/api/client/SessionId;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/Nameable;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "JZZZZ",
            "Lorg/briarproject/briar/api/client/SessionId;",
            "TN;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 27
    invoke-direct/range {p0 .. p8}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZ)V

    .line 28
    iput-object p9, p0, Lorg/briarproject/briar/api/conversation/ConversationRequest;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    .line 29
    iput-object p10, p0, Lorg/briarproject/briar/api/conversation/ConversationRequest;->nameable:Lorg/briarproject/bramble/api/Nameable;

    .line 30
    iput-object p11, p0, Lorg/briarproject/briar/api/conversation/ConversationRequest;->text:Ljava/lang/String;

    .line 31
    iput-boolean p12, p0, Lorg/briarproject/briar/api/conversation/ConversationRequest;->answered:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/briarproject/briar/api/conversation/ConversationRequest;->nameable:Lorg/briarproject/bramble/api/Nameable;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/Nameable;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameable()Lorg/briarproject/bramble/api/Nameable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/briarproject/briar/api/conversation/ConversationRequest;->nameable:Lorg/briarproject/bramble/api/Nameable;

    return-object v0
.end method

.method public getSessionId()Lorg/briarproject/briar/api/client/SessionId;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/briarproject/briar/api/conversation/ConversationRequest;->sessionId:Lorg/briarproject/briar/api/client/SessionId;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/briarproject/briar/api/conversation/ConversationRequest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public wasAnswered()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/briarproject/briar/api/conversation/ConversationRequest;->answered:Z

    return v0
.end method
