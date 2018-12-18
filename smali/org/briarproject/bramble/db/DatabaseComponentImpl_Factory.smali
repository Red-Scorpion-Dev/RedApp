.class public final Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;
.super Ljava/lang/Object;
.source "DatabaseComponentImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/db/DatabaseComponentImpl<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final dbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/db/Database<",
            "TT;>;>;"
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

.field private final shutdownProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ">;"
        }
    .end annotation
.end field

.field private final txnClassProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Class<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/db/Database<",
            "TT;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Class<",
            "TT;>;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;->txnClassProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p4, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;->shutdownProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/db/Database<",
            "TT;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Class<",
            "TT;>;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ">;)",
            "Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory<",
            "TT;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newDatabaseComponentImpl(Ljava/lang/Object;Ljava/lang/Class;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;)Lorg/briarproject/bramble/db/DatabaseComponentImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ")",
            "Lorg/briarproject/bramble/db/DatabaseComponentImpl<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;

    check-cast p0, Lorg/briarproject/bramble/db/Database;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;-><init>(Lorg/briarproject/bramble/db/Database;Ljava/lang/Class;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/DatabaseComponentImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/db/Database<",
            "TT;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Class<",
            "TT;>;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ">;)",
            "Lorg/briarproject/bramble/db/DatabaseComponentImpl<",
            "TT;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;

    .line 44
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/db/Database;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;-><init>(Lorg/briarproject/bramble/db/Database;Ljava/lang/Class;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;->get()Lorg/briarproject/bramble/db/DatabaseComponentImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/db/DatabaseComponentImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/bramble/db/DatabaseComponentImpl<",
            "TT;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;->txnClassProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;->shutdownProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/bramble/db/DatabaseComponentImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/DatabaseComponentImpl;

    move-result-object v0

    return-object v0
.end method
