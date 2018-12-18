.class public interface abstract Lorg/briarproject/bramble/api/system/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# virtual methods
.method public abstract currentTimeMillis()J
.end method

.method public abstract sleep(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
