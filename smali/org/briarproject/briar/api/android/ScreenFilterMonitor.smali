.class public interface abstract Lorg/briarproject/briar/api/android/ScreenFilterMonitor;
.super Ljava/lang/Object;
.source "ScreenFilterMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract allowApps(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getApps()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor$AppDetails;",
            ">;"
        }
    .end annotation
.end method
