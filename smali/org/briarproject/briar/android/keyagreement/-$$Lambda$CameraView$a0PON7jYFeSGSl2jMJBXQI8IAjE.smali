.class public final synthetic Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$a0PON7jYFeSGSl2jMJBXQI8IAjE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/keyagreement/CameraView;

.field private final synthetic f$1:Landroid/view/SurfaceHolder;

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/keyagreement/CameraView;Landroid/view/SurfaceHolder;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$a0PON7jYFeSGSl2jMJBXQI8IAjE;->f$0:Lorg/briarproject/briar/android/keyagreement/CameraView;

    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$a0PON7jYFeSGSl2jMJBXQI8IAjE;->f$1:Landroid/view/SurfaceHolder;

    iput p3, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$a0PON7jYFeSGSl2jMJBXQI8IAjE;->f$2:I

    iput p4, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$a0PON7jYFeSGSl2jMJBXQI8IAjE;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$a0PON7jYFeSGSl2jMJBXQI8IAjE;->f$0:Lorg/briarproject/briar/android/keyagreement/CameraView;

    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$a0PON7jYFeSGSl2jMJBXQI8IAjE;->f$1:Landroid/view/SurfaceHolder;

    iget v2, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$a0PON7jYFeSGSl2jMJBXQI8IAjE;->f$2:I

    iget v3, p0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$a0PON7jYFeSGSl2jMJBXQI8IAjE;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/keyagreement/CameraView;->lambda$surfaceChanged$1(Lorg/briarproject/briar/android/keyagreement/CameraView;Landroid/view/SurfaceHolder;II)V

    return-void
.end method
