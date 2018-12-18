.class public Lorg/briarproject/bramble/db/DatabaseModule;
.super Ljava/lang/Object;
.source "DatabaseModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideDatabase(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/db/Database;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ")",
            "Lorg/briarproject/bramble/db/Database<",
            "Ljava/sql/Connection;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/briarproject/bramble/db/H2Database;

    invoke-direct {v0, p1, p2, p3}, Lorg/briarproject/bramble/db/H2Database;-><init>(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v0
.end method

.method provideDatabaseComponent(Lorg/briarproject/bramble/db/Database;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;)Lorg/briarproject/bramble/api/db/DatabaseComponent;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/db/Database<",
            "Ljava/sql/Connection;",
            ">;",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ")",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/briarproject/bramble/db/DatabaseComponentImpl;

    const-class v1, Ljava/sql/Connection;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/briarproject/bramble/db/DatabaseComponentImpl;-><init>(Lorg/briarproject/bramble/db/Database;Ljava/lang/Class;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;)V

    return-object v0
.end method
