.class public final Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;
.super Ljava/lang/Object;
.source "BlogModule_ProvideSharingControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/controller/SharingController;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/android/blog/BlogModule;

.field private final sharingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/SharingControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/SharingControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;->module:Lorg/briarproject/briar/android/blog/BlogModule;

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;->sharingControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/SharingControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;-><init>(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/SharingController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/blog/BlogModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/SharingControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/controller/SharingController;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/controller/SharingControllerImpl;

    invoke-static {p0, p1}, Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;->proxyProvideSharingController(Lorg/briarproject/briar/android/blog/BlogModule;Lorg/briarproject/briar/android/controller/SharingControllerImpl;)Lorg/briarproject/briar/android/controller/SharingController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideSharingController(Lorg/briarproject/briar/android/blog/BlogModule;Lorg/briarproject/briar/android/controller/SharingControllerImpl;)Lorg/briarproject/briar/android/controller/SharingController;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/BlogModule;->provideSharingController(Lorg/briarproject/briar/android/controller/SharingControllerImpl;)Lorg/briarproject/briar/android/controller/SharingController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/controller/SharingController;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;->get()Lorg/briarproject/briar/android/controller/SharingController;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/controller/SharingController;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;->module:Lorg/briarproject/briar/android/blog/BlogModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;->sharingControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;->provideInstance(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/SharingController;

    move-result-object v0

    return-object v0
.end method
