.class public Lorg/briarproject/briar/android/view/BriarRecyclerViewBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BriarRecyclerViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "Lorg/briarproject/briar/android/view/BriarRecyclerView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 9
    check-cast p2, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerViewBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Lorg/briarproject/briar/android/view/BriarRecyclerView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Lorg/briarproject/briar/android/view/BriarRecyclerView;Landroid/view/View;)Z
    .locals 0

    .line 41
    instance-of p1, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return p1
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 9
    check-cast p2, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p0, p1, p2, p3}, Lorg/briarproject/briar/android/view/BriarRecyclerViewBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lorg/briarproject/briar/android/view/BriarRecyclerView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lorg/briarproject/briar/android/view/BriarRecyclerView;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
