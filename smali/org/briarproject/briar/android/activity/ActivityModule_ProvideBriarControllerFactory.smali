.class public final Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;
.super Ljava/lang/Object;
.source "ActivityModule_ProvideBriarControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/controller/BriarController;",
        ">;"
    }
.end annotation


# instance fields
.field private final briarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/android/activity/ActivityModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/activity/ActivityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;->module:Lorg/briarproject/briar/android/activity/ActivityModule;

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;->briarControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/activity/ActivityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;-><init>(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/BriarController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/activity/ActivityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/controller/BriarController;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/controller/BriarControllerImpl;

    invoke-static {p0, p1}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;->proxyProvideBriarController(Lorg/briarproject/briar/android/activity/ActivityModule;Lorg/briarproject/briar/android/controller/BriarControllerImpl;)Lorg/briarproject/briar/android/controller/BriarController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideBriarController(Lorg/briarproject/briar/android/activity/ActivityModule;Lorg/briarproject/briar/android/controller/BriarControllerImpl;)Lorg/briarproject/briar/android/controller/BriarController;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/activity/ActivityModule;->provideBriarController(Lorg/briarproject/briar/android/controller/BriarControllerImpl;)Lorg/briarproject/briar/android/controller/BriarController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/controller/BriarController;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;->get()Lorg/briarproject/briar/android/controller/BriarController;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/controller/BriarController;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;->module:Lorg/briarproject/briar/android/activity/ActivityModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;->briarControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;->provideInstance(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/BriarController;

    move-result-object v0

    return-object v0
.end method
