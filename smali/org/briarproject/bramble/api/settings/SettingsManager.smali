.class public interface abstract Lorg/briarproject/bramble/api/settings/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getSettings(Lorg/briarproject/bramble/api/db/Transaction;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
