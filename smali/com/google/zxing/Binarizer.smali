.class public abstract Lcom/google/zxing/Binarizer;
.super Ljava/lang/Object;
.source "Binarizer.java"


# instance fields
.field private final source:Lcom/google/zxing/LuminanceSource;


# direct methods
.method protected constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;

    return-void
.end method


# virtual methods
.method public abstract getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public final getLuminanceSource()Lcom/google/zxing/LuminanceSource;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;

    return-object v0
.end method
