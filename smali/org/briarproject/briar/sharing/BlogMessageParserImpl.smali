.class Lorg/briarproject/briar/sharing/BlogMessageParserImpl;
.super Lorg/briarproject/briar/sharing/MessageParserImpl;
.source "BlogMessageParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/sharing/MessageParserImpl<",
        "Lorg/briarproject/briar/api/blog/Blog;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

.field private final blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/blog/BlogFactory;Lorg/briarproject/bramble/api/identity/AuthorFactory;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/briarproject/briar/sharing/MessageParserImpl;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V

    .line 28
    iput-object p2, p0, Lorg/briarproject/briar/sharing/BlogMessageParserImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    .line 29
    iput-object p3, p0, Lorg/briarproject/briar/sharing/BlogMessageParserImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    return-void
.end method


# virtual methods
.method public createShareable(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/blog/Blog;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    const/4 v2, 0x1

    .line 36
    invoke-virtual {p1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getBoolean(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 39
    invoke-virtual {v1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 41
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 42
    invoke-virtual {v1, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v1

    .line 44
    iget-object v3, p0, Lorg/briarproject/briar/sharing/BlogMessageParserImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    invoke-interface {v3, v0, v2, v1}, Lorg/briarproject/bramble/api/identity/AuthorFactory;->createAuthor(ILjava/lang/String;[B)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lorg/briarproject/briar/sharing/BlogMessageParserImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {p1, v0}, Lorg/briarproject/briar/api/blog/BlogFactory;->createFeedBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p1

    return-object p1

    .line 47
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/sharing/BlogMessageParserImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {p1, v0}, Lorg/briarproject/briar/api/blog/BlogFactory;->createBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p1

    return-object p1

    .line 40
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method public bridge synthetic createShareable(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/sharing/Shareable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/sharing/BlogMessageParserImpl;->createShareable(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p1

    return-object p1
.end method
