.class public interface abstract Lorg/acra/config/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/config/RetryPolicy$FailedSender;
    }
.end annotation


# virtual methods
.method public abstract shouldRetrySend(Ljava/util/List;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/acra/sender/ReportSender;",
            ">;",
            "Ljava/util/List<",
            "Lorg/acra/config/RetryPolicy$FailedSender;",
            ">;)Z"
        }
    .end annotation
.end method
