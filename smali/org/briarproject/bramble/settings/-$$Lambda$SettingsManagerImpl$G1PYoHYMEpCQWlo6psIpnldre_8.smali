.class public final synthetic Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$G1PYoHYMEpCQWlo6psIpnldre_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/settings/SettingsManagerImpl;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/settings/SettingsManagerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$G1PYoHYMEpCQWlo6psIpnldre_8;->f$0:Lorg/briarproject/bramble/settings/SettingsManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$G1PYoHYMEpCQWlo6psIpnldre_8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$G1PYoHYMEpCQWlo6psIpnldre_8;->f$0:Lorg/briarproject/bramble/settings/SettingsManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$G1PYoHYMEpCQWlo6psIpnldre_8;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/settings/SettingsManagerImpl;->lambda$getSettings$0(Lorg/briarproject/bramble/settings/SettingsManagerImpl;Ljava/lang/String;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    return-object p1
.end method
