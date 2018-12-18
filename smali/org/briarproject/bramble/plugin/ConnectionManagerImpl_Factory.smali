.class public final Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;
.super Ljava/lang/Object;
.source "ConnectionManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;",
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

.field private final ioExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final streamReaderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamReaderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final streamWriterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamWriterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final syncSessionFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncSessionFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamWriterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncSessionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->streamReaderFactoryProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->streamWriterFactoryProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->syncSessionFactoryProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p6, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->connectionRegistryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamWriterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncSessionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;)",
            "Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;"
        }
    .end annotation

    .line 79
    new-instance v7, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newConnectionManagerImpl(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/transport/StreamReaderFactory;Lorg/briarproject/bramble/api/transport/StreamWriterFactory;Lorg/briarproject/bramble/api/sync/SyncSessionFactory;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;
    .locals 8

    .line 95
    new-instance v7, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/transport/StreamReaderFactory;Lorg/briarproject/bramble/api/transport/StreamWriterFactory;Lorg/briarproject/bramble/api/sync/SyncSessionFactory;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamReaderFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/StreamWriterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncSessionFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;)",
            "Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;"
        }
    .end annotation

    .line 63
    new-instance v7, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    .line 64
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 65
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lorg/briarproject/bramble/api/transport/KeyManager;

    .line 66
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/briarproject/bramble/api/transport/StreamReaderFactory;

    .line 67
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    .line 68
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lorg/briarproject/bramble/api/sync/SyncSessionFactory;

    .line 69
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/transport/StreamReaderFactory;Lorg/briarproject/bramble/api/transport/StreamWriterFactory;Lorg/briarproject/bramble/api/sync/SyncSessionFactory;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    return-object v7
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->get()Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;
    .locals 6

    .line 47
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->keyManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->streamReaderFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->streamWriterFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->syncSessionFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->connectionRegistryProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/ConnectionManagerImpl;

    move-result-object v0

    return-object v0
.end method
