.class public final Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;
.super Ljava/lang/Object;
.source "SharingControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/controller/SharingControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectionRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
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
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;->connectionRegistryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;)",
            "Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newSharingControllerImpl(Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)Lorg/briarproject/briar/android/controller/SharingControllerImpl;
    .locals 1

    .line 44
    new-instance v0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/controller/SharingControllerImpl;-><init>(Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/SharingControllerImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;)",
            "Lorg/briarproject/briar/android/controller/SharingControllerImpl;"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/briarproject/briar/android/controller/SharingControllerImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/controller/SharingControllerImpl;-><init>(Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;->get()Lorg/briarproject/briar/android/controller/SharingControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/controller/SharingControllerImpl;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;->connectionRegistryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/SharingControllerImpl;

    move-result-object v0

    return-object v0
.end method
