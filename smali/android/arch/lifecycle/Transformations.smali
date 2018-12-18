.class public Landroid/arch/lifecycle/Transformations;
.super Ljava/lang/Object;
.source "Transformations.java"


# direct methods
.method public static map(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TX;>;",
            "Landroid/arch/core/util/Function<",
            "TX;TY;>;)",
            "Landroid/arch/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Landroid/arch/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MediatorLiveData;-><init>()V

    .line 67
    new-instance v1, Landroid/arch/lifecycle/Transformations$1;

    invoke-direct {v1, v0, p1}, Landroid/arch/lifecycle/Transformations$1;-><init>(Landroid/arch/lifecycle/MediatorLiveData;Landroid/arch/core/util/Function;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/MediatorLiveData;->addSource(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    return-object v0
.end method
