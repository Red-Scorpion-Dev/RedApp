.class public Lorg/briarproject/bramble/settings/SettingsModule;
.super Ljava/lang/Object;
.source "SettingsModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideSettingsManager(Lorg/briarproject/bramble/api/db/DatabaseComponent;)Lorg/briarproject/bramble/api/settings/SettingsManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 14
    new-instance v0, Lorg/briarproject/bramble/settings/SettingsManagerImpl;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/settings/SettingsManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;)V

    return-object v0
.end method
