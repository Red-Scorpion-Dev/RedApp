.class public interface abstract Lorg/briarproject/briar/android/login/PasswordController;
.super Ljava/lang/Object;
.source "PasswordController.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract changePassword(Ljava/lang/String;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract estimatePasswordStrength(Ljava/lang/String;)F
.end method

.method public abstract validatePassword(Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/briarproject/briar/android/controller/handler/ResultHandler<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
