.class public interface abstract Lorg/briarproject/briar/android/sharing/BaseMessageFragment$MessageFragmentListener;
.super Ljava/lang/Object;
.source "BaseMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/sharing/BaseMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageFragmentListener"
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getMaximumTextLength()I
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onButtonClick(Ljava/lang/String;)Z
.end method

.method public abstract setTitle(I)V
.end method
