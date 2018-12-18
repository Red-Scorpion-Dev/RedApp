.class Lorg/briarproject/briar/blog/BlogFactoryImpl;
.super Ljava/lang/Object;
.source "BlogFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/blog/BlogFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/briarproject/briar/blog/BlogFactoryImpl;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    .line 31
    iput-object p2, p0, Lorg/briarproject/briar/blog/BlogFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method

.method private createBlog(Lorg/briarproject/bramble/api/identity/Author;Z)Lorg/briarproject/briar/api/blog/Blog;
    .locals 4

    const/4 v0, 0x2

    .line 46
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, p1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->toByteArray(Lorg/briarproject/bramble/api/data/BdfList;)[B

    move-result-object v0

    .line 48
    iget-object v1, p0, Lorg/briarproject/briar/blog/BlogFactoryImpl;->groupFactory:Lorg/briarproject/bramble/api/sync/GroupFactory;

    sget-object v3, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {v1, v3, v2, v0}, Lorg/briarproject/bramble/api/sync/GroupFactory;->createGroup(Lorg/briarproject/bramble/api/sync/ClientId;I[B)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 50
    new-instance v1, Lorg/briarproject/briar/api/blog/Blog;

    invoke-direct {v1, v0, p1, p2}, Lorg/briarproject/briar/api/blog/Blog;-><init>(Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/identity/Author;Z)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public createBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/blog/BlogFactoryImpl;->createBlog(Lorg/briarproject/bramble/api/identity/Author;Z)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p1

    return-object p1
.end method

.method public createFeedBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/blog/BlogFactoryImpl;->createBlog(Lorg/briarproject/bramble/api/identity/Author;Z)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p1

    return-object p1
.end method

.method public parseBlog(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/blog/Blog;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/blog/BlogFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group;->getDescriptor()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList([B)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    const/4 v1, 0x2

    .line 60
    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getBoolean(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 64
    iget-object v2, p0, Lorg/briarproject/briar/blog/BlogFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    .line 65
    new-instance v2, Lorg/briarproject/briar/api/blog/Blog;

    invoke-direct {v2, p1, v1, v0}, Lorg/briarproject/briar/api/blog/Blog;-><init>(Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/identity/Author;Z)V

    return-object v2
.end method
