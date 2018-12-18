.class public interface abstract Lorg/briarproject/briar/android/BriarApplication;
.super Ljava/lang/Object;
.source "BriarApplication.java"


# virtual methods
.method public abstract getApplicationComponent()Lorg/briarproject/briar/android/AndroidComponent;
.end method

.method public abstract getDefaultSharedPreferences()Landroid/content/SharedPreferences;
.end method

.method public abstract getRecentLogRecords()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation
.end method
