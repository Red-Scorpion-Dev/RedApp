.class public final Lorg/briarproject/briar/android/conversation/AliasDialogFragment_MembersInjector;
.super Ljava/lang/Object;
.source "AliasDialogFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/conversation/AliasDialogFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final viewModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/arch/lifecycle/ViewModelProvider$Factory;",
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
            "Landroid/arch/lifecycle/ViewModelProvider$Factory;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment_MembersInjector;->viewModelFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/arch/lifecycle/ViewModelProvider$Factory;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/conversation/AliasDialogFragment;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectViewModelFactory(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->viewModelFactory:Landroid/arch/lifecycle/ViewModelProvider$Factory;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/AliasDialogFragment_MembersInjector;->viewModelFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ViewModelProvider$Factory;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment_MembersInjector;->injectViewModelFactory(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-void
.end method
