.class public interface abstract Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;
.super Ljava/lang/Object;
.source "PasswordStrengthEstimator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final NONE:F = 0.0f

.field public static final QUITE_STRONG:F = 0.75f

.field public static final QUITE_WEAK:F = 0.5f

.field public static final STRONG:F = 1.0f

.field public static final WEAK:F = 0.25f


# virtual methods
.method public abstract estimateStrength(Ljava/lang/String;)F
.end method
