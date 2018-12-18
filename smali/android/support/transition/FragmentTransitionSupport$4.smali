.class Landroid/support/transition/FragmentTransitionSupport$4;
.super Landroid/support/transition/Transition$EpicenterCallback;
.source "FragmentTransitionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FragmentTransitionSupport;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/FragmentTransitionSupport;

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V
    .locals 0

    .line 309
    iput-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$4;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iput-object p2, p0, Landroid/support/transition/FragmentTransitionSupport$4;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/support/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method
