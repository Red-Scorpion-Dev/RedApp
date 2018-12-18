.class public Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;
.super Lorg/briarproject/briar/android/fragment/BaseEventFragment;
.source "KeyAgreementFragment.java"

# interfaces
.implements Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$ResultCallback;
.implements Lorg/briarproject/briar/android/view/QrCodeView$FullscreenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final ISO_8859_1:Ljava/nio/charset/Charset;

.field private static final LOG:Ljava/util/logging/Logger;

.field static final TAG:Ljava/lang/String; = "org.briarproject.briar.android.keyagreement.KeyAgreementFragment"


# instance fields
.field private cameraOverlay:Landroid/widget/LinearLayout;

.field private cameraView:Lorg/briarproject/briar/android/keyagreement/CameraView;

.field eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private volatile gotLocalPayload:Z

.field private gotRemotePayload:Z

.field ioExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation
.end field

.field keyAgreementTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;

.field payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

.field payloadParser:Lorg/briarproject/bramble/api/keyagreement/PayloadParser;

.field private qrCodeView:Lorg/briarproject/briar/android/view/QrCodeView;

.field private status:Landroid/widget/TextView;

.field private statusView:Landroid/view/View;

.field private task:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->LOG:Ljava/util/logging/Logger;

    const-string v0, "ISO-8859-1"

    .line 68
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment;-><init>()V

    return-void
.end method

.method private keyAgreementAborted(Z)V
    .locals 1

    .line 307
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$n8cpqFYaQL4PS7uSjNJHhvT5m8Q;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$n8cpqFYaQL4PS7uSjNJHhvT5m8Q;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Z)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private keyAgreementFailed()V
    .locals 1

    .line 287
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$fXP95h-qOFGLuWv9x1Ja9ihp_Qg;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$fXP95h-qOFGLuWv9x1Ja9ihp_Qg;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private keyAgreementFinished(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V
    .locals 1

    .line 314
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$9j47qjcJcW24mepxunHo-X28JaU;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$9j47qjcJcW24mepxunHo-X28JaU;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private keyAgreementStarted()V
    .locals 1

    .line 299
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$dr0mippaEam3JfXzkcqGt_-PP6w;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$dr0mippaEam3JfXzkcqGt_-PP6w;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private keyAgreementWaiting()V
    .locals 1

    .line 294
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$mNXhy4je0qmAne-MhAuQzdbjWw0;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$mNXhy4je0qmAne-MhAuQzdbjWw0;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$handleResult$9(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lcom/google/zxing/Result;)V
    .locals 2

    .line 340
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Got result from decoder"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 342
    iget-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->gotLocalPayload:Z

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    iget-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->gotRemotePayload:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->qrCodeScanned(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$keyAgreementAborted$5(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Z)V
    .locals 1

    .line 308
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->reset()V

    .line 309
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->listener:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;

    invoke-interface {v0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;->keyAgreementAborted(Z)V

    return-void
.end method

.method public static synthetic lambda$keyAgreementFailed$2(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)V
    .locals 1

    .line 288
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->reset()V

    .line 289
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->listener:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;

    invoke-interface {v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;->keyAgreementFailed()V

    return-void
.end method

.method public static synthetic lambda$keyAgreementFinished$6(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->statusView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->status:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->listener:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;

    invoke-interface {v1, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;->keyAgreementFinished(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$keyAgreementStarted$4(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->qrCodeView:Lorg/briarproject/briar/android/view/QrCodeView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/view/QrCodeView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->statusView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->status:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->listener:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;

    invoke-interface {v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;->keyAgreementStarted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$keyAgreementWaiting$3(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->status:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->listener:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;

    invoke-interface {v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;->keyAgreementWaiting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$null$7(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->qrCodeView:Lorg/briarproject/briar/android/view/QrCodeView;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/view/QrCodeView;->setQrCode(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic lambda$setQrCode$8(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/Payload;Landroid/util/DisplayMetrics;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->payloadEncoder:Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;->encode(Lorg/briarproject/bramble/api/keyagreement/Payload;)[B

    move-result-object p1

    .line 326
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local payload is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 332
    invoke-static {p2, v0}, Lorg/briarproject/briar/android/keyagreement/QrCodeUtils;->createQrCode(Landroid/util/DisplayMetrics;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 333
    new-instance p2, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$cczrvq3hfjYx-ZCyTwiz-CSr_q4;

    invoke-direct {p2, p0, p1}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$cczrvq3hfjYx-ZCyTwiz-CSr_q4;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$startListening$0(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 201
    invoke-interface {p0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;->stopListening()V

    .line 202
    :cond_0
    invoke-interface {p1}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;->listen()V

    return-void
.end method

.method static synthetic lambda$stopListening$1(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 210
    invoke-interface {p0}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;->stopListening()V

    :cond_0
    return-void
.end method

.method private logCameraExceptionAndFinish(Lorg/briarproject/briar/android/keyagreement/CameraException;)V
    .locals 2

    .line 189
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 190
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110061

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 192
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->finish()V

    return-void
.end method

.method public static newInstance()Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;
    .locals 2

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    new-instance v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

    invoke-direct {v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;-><init>()V

    .line 96
    invoke-virtual {v1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private qrCodeScanned(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 235
    :try_start_0
    sget-object v2, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 236
    sget-object v2, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    sget-object v2, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote payload is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->payloadParser:Lorg/briarproject/bramble/api/keyagreement/PayloadParser;

    invoke-interface {v2, p1}, Lorg/briarproject/bramble/api/keyagreement/PayloadParser;->parse([B)Lorg/briarproject/bramble/api/keyagreement/Payload;

    move-result-object p1

    .line 239
    iput-boolean v1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->gotRemotePayload:Z

    .line 240
    iget-object v2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->cameraView:Lorg/briarproject/briar/android/keyagreement/CameraView;

    invoke-virtual {v2}, Lorg/briarproject/briar/android/keyagreement/CameraView;->stop()V

    .line 241
    iget-object v2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->cameraView:Lorg/briarproject/briar/android/keyagreement/CameraView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->statusView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->status:Landroid/widget/TextView;

    const v3, 0x7f110072

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->task:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    invoke-interface {v2, p1}, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;->connectAndRunProtocol(Lorg/briarproject/bramble/api/keyagreement/Payload;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/keyagreement/UnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/briarproject/briar/android/keyagreement/CameraException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 259
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "QR Code Invalid"

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->reset()V

    .line 261
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110186

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 257
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->logCameraExceptionAndFinish(Lorg/briarproject/briar/android/keyagreement/CameraException;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 246
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->reset()V

    .line 248
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/UnsupportedVersionException;->isTooOld()Z

    move-result p1

    const v2, 0x7f11002b

    if-eqz p1, :cond_1

    const p1, 0x7f110188

    .line 249
    new-array v1, v1, [Ljava/lang/Object;

    .line 250
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 249
    invoke-virtual {p0, p1, v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f110187

    .line 252
    new-array v1, v1, [Ljava/lang/Object;

    .line 253
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 252
    invoke-virtual {p0, p1, v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 255
    :goto_0
    invoke-static {p1}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->newInstance(Ljava/lang/String;)Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    :goto_1
    return-void
.end method

.method private reset()V
    .locals 2

    .line 217
    iget-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->gotRemotePayload:Z

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->cameraView:Lorg/briarproject/briar/android/keyagreement/CameraView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->start()V
    :try_end_0
    .catch Lorg/briarproject/briar/android/keyagreement/CameraException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 221
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->logCameraExceptionAndFinish(Lorg/briarproject/briar/android/keyagreement/CameraException;)V

    return-void

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->statusView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->cameraView:Lorg/briarproject/briar/android/keyagreement/CameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setVisibility(I)V

    .line 227
    iput-boolean v1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->gotRemotePayload:Z

    .line 228
    iput-boolean v1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->gotLocalPayload:Z

    .line 229
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->startListening()V

    return-void
.end method

.method private setQrCode(Lorg/briarproject/bramble/api/keyagreement/Payload;)V
    .locals 3

    .line 321
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$jn5YvYgUNQgDM_146xtgDYbJuvU;

    invoke-direct {v2, p0, p1, v0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$jn5YvYgUNQgDM_146xtgDYbJuvU;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/Payload;Landroid/util/DisplayMetrics;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startListening()V
    .locals 4

    .line 197
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->task:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    .line 198
    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->keyAgreementTaskProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    .line 199
    iput-object v1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->task:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    .line 200
    iget-object v2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$71WJhVBnDGaObVOUtd0nGuaiF8o;

    invoke-direct {v3, v0, v1}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$71WJhVBnDGaObVOUtd0nGuaiF8o;-><init>(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopListening()V
    .locals 3

    .line 208
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->task:Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    .line 209
    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$V8EV3k3R3o6ZVEJqlvqWFB_nGfE;

    invoke-direct {v2, v0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$V8EV3k3R3o6ZVEJqlvqWFB_nGfE;-><init>(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 268
    instance-of v0, p1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementListeningEvent;

    if-eqz v0, :cond_0

    .line 269
    check-cast p1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementListeningEvent;

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->gotLocalPayload:Z

    .line 271
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementListeningEvent;->getLocalPayload()Lorg/briarproject/bramble/api/keyagreement/Payload;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->setQrCode(Lorg/briarproject/bramble/api/keyagreement/Payload;)V

    goto :goto_0

    .line 272
    :cond_0
    instance-of v0, p1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFailedEvent;

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->keyAgreementFailed()V

    goto :goto_0

    .line 274
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementWaitingEvent;

    if-eqz v0, :cond_2

    .line 275
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->keyAgreementWaiting()V

    goto :goto_0

    .line 276
    :cond_2
    instance-of v0, p1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementStartedEvent;

    if-eqz v0, :cond_3

    .line 277
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->keyAgreementStarted()V

    goto :goto_0

    .line 278
    :cond_3
    instance-of v0, p1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementAbortedEvent;

    if-eqz v0, :cond_4

    .line 279
    check-cast p1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementAbortedEvent;

    .line 280
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementAbortedEvent;->didRemoteAbort()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->keyAgreementAborted(Z)V

    goto :goto_0

    .line 281
    :cond_4
    instance-of v0, p1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFinishedEvent;

    if-eqz v0, :cond_5

    .line 282
    check-cast p1, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFinishedEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/keyagreement/event/KeyAgreementFinishedEvent;->getResult()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->keyAgreementFinished(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected finish()V
    .locals 1

    .line 349
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public handleResult(Lcom/google/zxing/Result;)V
    .locals 1

    .line 339
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$2GRVEujrRfUzF7AkPhaZeSqJXpk;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementFragment$2GRVEujrRfUzF7AkPhaZeSqJXpk;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lcom/google/zxing/Result;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method public injectFragment(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 108
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 140
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->cameraView:Lorg/briarproject/briar/android/keyagreement/CameraView;

    new-instance v0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;-><init>(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$ResultCallback;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->setPreviewConsumer(Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->onAttach(Landroid/content/Context;)V

    .line 103
    check-cast p1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->listener:Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0050

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 1

    .line 145
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->onStart()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->cameraView:Lorg/briarproject/briar/android/keyagreement/CameraView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->start()V
    :try_end_0
    .catch Lorg/briarproject/briar/android/keyagreement/CameraException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 149
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->logCameraExceptionAndFinish(Lorg/briarproject/briar/android/keyagreement/CameraException;)V

    .line 151
    :goto_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->startListening()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 178
    invoke-super {p0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->onStop()V

    .line 179
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->stopListening()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->cameraView:Lorg/briarproject/briar/android/keyagreement/CameraView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/keyagreement/CameraView;->stop()V
    :try_end_0
    .catch Lorg/briarproject/briar/android/keyagreement/CameraException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->logCameraExceptionAndFinish(Lorg/briarproject/briar/android/keyagreement/CameraException;)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/android/fragment/BaseEventFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09005b

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/android/keyagreement/CameraView;

    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->cameraView:Lorg/briarproject/briar/android/keyagreement/CameraView;

    const p2, 0x7f09005a

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->cameraOverlay:Landroid/widget/LinearLayout;

    const p2, 0x7f09017f

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->statusView:Landroid/view/View;

    const p2, 0x7f09006e

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->status:Landroid/widget/TextView;

    const p2, 0x7f090135

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/view/QrCodeView;

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->qrCodeView:Lorg/briarproject/briar/android/view/QrCodeView;

    .line 133
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->qrCodeView:Lorg/briarproject/briar/android/view/QrCodeView;

    invoke-virtual {p1, p0}, Lorg/briarproject/briar/android/view/QrCodeView;->setFullscreenListener(Lorg/briarproject/briar/android/view/QrCodeView$FullscreenListener;)V

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 159
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 160
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v3, v2

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->cameraOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p1

    if-nez p1, :cond_1

    .line 164
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 165
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    .line 167
    :cond_1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 168
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 171
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->statusView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->qrCodeView:Lorg/briarproject/briar/android/view/QrCodeView;

    invoke-virtual {p1, v3}, Lorg/briarproject/briar/android/view/QrCodeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->cameraOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
