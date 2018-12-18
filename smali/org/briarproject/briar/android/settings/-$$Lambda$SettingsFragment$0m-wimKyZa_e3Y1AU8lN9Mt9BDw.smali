.class public final synthetic Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$0m-wimKyZa_e3Y1AU8lN9Mt9BDw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/settings/Settings;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$0m-wimKyZa_e3Y1AU8lN9Mt9BDw;->f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$0m-wimKyZa_e3Y1AU8lN9Mt9BDw;->f$1:Lorg/briarproject/bramble/api/settings/Settings;

    iput-object p3, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$0m-wimKyZa_e3Y1AU8lN9Mt9BDw;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$0m-wimKyZa_e3Y1AU8lN9Mt9BDw;->f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$0m-wimKyZa_e3Y1AU8lN9Mt9BDw;->f$1:Lorg/briarproject/bramble/api/settings/Settings;

    iget-object v2, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$0m-wimKyZa_e3Y1AU8lN9Mt9BDw;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->lambda$mergeSettings$8(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    return-void
.end method
