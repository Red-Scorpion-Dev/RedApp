.class public Lorg/briarproject/briar/api/introduction/IntroductionRequest;
.super Lorg/briarproject/briar/api/conversation/ConversationRequest;
.source "IntroductionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/api/conversation/ConversationRequest<",
        "Lorg/briarproject/bramble/api/identity/Author;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;ZLorg/briarproject/bramble/api/identity/AuthorInfo;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p12}, Lorg/briarproject/briar/api/conversation/ConversationRequest;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Lorg/briarproject/bramble/api/Nameable;Ljava/lang/String;Z)V

    .line 27
    iput-object p13, p0, Lorg/briarproject/briar/api/introduction/IntroductionRequest;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    return-void
.end method


# virtual methods
.method public accept(Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 41
    invoke-interface {p1, p0}, Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;->visitIntroductionRequest(Lorg/briarproject/briar/api/introduction/IntroductionRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/api/introduction/IntroductionRequest;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isContact()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/api/introduction/IntroductionRequest;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->isContact()Z

    move-result v0

    return v0
.end method
