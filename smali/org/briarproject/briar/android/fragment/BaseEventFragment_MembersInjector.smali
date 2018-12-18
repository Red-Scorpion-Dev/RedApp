.class public final Lorg/briarproject/briar/android/fragment/BaseEventFragment_MembersInjector;
.super Ljava/lang/Object;
.source "BaseEventFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/fragment/BaseEventFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
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
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/briar/android/fragment/BaseEventFragment_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/fragment/BaseEventFragment;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/briarproject/briar/android/fragment/BaseEventFragment_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectEventBus(Lorg/briarproject/briar/android/fragment/BaseEventFragment;Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/android/fragment/BaseEventFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseEventFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/fragment/BaseEventFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/fragment/BaseEventFragment;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/android/fragment/BaseEventFragment_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/fragment/BaseEventFragment;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-void
.end method
