.class public final Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;
.super Ljava/lang/Object;
.source "DatabaseModule_ProvideDatabaseComponentFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
        ">;"
    }
.end annotation


# instance fields
.field private final dbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/db/Database<",
            "Ljava/sql/Connection;",
            ">;>;"
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

.field private final module:Lorg/briarproject/bramble/db/DatabaseModule;

.field private final shutdownProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/db/DatabaseModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/db/Database<",
            "Ljava/sql/Connection;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->module:Lorg/briarproject/bramble/db/DatabaseModule;

    .line 32
    iput-object p2, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->dbProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->shutdownProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/db/DatabaseModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/db/Database<",
            "Ljava/sql/Connection;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ">;)",
            "Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;-><init>(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/db/DatabaseComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/db/DatabaseModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/db/Database<",
            "Ljava/sql/Connection;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ">;)",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;"
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

    .line 47
    invoke-static {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->proxyProvideDatabaseComponent(Lorg/briarproject/bramble/db/DatabaseModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDatabaseComponent(Lorg/briarproject/bramble/db/DatabaseModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;)Lorg/briarproject/bramble/api/db/DatabaseComponent;
    .locals 0

    .line 62
    check-cast p1, Lorg/briarproject/bramble/db/Database;

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/DatabaseModule;->provideDatabaseComponent(Lorg/briarproject/bramble/db/Database;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 62
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->get()Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/db/DatabaseComponent;
    .locals 4

    .line 39
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->module:Lorg/briarproject/bramble/db/DatabaseModule;

    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->dbProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->shutdownProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->provideInstance(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/db/DatabaseComponent;

    move-result-object v0

    return-object v0
.end method
