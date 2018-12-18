.class public final Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;
.super Ljava/lang/Object;
.source "ActivityModule_ProvideSetupControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/login/SetupController;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/briar/android/activity/ActivityModule;

.field private final setupControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/login/SetupControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/activity/ActivityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/login/SetupControllerImpl;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;->module:Lorg/briarproject/briar/android/activity/ActivityModule;

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;->setupControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/activity/ActivityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/login/SetupControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;-><init>(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/login/SetupController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/android/activity/ActivityModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/login/SetupControllerImpl;",
            ">;)",
            "Lorg/briarproject/briar/android/login/SetupController;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/login/SetupControllerImpl;

    invoke-static {p0, p1}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;->proxyProvideSetupController(Lorg/briarproject/briar/android/activity/ActivityModule;Lorg/briarproject/briar/android/login/SetupControllerImpl;)Lorg/briarproject/briar/android/login/SetupController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideSetupController(Lorg/briarproject/briar/android/activity/ActivityModule;Lorg/briarproject/briar/android/login/SetupControllerImpl;)Lorg/briarproject/briar/android/login/SetupController;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/activity/ActivityModule;->provideSetupController(Lorg/briarproject/briar/android/login/SetupControllerImpl;)Lorg/briarproject/briar/android/login/SetupController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/login/SetupController;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;->get()Lorg/briarproject/briar/android/login/SetupController;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/login/SetupController;
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;->module:Lorg/briarproject/briar/android/activity/ActivityModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;->setupControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;->provideInstance(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/login/SetupController;

    move-result-object v0

    return-object v0
.end method
