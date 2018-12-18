.class public final Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;
.super Ljava/lang/Object;
.source "AndroidNetworkManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/network/AndroidNetworkManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final appProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;->schedulerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;->appProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAndroidNetworkManager(Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/event/EventBus;Landroid/app/Application;)Lorg/briarproject/bramble/network/AndroidNetworkManager;
    .locals 1

    .line 52
    new-instance v0, Lorg/briarproject/bramble/network/AndroidNetworkManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/network/AndroidNetworkManager;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/event/EventBus;Landroid/app/Application;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/network/AndroidNetworkManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lorg/briarproject/bramble/network/AndroidNetworkManager;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/bramble/network/AndroidNetworkManager;

    .line 40
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/network/AndroidNetworkManager;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/event/EventBus;Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;->get()Lorg/briarproject/bramble/network/AndroidNetworkManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/network/AndroidNetworkManager;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;->schedulerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;->appProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/network/AndroidNetworkManager;

    move-result-object v0

    return-object v0
.end method