.class public final Lorg/briarproject/bramble/db/H2Database_Factory;
.super Ljava/lang/Object;
.source "H2Database_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/db/H2Database;",
        ">;"
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/db/H2Database_Factory;->configProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lorg/briarproject/bramble/db/H2Database_Factory;->messageFactoryProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/bramble/db/H2Database_Factory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/H2Database_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/bramble/db/H2Database_Factory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/briarproject/bramble/db/H2Database_Factory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/db/H2Database_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newH2Database(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/db/H2Database;
    .locals 1

    .line 51
    new-instance v0, Lorg/briarproject/bramble/db/H2Database;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/db/H2Database;-><init>(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/H2Database;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/MessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/bramble/db/H2Database;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/bramble/db/H2Database;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/db/DatabaseConfig;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/sync/MessageFactory;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/system/Clock;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/db/H2Database;-><init>(Lorg/briarproject/bramble/api/db/DatabaseConfig;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/db/H2Database_Factory;->get()Lorg/briarproject/bramble/db/H2Database;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/db/H2Database;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/db/H2Database_Factory;->configProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/db/H2Database_Factory;->messageFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/db/H2Database_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/db/H2Database_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/H2Database;

    move-result-object v0

    return-object v0
.end method
