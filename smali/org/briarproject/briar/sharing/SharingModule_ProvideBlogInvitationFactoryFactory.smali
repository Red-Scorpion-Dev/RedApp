.class public final Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;
.super Ljava/lang/Object;
.source "SharingModule_ProvideBlogInvitationFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/sharing/InvitationFactory<",
        "Lorg/briarproject/briar/api/blog/Blog;",
        "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final blogInvitationFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;",
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
            "Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;->blogInvitationFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;-><init>(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/InvitationFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;",
            ">;)",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;

    invoke-static {p0, p1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;->proxyProvideBlogInvitationFactory(Lorg/briarproject/briar/sharing/SharingModule;Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;)Lorg/briarproject/briar/sharing/InvitationFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBlogInvitationFactory(Lorg/briarproject/briar/sharing/SharingModule;Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;)Lorg/briarproject/briar/sharing/InvitationFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/SharingModule;",
            "Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;",
            ")",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/sharing/SharingModule;->provideBlogInvitationFactory(Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;)Lorg/briarproject/briar/sharing/InvitationFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 44
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/sharing/InvitationFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;->get()Lorg/briarproject/briar/sharing/InvitationFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/sharing/InvitationFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;->module:Lorg/briarproject/briar/sharing/SharingModule;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;->blogInvitationFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;->provideInstance(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/InvitationFactory;

    move-result-object v0

    return-object v0
.end method
