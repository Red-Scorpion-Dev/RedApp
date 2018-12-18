.class public final Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;
.super Ljava/lang/Object;
.source "DatabaseModule_ProvideDatabaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/db/Database<",
        "Ljava/sql/Connection;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final configProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final messageFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/db/DatabaseModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/db/DatabaseModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->module:Lorg/briarproject/bramble/db/DatabaseModule;

    .line 31
    iput-object p2, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->configProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->messageFactoryProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/db/DatabaseModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;"
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;-><init>(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/Database;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/db/DatabaseModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/bramble/db/Database<",
            "Ljava/sql/Connection;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/db/DatabaseConfig;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/sync/MessageFactory;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/briarproject/bramble/api/system/Clock;

    .line 46
    invoke-static {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->proxyProvideDatabase(Lorg/briarproject/bramble/db/DatabaseModule;Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/db/Database;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDatabase(Lorg/briarproject/bramble/db/DatabaseModule;Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/db/Database;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/db/DatabaseModule;",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ")",
            "Lorg/briarproject/bramble/db/Database<",
            "Ljava/sql/Connection;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/bramble/db/DatabaseModule;->provideDatabase(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/db/Database;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 61
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/db/Database;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->get()Lorg/briarproject/bramble/db/Database;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/db/Database;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/briarproject/bramble/db/Database<",
            "Ljava/sql/Connection;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->module:Lorg/briarproject/bramble/db/DatabaseModule;

    iget-object v1, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->configProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->messageFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->provideInstance(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/Database;

    move-result-object v0

    return-object v0
.end method
