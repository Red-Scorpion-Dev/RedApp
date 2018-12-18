.class Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;
.super Ljava/lang/Object;
.source "QrCodeDecoder.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lorg/briarproject/briar/android/keyagreement/PreviewConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$ResultCallback;,
        Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final callback:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$ResultCallback;

.field private camera:Landroid/hardware/Camera;

.field private cameraIndex:I

.field private final reader:Lcom/google/zxing/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$ResultCallback;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->reader:Lcom/google/zxing/Reader;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->cameraIndex:I

    .line 44
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->callback:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$ResultCallback;

    return-void
.end method

.method static synthetic access$100([BIII)Lcom/google/zxing/BinaryBitmap;
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->binarize([BIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;)Lcom/google/zxing/Reader;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->reader:Lcom/google/zxing/Reader;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .line 32
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;)Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$ResultCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->callback:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$ResultCallback;

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->askForPreviewFrame()V

    return-void
.end method

.method private askForPreviewFrame()V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method private static binarize([BIII)Lcom/google/zxing/BinaryBitmap;
    .locals 9

    .line 135
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v0, 0x0

    const/16 v1, 0xb4

    if-lt p3, v1, :cond_0

    sub-int v2, p1, v7

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-lt p3, v1, :cond_1

    sub-int p3, p2, v7

    move v5, p3

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 138
    :goto_1
    new-instance p3, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v8, 0x0

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 140
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    new-instance p1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p1, p3}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p0, p1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object p0
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9

    .line 68
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->camera:Landroid/hardware/Camera;

    if-ne p2, v0, :cond_1

    .line 70
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 73
    array-length v0, p1

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 75
    iget v1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->cameraIndex:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 76
    new-instance v1, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;

    iget v5, p2, Landroid/hardware/Camera$Size;->width:I

    iget v6, p2, Landroid/hardware/Camera$Size;->height:I

    iget v7, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;-><init>(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;[BIIILorg/briarproject/briar/android/keyagreement/QrCodeDecoder$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 77
    invoke-virtual {v1, p1}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 80
    :cond_0
    sget-object p1, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Preview size does not match camera parameters"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->askForPreviewFrame()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    sget-object p2, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Error getting camera parameters."

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    :cond_1
    sget-object p1, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Camera has changed, ignoring preview frame"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public start(Landroid/hardware/Camera;I)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->camera:Landroid/hardware/Camera;

    .line 50
    iput p2, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->cameraIndex:I

    .line 51
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->askForPreviewFrame()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->camera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->cameraIndex:I

    return-void
.end method
