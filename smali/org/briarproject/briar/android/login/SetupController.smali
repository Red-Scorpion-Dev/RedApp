.class public interface abstract Lorg/briarproject/briar/android/login/SetupController;
.super Ljava/lang/Object;
.source "SetupController.java"

# interfaces
.implements Lorg/briarproject/briar/android/login/PasswordController;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createAccount()V
.end method

.method public abstract needToShowDozeFragment()Z
.end method

.method public abstract setAuthorName(Ljava/lang/String;)V
.end method

.method public abstract setPassword(Ljava/lang/String;)V
.end method

.method public abstract setSetupActivity(Lorg/briarproject/briar/android/login/SetupActivity;)V
.end method

.method public abstract showDozeFragment()V
.end method

.method public abstract showPasswordFragment()V
.end method
