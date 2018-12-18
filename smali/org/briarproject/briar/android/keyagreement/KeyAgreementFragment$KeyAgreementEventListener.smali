.class interface abstract Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;
.super Ljava/lang/Object;
.source "KeyAgreementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "KeyAgreementEventListener"
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract keyAgreementAborted(Z)V
.end method

.method public abstract keyAgreementFailed()V
.end method

.method public abstract keyAgreementFinished(Lorg/briarproject/bramble/api/keyagreement/KeyAgreementResult;)Ljava/lang/String;
.end method

.method public abstract keyAgreementStarted()Ljava/lang/String;
.end method

.method public abstract keyAgreementWaiting()Ljava/lang/String;
.end method
