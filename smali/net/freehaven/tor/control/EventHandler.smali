.class public interface abstract Lnet/freehaven/tor/control/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# virtual methods
.method public abstract bandwidthUsed(JJ)V
.end method

.method public abstract circuitStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract message(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract newDescriptors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract orConnStatus(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract streamStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unrecognized(Ljava/lang/String;Ljava/lang/String;)V
.end method
