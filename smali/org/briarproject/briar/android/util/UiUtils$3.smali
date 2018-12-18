.class final Lorg/briarproject/briar/android/util/UiUtils$3;
.super Ljava/lang/Object;
.source "UiUtils.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/util/UiUtils;->observeOnce(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$liveData:Landroid/arch/lifecycle/LiveData;

.field final synthetic val$observer:Landroid/arch/lifecycle/Observer;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/Observer;Landroid/arch/lifecycle/LiveData;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lorg/briarproject/briar/android/util/UiUtils$3;->val$observer:Landroid/arch/lifecycle/Observer;

    iput-object p2, p0, Lorg/briarproject/briar/android/util/UiUtils$3;->val$liveData:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/briarproject/briar/android/util/UiUtils$3;->val$observer:Landroid/arch/lifecycle/Observer;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 333
    iget-object p1, p0, Lorg/briarproject/briar/android/util/UiUtils$3;->val$liveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    return-void
.end method
