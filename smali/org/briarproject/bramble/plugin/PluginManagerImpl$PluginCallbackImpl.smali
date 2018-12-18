.class abstract Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/PluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PluginCallbackImpl"
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field protected final id:Lorg/briarproject/bramble/api/plugin/TransportId;

.field final synthetic this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/plugin/PluginManagerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-void
.end method


# virtual methods
.method public getLocalProperties()Lorg/briarproject/bramble/api/properties/TransportProperties;
    .locals 3

    .line 291
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$600(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->getLocalProperties(Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    move-result-object v0
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 293
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 294
    new-instance v0, Lorg/briarproject/bramble/api/properties/TransportProperties;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/properties/TransportProperties;-><init>()V

    return-object v0
.end method

.method public getSettings()Lorg/briarproject/bramble/api/settings/Settings;
    .locals 3

    .line 281
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$500(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v0
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 283
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 284
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    return-object v0
.end method

.method public mergeLocalProperties(Lorg/briarproject/bramble/api/properties/TransportProperties;)V
    .locals 2

    .line 310
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$600(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-interface {v0, v1, p1}, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;->mergeLocalProperties(Lorg/briarproject/bramble/api/plugin/TransportId;Lorg/briarproject/bramble/api/properties/TransportProperties;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V
    .locals 2

    .line 301
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$500(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/briarproject/bramble/api/settings/SettingsManager;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 303
    invoke-static {}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$400()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public transportDisabled()V
    .locals 3

    .line 323
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$700(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    new-instance v1, Lorg/briarproject/bramble/api/plugin/event/TransportDisabledEvent;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/api/plugin/event/TransportDisabledEvent;-><init>(Lorg/briarproject/bramble/api/plugin/TransportId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    return-void
.end method

.method public transportEnabled()V
    .locals 3

    .line 318
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->this$0:Lorg/briarproject/bramble/plugin/PluginManagerImpl;

    invoke-static {v0}, Lorg/briarproject/bramble/plugin/PluginManagerImpl;->access$700(Lorg/briarproject/bramble/plugin/PluginManagerImpl;)Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    new-instance v1, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/PluginManagerImpl$PluginCallbackImpl;->id:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-direct {v1, v2}, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;-><init>(Lorg/briarproject/bramble/api/plugin/TransportId;)V

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    return-void
.end method
