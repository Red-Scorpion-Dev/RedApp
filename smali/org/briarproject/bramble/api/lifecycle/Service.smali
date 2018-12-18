.class public interface abstract Lorg/briarproject/bramble/api/lifecycle/Service;
.super Ljava/lang/Object;
.source "Service.java"


# virtual methods
.method public abstract startService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/lifecycle/ServiceException;
        }
    .end annotation
.end method

.method public abstract stopService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/lifecycle/ServiceException;
        }
    .end annotation
.end method
