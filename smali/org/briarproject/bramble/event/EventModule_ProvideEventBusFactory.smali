.class public final Lorg/briarproject/bramble/event/EventModule_ProvideEventBusFactory;
.super Ljava/lang/Object;
.source "EventModule_ProvideEventBusFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/event/EventBus;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/event/EventModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/event/EventModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/event/EventModule_ProvideEventBusFactory;->module:Lorg/briarproject/bramble/event/EventModule;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/event/EventModule;)Lorg/briarproject/bramble/event/EventModule_ProvideEventBusFactory;
    .locals 1

    .line 29
    new-instance v0, Lorg/briarproject/bramble/event/EventModule_ProvideEventBusFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/event/EventModule_ProvideEventBusFactory;-><init>(Lorg/briarproject/bramble/event/EventModule;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/event/EventModule;)Lorg/briarproject/bramble/api/event/EventBus;
    .locals 0

    .line 25
    invoke-static {p0}, Lorg/briarproject/bramble/event/EventModule_ProvideEventBusFactory;->proxyProvideEventBus(Lorg/briarproject/bramble/event/EventModule;)Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideEventBus(Lorg/briarproject/bramble/event/EventModule;)Lorg/briarproject/bramble/api/event/EventBus;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/briarproject/bramble/event/EventModule;->provideEventBus()Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/event/EventBus;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/briarproject/bramble/event/EventModule_ProvideEventBusFactory;->get()Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/event/EventBus;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/event/EventModule_ProvideEventBusFactory;->module:Lorg/briarproject/bramble/event/EventModule;

    invoke-static {v0}, Lorg/briarproject/bramble/event/EventModule_ProvideEventBusFactory;->provideInstance(Lorg/briarproject/bramble/event/EventModule;)Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    return-object v0
.end method
