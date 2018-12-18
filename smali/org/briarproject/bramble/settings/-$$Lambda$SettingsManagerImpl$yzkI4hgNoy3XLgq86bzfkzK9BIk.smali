.class public final synthetic Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$yzkI4hgNoy3XLgq86bzfkzK9BIk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/settings/SettingsManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/settings/Settings;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/settings/SettingsManagerImpl;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$yzkI4hgNoy3XLgq86bzfkzK9BIk;->f$0:Lorg/briarproject/bramble/settings/SettingsManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$yzkI4hgNoy3XLgq86bzfkzK9BIk;->f$1:Lorg/briarproject/bramble/api/settings/Settings;

    iput-object p3, p0, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$yzkI4hgNoy3XLgq86bzfkzK9BIk;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$yzkI4hgNoy3XLgq86bzfkzK9BIk;->f$0:Lorg/briarproject/bramble/settings/SettingsManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$yzkI4hgNoy3XLgq86bzfkzK9BIk;->f$1:Lorg/briarproject/bramble/api/settings/Settings;

    iget-object v2, p0, Lorg/briarproject/bramble/settings/-$$Lambda$SettingsManagerImpl$yzkI4hgNoy3XLgq86bzfkzK9BIk;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lorg/briarproject/bramble/settings/SettingsManagerImpl;->lambda$mergeSettings$1(Lorg/briarproject/bramble/settings/SettingsManagerImpl;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
