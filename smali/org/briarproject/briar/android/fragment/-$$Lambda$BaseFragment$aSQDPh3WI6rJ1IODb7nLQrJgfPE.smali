.class public final synthetic Lorg/briarproject/briar/android/fragment/-$$Lambda$BaseFragment$aSQDPh3WI6rJ1IODb7nLQrJgfPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/fragment/BaseFragment;

.field private final synthetic f$1:Landroid/app/Activity;

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/fragment/BaseFragment;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$BaseFragment$aSQDPh3WI6rJ1IODb7nLQrJgfPE;->f$0:Lorg/briarproject/briar/android/fragment/BaseFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$BaseFragment$aSQDPh3WI6rJ1IODb7nLQrJgfPE;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$BaseFragment$aSQDPh3WI6rJ1IODb7nLQrJgfPE;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$BaseFragment$aSQDPh3WI6rJ1IODb7nLQrJgfPE;->f$0:Lorg/briarproject/briar/android/fragment/BaseFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$BaseFragment$aSQDPh3WI6rJ1IODb7nLQrJgfPE;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lorg/briarproject/briar/android/fragment/-$$Lambda$BaseFragment$aSQDPh3WI6rJ1IODb7nLQrJgfPE;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/fragment/BaseFragment;->lambda$runOnUiThreadUnlessDestroyed$0(Lorg/briarproject/briar/android/fragment/BaseFragment;Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
