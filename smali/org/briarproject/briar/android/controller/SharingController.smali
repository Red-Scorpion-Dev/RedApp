.class public interface abstract Lorg/briarproject/briar/android/controller/SharingController;
.super Ljava/lang/Object;
.source "SharingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/controller/SharingController$SharingListener;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract add(Lorg/briarproject/bramble/api/contact/ContactId;)V
.end method

.method public abstract addAll(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOnlineCount()I
.end method

.method public abstract getTotalCount()I
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract remove(Lorg/briarproject/bramble/api/contact/ContactId;)V
.end method

.method public abstract setSharingListener(Lorg/briarproject/briar/android/controller/SharingController$SharingListener;)V
.end method
