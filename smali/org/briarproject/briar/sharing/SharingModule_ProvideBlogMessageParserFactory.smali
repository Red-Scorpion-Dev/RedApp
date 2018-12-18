.class public final Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;
.super Ljava/lang/Object;
.source "SharingModule_ProvideBlogMessageParserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/sharing/MessageParser<",
        "Lorg/briarproject/briar/api/blog/Blog;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final blogMessageParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogMessageParserImpl;",
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
            "Lorg/briarproject/briar/sharing/BlogMessageParserImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;->blogMessageParserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogMessageParserImpl;",
            ">;)",
            "Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;-><init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/MessageParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogMessageParserImpl;",
            ">;)",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;->proxyProvideBlogMessageParser(Lorg/briarproject/briar/sharing/SharingModule;Ljava/lang/Object;)Lorg/briarproject/briar/sharing/MessageParser;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBlogMessageParser(Lorg/briarproject/briar/sharing/SharingModule;Ljava/lang/Object;)Lorg/briarproject/briar/sharing/MessageParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;"
        }
    .end annotation

    .line 42
    check-cast p1, Lorg/briarproject/briar/sharing/BlogMessageParserImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/sharing/SharingModule;->provideBlogMessageParser(Lorg/briarproject/briar/sharing/BlogMessageParserImpl;)Lorg/briarproject/briar/sharing/MessageParser;

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
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;->get()Lorg/briarproject/briar/sharing/MessageParser;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/sharing/MessageParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;->blogMessageParserProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;->provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/MessageParser;

    move-result-object v0

    return-object v0
.end method
