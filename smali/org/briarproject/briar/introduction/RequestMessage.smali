.class Lorg/briarproject/briar/introduction/RequestMessage;
.super Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;
.source "RequestMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final author:Lorg/briarproject/bramble/api/identity/Author;

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    .line 23
    iput-object p6, p0, Lorg/briarproject/briar/introduction/RequestMessage;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 24
    iput-object p7, p0, Lorg/briarproject/briar/introduction/RequestMessage;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthor()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/introduction/RequestMessage;->author:Lorg/briarproject/bramble/api/identity/Author;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/introduction/RequestMessage;->text:Ljava/lang/String;

    return-object v0
.end method
