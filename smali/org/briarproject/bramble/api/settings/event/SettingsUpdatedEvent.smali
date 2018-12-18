.class public Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "SettingsUpdatedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final namespace:Ljava/lang/String;

.field private final settings:Lorg/briarproject/bramble/api/settings/Settings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/briarproject/bramble/api/settings/Settings;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->namespace:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Lorg/briarproject/bramble/api/settings/Settings;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    return-object v0
.end method
