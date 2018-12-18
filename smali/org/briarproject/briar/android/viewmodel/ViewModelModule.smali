.class public abstract Lorg/briarproject/briar/android/viewmodel/ViewModelModule;
.super Ljava/lang/Object;
.source "ViewModelModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract bindConversationViewModel(Lorg/briarproject/briar/android/conversation/ConversationViewModel;)Landroid/arch/lifecycle/ViewModel;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Lorg/briarproject/briar/android/viewmodel/ViewModelKey;
        value = Lorg/briarproject/briar/android/conversation/ConversationViewModel;
    .end annotation
.end method

.method abstract bindViewModelFactory(Lorg/briarproject/briar/android/viewmodel/ViewModelFactory;)Landroid/arch/lifecycle/ViewModelProvider$Factory;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
