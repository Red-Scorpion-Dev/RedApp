.class public final synthetic Lorg/briarproject/briar/android/activity/-$$Lambda$gZNIoFM2wInoZ0Xps_zbDE5-Nwo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/activity/BriarActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/activity/BriarActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/activity/-$$Lambda$gZNIoFM2wInoZ0Xps_zbDE5-Nwo;->f$0:Lorg/briarproject/briar/android/activity/BriarActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/activity/-$$Lambda$gZNIoFM2wInoZ0Xps_zbDE5-Nwo;->f$0:Lorg/briarproject/briar/android/activity/BriarActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportFinishAfterTransition()V

    return-void
.end method
