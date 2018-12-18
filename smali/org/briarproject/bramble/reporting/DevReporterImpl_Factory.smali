.class public final Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;
.super Ljava/lang/Object;
.source "DevReporterImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/reporting/DevReporterImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final cryptoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final devConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/reporting/DevConfig;",
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

.field private final torSocketFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;"
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
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/reporting/DevConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;->devConfigProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;->torSocketFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/reporting/DevConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;)",
            "Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newDevReporterImpl(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/reporting/DevConfig;Ljavax/net/SocketFactory;)Lorg/briarproject/bramble/reporting/DevReporterImpl;
    .locals 1

    .line 67
    new-instance v0, Lorg/briarproject/bramble/reporting/DevReporterImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/reporting/DevReporterImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/reporting/DevConfig;Ljavax/net/SocketFactory;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/reporting/DevReporterImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/reporting/DevConfig;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljavax/net/SocketFactory;",
            ">;)",
            "Lorg/briarproject/bramble/reporting/DevReporterImpl;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/briarproject/bramble/reporting/DevReporterImpl;

    .line 47
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    .line 48
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 49
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/reporting/DevConfig;

    .line 50
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/net/SocketFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/bramble/reporting/DevReporterImpl;-><init>(Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/reporting/DevConfig;Ljavax/net/SocketFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;->get()Lorg/briarproject/bramble/reporting/DevReporterImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/reporting/DevReporterImpl;
    .locals 4

    .line 37
    iget-object v0, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;->devConfigProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;->torSocketFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/reporting/DevReporterImpl;

    move-result-object v0

    return-object v0
.end method
