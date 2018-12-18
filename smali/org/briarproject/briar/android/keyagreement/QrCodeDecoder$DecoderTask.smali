.class Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;
.super Landroid/os/AsyncTask;
.source "QrCodeDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecoderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:[B

.field private final height:I

.field private final orientation:I

.field final synthetic this$0:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;

.field private final width:I


# direct methods
.method private constructor <init>(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;[BIII)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->this$0:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 98
    iput-object p2, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->data:[B

    .line 99
    iput p3, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->width:I

    .line 100
    iput p4, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->height:I

    .line 101
    iput p5, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->orientation:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;[BIIILorg/briarproject/briar/android/keyagreement/QrCodeDecoder$1;)V
    .locals 0

    .line 91
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;-><init>(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;[BIII)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 106
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->data:[B

    iget v0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->width:I

    iget v1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->height:I

    iget v2, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->orientation:I

    invoke-static {p1, v0, v1, v2}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->access$100([BIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object p1

    const/4 v0, 0x0

    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->this$0:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;

    invoke-static {v1}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->access$200(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;)Lcom/google/zxing/Reader;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string v3, "ISO8859_1"

    .line 110
    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 109
    invoke-interface {v1, p1, v2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->this$0:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;

    invoke-static {v1}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->access$200(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;)Lcom/google/zxing/Reader;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/zxing/Reader;->reset()V

    .line 120
    iget-object v1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->this$0:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;

    invoke-static {v1}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->access$400(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;)Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$ResultCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$ResultCallback;->handleResult(Lcom/google/zxing/Result;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 115
    :catch_0
    :try_start_1
    invoke-static {}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->access$300()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v1, "Invalid preview frame"

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->this$0:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;

    invoke-static {p1}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->access$200(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;)Lcom/google/zxing/Reader;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/zxing/Reader;->reset()V

    return-object v0

    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->this$0:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;

    invoke-static {v0}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->access$200(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;)Lcom/google/zxing/Reader;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/zxing/Reader;->reset()V

    .line 119
    throw p1

    .line 118
    :catch_1
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->this$0:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;

    invoke-static {p1}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->access$200(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;)Lcom/google/zxing/Reader;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/zxing/Reader;->reset()V

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder$DecoderTask;->this$0:Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;

    invoke-static {p1}, Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;->access$500(Lorg/briarproject/briar/android/keyagreement/QrCodeDecoder;)V

    return-void
.end method
