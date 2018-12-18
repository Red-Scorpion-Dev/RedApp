.class public final Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment_MembersInjector;
.super Ljava/lang/Object;
.source "ContactExchangeErrorFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final androidExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
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
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment_MembersInjector;->androidExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAndroidExecutor(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment_MembersInjector;->androidExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment_MembersInjector;->injectAndroidExecutor(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V

    return-void
.end method
