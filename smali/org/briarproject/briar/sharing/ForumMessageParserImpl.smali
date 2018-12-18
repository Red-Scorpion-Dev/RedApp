.class Lorg/briarproject/briar/sharing/ForumMessageParserImpl;
.super Lorg/briarproject/briar/sharing/MessageParserImpl;
.source "ForumMessageParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/sharing/MessageParserImpl<",
        "Lorg/briarproject/briar/api/forum/Forum;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final forumFactory:Lorg/briarproject/briar/api/forum/ForumFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/forum/ForumFactory;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/briarproject/briar/sharing/MessageParserImpl;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/sharing/ForumMessageParserImpl;->forumFactory:Lorg/briarproject/briar/api/forum/ForumFactory;

    return-void
.end method


# virtual methods
.method public createShareable(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/forum/Forum;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p1

    .line 31
    iget-object v1, p0, Lorg/briarproject/briar/sharing/ForumMessageParserImpl;->forumFactory:Lorg/briarproject/briar/api/forum/ForumFactory;

    invoke-interface {v1, v0, p1}, Lorg/briarproject/briar/api/forum/ForumFactory;->createForum(Ljava/lang/String;[B)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createShareable(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/sharing/Shareable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/sharing/ForumMessageParserImpl;->createShareable(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1

    return-object p1
.end method
