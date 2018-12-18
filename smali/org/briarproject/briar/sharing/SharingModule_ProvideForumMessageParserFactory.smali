.class public final Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;
.super Ljava/lang/Object;
.source "SharingModule_ProvideForumMessageParserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/sharing/MessageParser<",
        "Lorg/briarproject/briar/api/forum/Forum;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final forumMessageParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/ForumMessageParserImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/sharing/SharingModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/ForumMessageParserImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;->forumMessageParserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/ForumMessageParserImpl;",
            ">;)",
            "Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;-><init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/MessageParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/ForumMessageParserImpl;",
            ">;)",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;->proxyProvideForumMessageParser(Lorg/briarproject/briar/sharing/SharingModule;Ljava/lang/Object;)Lorg/briarproject/briar/sharing/MessageParser;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideForumMessageParser(Lorg/briarproject/briar/sharing/SharingModule;Ljava/lang/Object;)Lorg/briarproject/briar/sharing/MessageParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;"
        }
    .end annotation

    .line 42
    check-cast p1, Lorg/briarproject/briar/sharing/ForumMessageParserImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/sharing/SharingModule;->provideForumMessageParser(Lorg/briarproject/briar/sharing/ForumMessageParserImpl;)Lorg/briarproject/briar/sharing/MessageParser;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/sharing/MessageParser;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;->get()Lorg/briarproject/briar/sharing/MessageParser;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/sharing/MessageParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;->forumMessageParserProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;->provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/MessageParser;

    move-result-object v0

    return-object v0
.end method
