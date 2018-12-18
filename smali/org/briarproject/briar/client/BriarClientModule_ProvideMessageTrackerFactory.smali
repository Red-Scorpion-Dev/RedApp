.class public final Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;
.super Ljava/lang/Object;
.source "BriarClientModule_ProvideMessageTrackerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/client/MessageTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private final messageTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/client/MessageTrackerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/client/BriarClientModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/client/BriarClientModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/client/BriarClientModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/client/MessageTrackerImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;->module:Lorg/briarproject/briar/client/BriarClientModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;->messageTrackerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/client/BriarClientModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/client/BriarClientModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/client/MessageTrackerImpl;",
            ">;)",
            "Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;-><init>(Lorg/briarproject/briar/client/BriarClientModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/client/BriarClientModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/client/MessageTracker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/client/BriarClientModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/client/MessageTrackerImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/client/MessageTracker;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;->proxyProvideMessageTracker(Lorg/briarproject/briar/client/BriarClientModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/client/MessageTracker;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideMessageTracker(Lorg/briarproject/briar/client/BriarClientModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/client/MessageTracker;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/briar/client/MessageTrackerImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/client/BriarClientModule;->provideMessageTracker(Lorg/briarproject/briar/client/MessageTrackerImpl;)Lorg/briarproject/briar/api/client/MessageTracker;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/client/MessageTracker;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;->get()Lorg/briarproject/briar/api/client/MessageTracker;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/client/MessageTracker;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;->module:Lorg/briarproject/briar/client/BriarClientModule;

    iget-object v1, p0, Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;->messageTrackerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;->provideInstance(Lorg/briarproject/briar/client/BriarClientModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/client/MessageTracker;

    move-result-object v0

    return-object v0
.end method
