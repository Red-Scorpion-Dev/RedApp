.class public Lorg/briarproject/briar/api/introduction/IntroductionResponse;
.super Lorg/briarproject/briar/api/conversation/ConversationResponse;
.source "IntroductionResponse.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final introducedAuthor:Lorg/briarproject/bramble/api/identity/Author;

.field private final introducedAuthorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

.field private final ourRole:Lorg/briarproject/briar/api/introduction/Role;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;ZLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Lorg/briarproject/briar/api/introduction/Role;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p10}, Lorg/briarproject/briar/api/conversation/ConversationResponse;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZLorg/briarproject/briar/api/client/SessionId;Z)V

    .line 30
    iput-object p11, p0, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->introducedAuthor:Lorg/briarproject/bramble/api/identity/Author;

    .line 31
    iput-object p12, p0, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->introducedAuthorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    .line 32
    iput-object p13, p0, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->ourRole:Lorg/briarproject/briar/api/introduction/Role;

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

    .line 49
    invoke-interface {p1, p0}, Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;->visitIntroductionResponse(Lorg/briarproject/briar/api/introduction/IntroductionResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getIntroducedAuthor()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->introducedAuthor:Lorg/briarproject/bramble/api/identity/Author;

    return-object v0
.end method

.method public getIntroducedAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->introducedAuthorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    return-object v0
.end method

.method public isIntroducer()Z
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/briarproject/briar/api/introduction/IntroductionResponse;->ourRole:Lorg/briarproject/briar/api/introduction/Role;

    sget-object v1, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCER:Lorg/briarproject/briar/api/introduction/Role;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
