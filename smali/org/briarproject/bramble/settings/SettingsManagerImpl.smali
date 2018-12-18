.class Lorg/briarproject/bramble/settings/SettingsManagerImpl;
.super Ljava/lang/Object;
.source "SettingsManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/settings/SettingsManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/settings/SettingsManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    return-void
.end method

.method public static synthetic lambda$getSettings$0(Lorg/briarproject/bramble/settings/SettingsManagerImpl;Ljava/lang/String;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/settings/Settings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/briarproject/bramble/settings/SettingsManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p2, p1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getSettings(Lorg/briarproject/bramble/api/db/Transaction;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$mergeSettings$1(Lorg/briarproject/bramble/settings/SettingsManagerImpl;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/briarproject/bramble/settings/SettingsManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p3, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->mergeSettings(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/settings/SettingsManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$G1PYoHYMEpCQWlo6psIpnldre_8;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$G1PYoHYMEpCQWlo6psIpnldre_8;-><init>(Lorg/briarproject/bramble/settings/SettingsManagerImpl;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transactionWithResult(ZLorg/briarproject/bramble/api/db/DbCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/settings/Settings;

    return-object p1
.end method

.method public getSettings(Lorg/briarproject/bramble/api/db/Transaction;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/briarproject/bramble/settings/SettingsManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->getSettings(Lorg/briarproject/bramble/api/db/Transaction;Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    return-object p1
.end method

.method public mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/briarproject/bramble/settings/SettingsManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    new-instance v1, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$yzkI4hgNoy3XLgq86bzfkzK9BIk;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$yzkI4hgNoy3XLgq86bzfkzK9BIk;-><init>(Lorg/briarproject/bramble/settings/SettingsManagerImpl;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->transaction(ZLorg/briarproject/bramble/api/db/DbRunnable;)V

    return-void
.end method
