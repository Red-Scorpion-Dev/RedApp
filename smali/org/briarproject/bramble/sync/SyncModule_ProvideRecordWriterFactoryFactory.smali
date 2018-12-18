.class public final Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;
.super Ljava/lang/Object;
.source "SyncModule_ProvideRecordWriterFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lorg/briarproject/bramble/sync/SyncModule;

.field private final recordWriterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/sync/SyncModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;->module:Lorg/briarproject/bramble/sync/SyncModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;->recordWriterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/sync/SyncModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;",
            ">;)",
            "Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;-><init>(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/sync/SyncModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;",
            ">;)",
            "Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;->proxyProvideRecordWriterFactory(Lorg/briarproject/bramble/sync/SyncModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideRecordWriterFactory(Lorg/briarproject/bramble/sync/SyncModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/sync/SyncModule;->provideRecordWriterFactory(Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl;)Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;->get()Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;->module:Lorg/briarproject/bramble/sync/SyncModule;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;->recordWriterFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;->provideInstance(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/sync/SyncRecordWriterFactory;

    move-result-object v0

    return-object v0
.end method
