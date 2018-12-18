.class public final synthetic Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$o3DaZKVN8v2sf1M_FhSW45Y_3q4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/keyagreement/CameraView;

.field private final synthetic f$1:Landroid/view/SurfaceHolder;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/keyagreement/CameraView;Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$o3DaZKVN8v2sf1M_FhSW45Y_3q4;->f$0:Lorg/briarproject/briar/android/keyagreement/CameraView;

    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$o3DaZKVN8v2sf1M_FhSW45Y_3q4;->f$1:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$o3DaZKVN8v2sf1M_FhSW45Y_3q4;->f$0:Lorg/briarproject/briar/android/keyagreement/CameraView;

    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$o3DaZKVN8v2sf1M_FhSW45Y_3q4;->f$1:Landroid/view/SurfaceHolder;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/keyagreement/CameraView;->lambda$surfaceDestroyed$2(Lorg/briarproject/briar/android/keyagreement/CameraView;Landroid/view/SurfaceHolder;)V

    return-void
.end method
