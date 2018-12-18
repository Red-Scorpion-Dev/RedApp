.class public final Lorg/briarproject/bramble/system/SystemModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "SystemModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final scheduledExecutorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/bramble/system/SystemModule_EagerSingletons_MembersInjector;->scheduledExecutorServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/briarproject/bramble/system/SystemModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/system/SystemModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectScheduledExecutorService(Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/system/SystemModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/system/SystemModule_EagerSingletons_MembersInjector;->scheduledExecutorServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v0}, Lorg/briarproject/bramble/system/SystemModule_EagerSingletons_MembersInjector;->injectScheduledExecutorService(Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method
