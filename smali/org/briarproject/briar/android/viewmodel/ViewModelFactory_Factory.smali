.class public final Lorg/briarproject/briar/android/viewmodel/ViewModelFactory_Factory;
.super Ljava/lang/Object;
.source "ViewModelFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final creatorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;>;>;"
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
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;>;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/briarproject/briar/android/viewmodel/ViewModelFactory_Factory;->creatorsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lorg/briarproject/briar/android/viewmodel/ViewModelFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;>;>;)",
            "Lorg/briarproject/briar/android/viewmodel/ViewModelFactory_Factory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/briarproject/briar/android/viewmodel/ViewModelFactory_Factory;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/viewmodel/ViewModelFactory_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newViewModelFactory(Ljava/util/Map;)Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;>;)",
            "Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;>;>;)",
            "Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/android/viewmodel/ViewModelFactory_Factory;->get()Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/briar/android/viewmodel/ViewModelFactory_Factory;->creatorsProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lorg/briarproject/briar/android/viewmodel/ViewModelFactory_Factory;->provideInstance(Ljavax/inject/Provider;)Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;

    move-result-object v0

    return-object v0
.end method
