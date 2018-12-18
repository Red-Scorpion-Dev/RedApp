.class public Lorg/briarproject/bramble/BrambleCoreModule;
.super Ljava/lang/Object;
.source "BrambleCoreModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lorg/briarproject/bramble/client/ClientModule;,
        Lorg/briarproject/bramble/contact/ContactModule;,
        Lorg/briarproject/bramble/crypto/CryptoModule;,
        Lorg/briarproject/bramble/crypto/CryptoExecutorModule;,
        Lorg/briarproject/bramble/data/DataModule;,
        Lorg/briarproject/bramble/db/DatabaseModule;,
        Lorg/briarproject/bramble/db/DatabaseExecutorModule;,
        Lorg/briarproject/bramble/event/EventModule;,
        Lorg/briarproject/bramble/identity/IdentityModule;,
        Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;,
        Lorg/briarproject/bramble/lifecycle/LifecycleModule;,
        Lorg/briarproject/bramble/plugin/PluginModule;,
        Lorg/briarproject/bramble/properties/PropertiesModule;,
        Lorg/briarproject/bramble/record/RecordModule;,
        Lorg/briarproject/bramble/reliability/ReliabilityModule;,
        Lorg/briarproject/bramble/reporting/ReportingModule;,
        Lorg/briarproject/bramble/settings/SettingsModule;,
        Lorg/briarproject/bramble/socks/SocksModule;,
        Lorg/briarproject/bramble/sync/SyncModule;,
        Lorg/briarproject/bramble/system/SystemModule;,
        Lorg/briarproject/bramble/transport/TransportModule;,
        Lorg/briarproject/bramble/versioning/VersioningModule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initEagerSingletons(Lorg/briarproject/bramble/BrambleCoreEagerSingletons;)V
    .locals 1

    .line 55
    new-instance v0, Lorg/briarproject/bramble/contact/ContactModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/contact/ContactModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/contact/ContactModule$EagerSingletons;)V

    .line 56
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;)V

    .line 57
    new-instance v0, Lorg/briarproject/bramble/db/DatabaseExecutorModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DatabaseExecutorModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/db/DatabaseExecutorModule$EagerSingletons;)V

    .line 58
    new-instance v0, Lorg/briarproject/bramble/identity/IdentityModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/identity/IdentityModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/identity/IdentityModule$EagerSingletons;)V

    .line 59
    new-instance v0, Lorg/briarproject/bramble/lifecycle/LifecycleModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/lifecycle/LifecycleModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/lifecycle/LifecycleModule$EagerSingletons;)V

    .line 60
    new-instance v0, Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;)V

    .line 61
    new-instance v0, Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;)V

    .line 62
    new-instance v0, Lorg/briarproject/bramble/reporting/ReportingModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/reporting/ReportingModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/reporting/ReportingModule$EagerSingletons;)V

    .line 63
    new-instance v0, Lorg/briarproject/bramble/sync/SyncModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/sync/SyncModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/sync/SyncModule$EagerSingletons;)V

    .line 64
    new-instance v0, Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;)V

    .line 65
    new-instance v0, Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;)V

    .line 66
    new-instance v0, Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;

    invoke-direct {v0}, Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;-><init>()V

    invoke-interface {p0, v0}, Lorg/briarproject/bramble/BrambleCoreEagerSingletons;->inject(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;)V

    return-void
.end method
