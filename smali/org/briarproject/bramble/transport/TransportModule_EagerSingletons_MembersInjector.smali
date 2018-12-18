.class public final Lorg/briarproject/bramble/transport/TransportModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "TransportModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
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
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/briarproject/bramble/transport/TransportModule_EagerSingletons_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/briarproject/bramble/transport/TransportModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/bramble/transport/TransportModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectKeyManager(Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;Lorg/briarproject/bramble/api/transport/KeyManager;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;->keyManager:Lorg/briarproject/bramble/api/transport/KeyManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/transport/TransportModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/transport/TransportModule_EagerSingletons_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/transport/KeyManager;

    invoke-static {p1, v0}, Lorg/briarproject/bramble/transport/TransportModule_EagerSingletons_MembersInjector;->injectKeyManager(Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;Lorg/briarproject/bramble/api/transport/KeyManager;)V

    return-void
.end method
