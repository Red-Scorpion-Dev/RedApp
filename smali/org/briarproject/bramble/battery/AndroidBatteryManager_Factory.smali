.class public final Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;
.super Ljava/lang/Object;
.source "AndroidBatteryManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/battery/AndroidBatteryManager;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;->appProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)",
            "Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAndroidBatteryManager(Landroid/app/Application;Lorg/briarproject/bramble/api/event/EventBus;)Lorg/briarproject/bramble/battery/AndroidBatteryManager;
    .locals 1

    .line 40
    new-instance v0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/battery/AndroidBatteryManager;-><init>(Landroid/app/Application;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/battery/AndroidBatteryManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)",
            "Lorg/briarproject/bramble/battery/AndroidBatteryManager;"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/briarproject/bramble/battery/AndroidBatteryManager;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/battery/AndroidBatteryManager;-><init>(Landroid/app/Application;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;->get()Lorg/briarproject/bramble/battery/AndroidBatteryManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/battery/AndroidBatteryManager;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;->appProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/battery/AndroidBatteryManager;

    move-result-object v0

    return-object v0
.end method
