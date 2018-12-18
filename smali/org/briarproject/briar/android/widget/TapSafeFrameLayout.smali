.class public Lorg/briarproject/briar/android/widget/TapSafeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TapSafeFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/widget/TapSafeFrameLayout$OnTapFilteredListener;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private listener:Lorg/briarproject/briar/android/widget/TapSafeFrameLayout$OnTapFilteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    invoke-static {p0, p1}, Lorg/briarproject/briar/android/util/UiUtils;->setFilterTouchesWhenObscured(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    invoke-static {p0, p1}, Lorg/briarproject/briar/android/util/UiUtils;->setFilterTouchesWhenObscured(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 35
    invoke-static {p0, p1}, Lorg/briarproject/briar/android/util/UiUtils;->setFilterTouchesWhenObscured(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 45
    iget-object v1, p0, Lorg/briarproject/briar/android/widget/TapSafeFrameLayout;->listener:Lorg/briarproject/briar/android/widget/TapSafeFrameLayout$OnTapFilteredListener;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/briarproject/briar/android/widget/TapSafeFrameLayout;->listener:Lorg/briarproject/briar/android/widget/TapSafeFrameLayout$OnTapFilteredListener;

    invoke-interface {p1}, Lorg/briarproject/briar/android/widget/TapSafeFrameLayout$OnTapFilteredListener;->shouldAllowTap()Z

    move-result p1

    return p1

    :cond_1
    xor-int/2addr p1, v0

    return p1
.end method

.method public setOnTapFilteredListener(Lorg/briarproject/briar/android/widget/TapSafeFrameLayout$OnTapFilteredListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/briarproject/briar/android/widget/TapSafeFrameLayout;->listener:Lorg/briarproject/briar/android/widget/TapSafeFrameLayout$OnTapFilteredListener;

    return-void
.end method
