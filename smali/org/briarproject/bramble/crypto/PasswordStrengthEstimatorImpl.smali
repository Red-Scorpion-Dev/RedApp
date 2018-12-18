.class Lorg/briarproject/bramble/crypto/PasswordStrengthEstimatorImpl;
.super Ljava/lang/Object;
.source "PasswordStrengthEstimatorImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final STRONG_UNIQUE_CHARS:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public estimateStrength(Ljava/lang/String;)F
    .locals 4

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 21
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
