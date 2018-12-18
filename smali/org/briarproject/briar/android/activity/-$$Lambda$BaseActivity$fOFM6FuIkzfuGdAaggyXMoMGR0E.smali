.class public final synthetic Lorg/briarproject/briar/android/activity/-$$Lambda$BaseActivity$fOFM6FuIkzfuGdAaggyXMoMGR0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/activity/BaseActivity;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/activity/BaseActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/-$$Lambda$BaseActivity$fOFM6FuIkzfuGdAaggyXMoMGR0E;->f$0:Lorg/briarproject/briar/android/activity/BaseActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/activity/-$$Lambda$BaseActivity$fOFM6FuIkzfuGdAaggyXMoMGR0E;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/activity/-$$Lambda$BaseActivity$fOFM6FuIkzfuGdAaggyXMoMGR0E;->f$0:Lorg/briarproject/briar/android/activity/BaseActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/-$$Lambda$BaseActivity$fOFM6FuIkzfuGdAaggyXMoMGR0E;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/activity/BaseActivity;->lambda$runOnUiThreadUnlessDestroyed$0(Lorg/briarproject/briar/android/activity/BaseActivity;Ljava/lang/Runnable;)V

    return-void
.end method
