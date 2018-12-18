.class Lorg/briarproject/briar/sharing/BlogSharingValidator;
.super Lorg/briarproject/briar/sharing/SharingValidator;
.source "BlogSharingValidator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/blog/BlogFactory;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/briar/sharing/SharingValidator;-><init>(Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 27
    iput-object p5, p0, Lorg/briarproject/briar/sharing/BlogSharingValidator;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    return-void
.end method


# virtual methods
.method protected validateDescriptor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 34
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getBoolean(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 37
    iget-object v1, p0, Lorg/briarproject/briar/sharing/BlogSharingValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lorg/briarproject/briar/sharing/BlogSharingValidator;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {p1, v0}, Lorg/briarproject/briar/api/blog/BlogFactory;->createFeedBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/Blog;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/sharing/BlogSharingValidator;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {p1, v0}, Lorg/briarproject/briar/api/blog/BlogFactory;->createBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/briar/api/blog/Blog;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    return-object p1
.end method
