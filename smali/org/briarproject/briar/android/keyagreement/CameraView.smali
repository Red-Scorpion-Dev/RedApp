.class public Lorg/briarproject/briar/android/keyagreement/CameraView;
.super Landroid/view/SurfaceView;
.source "CameraView.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final AUTO_FOCUS_RETRY_DELAY:I = 0x1388

.field private static final IDEAL_PIXELS:I = 0x7a120

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final autoFocusRetry:Ljava/lang/Runnable;

.field private autoFocusRunning:Z

.field private autoFocusSupported:Z

.field private camera:Landroid/hardware/Camera;

.field private cameraIndex:I

.field private displayOrientation:I

.field private previewConsumer:Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;

.field private previewStarted:Z

.field private surface:Landroid/view/Surface;

.field private surfaceHeight:I

.field private surfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lorg/briarproject/briar/android/keyagreement/CameraView;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance p1, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$1Mmb-T2Vr4MdAvskahPXoB8QVmE;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$1Mmb-T2Vr4MdAvskahPXoB8QVmE;-><init>(Lorg/briarproject/briar/android/keyagreement/CameraView;)V

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRetry:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->cameraIndex:I

    .line 63
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewConsumer:Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;

    .line 64
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    .line 65
    iput v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->displayOrientation:I

    iput v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceWidth:I

    iput v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceHeight:I

    .line 66
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewStarted:Z

    .line 67
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusSupported:Z

    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p1, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$1Mmb-T2Vr4MdAvskahPXoB8QVmE;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$1Mmb-T2Vr4MdAvskahPXoB8QVmE;-><init>(Lorg/briarproject/briar/android/keyagreement/CameraView;)V

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRetry:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    const/4 p2, 0x0

    .line 62
    iput p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->cameraIndex:I

    .line 63
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewConsumer:Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;

    .line 64
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    .line 65
    iput p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->displayOrientation:I

    iput p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceWidth:I

    iput p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceHeight:I

    .line 66
    iput-boolean p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewStarted:Z

    .line 67
    iput-boolean p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusSupported:Z

    iput-boolean p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance p1, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$1Mmb-T2Vr4MdAvskahPXoB8QVmE;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$1Mmb-T2Vr4MdAvskahPXoB8QVmE;-><init>(Lorg/briarproject/briar/android/keyagreement/CameraView;)V

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRetry:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    const/4 p2, 0x0

    .line 62
    iput p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->cameraIndex:I

    .line 63
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewConsumer:Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;

    .line 64
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    .line 65
    iput p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->displayOrientation:I

    iput p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceWidth:I

    iput p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceHeight:I

    .line 66
    iput-boolean p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewStarted:Z

    .line 67
    iput-boolean p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusSupported:Z

    iput-boolean p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRunning:Z

    return-void
.end method

.method private cancelAutoFocus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRunning:Z

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRetry:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 243
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRunning:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 246
    new-instance v1, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {v1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private disableFlash(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    const-string v0, "off"

    .line 305
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 307
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 308
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 310
    new-instance p2, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private disableSceneMode(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    const-string v0, "auto"

    .line 317
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 319
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 320
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 322
    new-instance p2, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private enableAutoFocus(Ljava/lang/String;)V
    .locals 1

    const-string v0, "auto"

    .line 404
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "macro"

    .line 405
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusSupported:Z

    return-void
.end method

.method private getScreenRotationDegrees()I
    .locals 2

    .line 168
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 169
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0x10e

    return v0

    :pswitch_1
    const/16 v0, 0xb4

    return v0

    :pswitch_2
    const/16 v0, 0x5a

    return v0

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$1Mmb-T2Vr4MdAvskahPXoB8QVmE(Lorg/briarproject/briar/android/keyagreement/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->retryAutoFocus()V

    return-void
.end method

.method public static synthetic lambda$surfaceChanged$1(Lorg/briarproject/briar/android/keyagreement/CameraView;Landroid/view/SurfaceHolder;II)V
    .locals 0

    .line 456
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceChangedUi(Landroid/view/SurfaceHolder;II)V
    :try_end_0
    .catch Lorg/briarproject/briar/android/keyagreement/CameraException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 458
    sget-object p2, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, p3, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$surfaceCreated$0(Lorg/briarproject/briar/android/keyagreement/CameraView;Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 434
    :try_start_0
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceCreatedUi(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Lorg/briarproject/briar/android/keyagreement/CameraException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 436
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$surfaceDestroyed$2(Lorg/briarproject/briar/android/keyagreement/CameraView;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 489
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceDestroyedUi(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private logCameraParameters()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 411
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 419
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video stabilisation enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 422
    :cond_0
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scene mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 423
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 424
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flash mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 426
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 416
    new-instance v1, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {v1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private retryAutoFocus()V
    .locals 3

    .line 514
    :try_start_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->startAutoFocus()V
    :try_end_0
    .catch Lorg/briarproject/briar/android/keyagreement/CameraException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 516
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setBestParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 329
    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setVideoStabilisation(Landroid/hardware/Camera$Parameters;)V

    .line 330
    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setFocusMode(Landroid/hardware/Camera$Parameters;)V

    const-string v0, "off"

    .line 331
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setPreviewSize(Landroid/hardware/Camera$Parameters;)V

    .line 334
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 335
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 337
    new-instance p2, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private setDisplayOrientation(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 259
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 261
    :try_start_0
    iget v1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->cameraIndex:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 266
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    .line 267
    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 269
    :cond_0
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 271
    :goto_0
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " degrees, camera orientation "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " degrees"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 277
    :cond_1
    :try_start_1
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    iput v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->displayOrientation:I

    return-void

    :catch_0
    move-exception p1

    .line 279
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {v0, p1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 263
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {v0, p1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 257
    :cond_2
    new-instance p1, Lorg/briarproject/briar/android/keyagreement/CameraException;

    const-string v0, "Camera is null"

    invoke-direct {p1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setFocusMode(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 350
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 351
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus modes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    const-string v1, "continuous-picture"

    .line 352
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "continuous-picture"

    .line 353
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "continuous-video"

    .line 354
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "continuous-video"

    .line 355
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "edof"

    .line 356
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "edof"

    .line 357
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "macro"

    .line 358
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "macro"

    .line 359
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "auto"

    .line 360
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "auto"

    .line 361
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "fixed"

    .line 362
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "fixed"

    .line 363
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private setPreviewSize(Landroid/hardware/Camera$Parameters;)V
    .locals 12

    .line 369
    iget v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceWidth:I

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceHeight:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 372
    :cond_0
    iget v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceWidth:I

    int-to-float v0, v0

    iget v1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 373
    iget v1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->displayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 374
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 377
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_3

    .line 378
    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    goto :goto_2

    :cond_3
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    :goto_2
    if-eqz v1, :cond_4

    .line 379
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    goto :goto_3

    :cond_4
    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    :goto_3
    int-to-float v8, v6

    int-to-float v9, v7

    div-float/2addr v8, v9

    div-float v9, v8, v0

    div-float v8, v0, v8

    .line 381
    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-int v6, v6, v7

    int-to-float v6, v6

    const v7, 0x48f42400    # 500000.0f

    div-float v9, v6, v7

    div-float/2addr v7, v6

    .line 383
    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v9, v8, v6

    div-float/2addr v7, v9

    .line 385
    sget-object v9, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 386
    sget-object v9, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", stretch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", zoom "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", score "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_6

    cmpl-float v6, v7, v4

    if-lez v6, :cond_2

    :cond_6
    move-object v3, v5

    move v4, v7

    goto/16 :goto_1

    :cond_7
    if-eqz v3, :cond_9

    .line 396
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 397
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Best size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 398
    :cond_8
    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    :cond_9
    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method private setSceneMode(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 287
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 289
    :cond_0
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scene modes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_1
    const-string v1, "barcode"

    .line 290
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "barcode"

    .line 291
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 293
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 294
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 296
    new-instance p2, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p2
.end method

.method private setVideoStabilisation(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .line 343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 344
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_0
    return-void
.end method

.method private startAutoFocus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRunning:Z

    if-nez v0, :cond_0

    .line 222
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRetry:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 223
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRunning:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 226
    new-instance v1, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {v1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private startConsumer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->startAutoFocus()V

    .line 215
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewConsumer:Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;

    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    iget v2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->cameraIndex:I

    invoke-interface {v0, v1, v2}, Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;->start(Landroid/hardware/Camera;I)V

    return-void

    .line 213
    :cond_0
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/CameraException;

    const-string v1, "Camera is null"

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startPreview(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 186
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Starting preview"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 190
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    const/4 p1, 0x1

    .line 191
    iput-boolean p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewStarted:Z

    .line 192
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->startConsumer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 194
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {v0, p1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 187
    :cond_0
    new-instance p1, Lorg/briarproject/briar/android/keyagreement/CameraException;

    const-string v0, "Camera is null"

    invoke-direct {p1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private stopConsumer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->cancelAutoFocus()V

    .line 235
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewConsumer:Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;

    invoke-interface {v0}, Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;->stop()V

    return-void

    .line 233
    :cond_0
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/CameraException;

    const-string v1, "Camera is null"

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stopPreview()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 200
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Stopping preview"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->stopConsumer()V

    .line 204
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewStarted:Z

    return-void

    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {v1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 201
    :cond_0
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/CameraException;

    const-string v1, "Camera is null"

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private surfaceChangedUi(Landroid/view/SurfaceHolder;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 466
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 468
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Releasing old surface"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 471
    :cond_1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    .line 472
    iput p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceWidth:I

    .line 473
    iput p3, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surfaceHeight:I

    .line 474
    iget-object p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    if-nez p2, :cond_2

    return-void

    .line 475
    :cond_2
    iget-boolean p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewStarted:Z

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->stopPreview()V

    .line 477
    :cond_3
    :try_start_0
    iget-object p2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 478
    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setPreviewSize(Landroid/hardware/Camera$Parameters;)V

    .line 479
    iget-object p3, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {p3, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 480
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->logCameraParameters()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/CameraView;->startPreview(Landroid/view/SurfaceHolder;)V

    return-void

    :catch_0
    move-exception p1

    .line 482
    new-instance p2, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private surfaceCreatedUi(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 443
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Surface created"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 445
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Releasing old surface"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 448
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    return-void
.end method

.method private surfaceDestroyedUi(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 494
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Surface destroyed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 496
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Releasing old surface"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    .line 500
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setKeepScreenOn(Z)V

    .line 91
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 92
    invoke-virtual {p0, p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    .line 505
    sget-object p2, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 506
    sget-object p2, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto focus succeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 507
    iput-boolean p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRunning:Z

    .line 508
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->autoFocusRetry:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lorg/briarproject/briar/android/keyagreement/CameraView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 522
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->retryAutoFocus()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setKeepScreenOn(Z)V

    .line 99
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public setPreviewConsumer(Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;)V
    .locals 2

    .line 83
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Setting preview consumer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewConsumer:Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;

    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 104
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Opening camera"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 106
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 110
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 111
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 112
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 113
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Using back-facing camera"

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 114
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    .line 115
    iput v2, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->cameraIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 121
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Using front-facing camera"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 122
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    .line 123
    iput v1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->cameraIndex:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_2
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->getScreenRotationDegrees()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setDisplayOrientation(I)V

    .line 130
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setSceneMode(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "barcode"

    .line 132
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "off"

    .line 134
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->disableFlash(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    :cond_3
    const-string v1, "off"

    .line 137
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 138
    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->disableSceneMode(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 141
    :cond_4
    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setBestParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->enableAutoFocus(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->logCameraParameters()V

    .line 147
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->previewStarted:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->startPreview(Landroid/view/SurfaceHolder;)V

    :cond_5
    return-void

    .line 107
    :cond_6
    :try_start_1
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/CameraException;

    const-string v1, "No camera"

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {v1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/briar/android/keyagreement/CameraException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->stopPreview()V

    .line 154
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/CameraView;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Releasing camera"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/CameraView;->camera:Landroid/hardware/Camera;

    return-void

    :catch_0
    move-exception v0

    .line 158
    new-instance v1, Lorg/briarproject/briar/android/keyagreement/CameraException;

    invoke-direct {v1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 454
    new-instance p2, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$a0PON7jYFeSGSl2jMJBXQI8IAjE;

    invoke-direct {p2, p0, p1, p3, p4}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$a0PON7jYFeSGSl2jMJBXQI8IAjE;-><init>(Lorg/briarproject/briar/android/keyagreement/CameraView;Landroid/view/SurfaceHolder;II)V

    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/keyagreement/CameraView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 432
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$eBT14QXSvy105KGGkPGbPazQIPQ;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$eBT14QXSvy105KGGkPGbPazQIPQ;-><init>(Lorg/briarproject/briar/android/keyagreement/CameraView;Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 489
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$o3DaZKVN8v2sf1M_FhSW45Y_3q4;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$CameraView$o3DaZKVN8v2sf1M_FhSW45Y_3q4;-><init>(Lorg/briarproject/briar/android/keyagreement/CameraView;Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
