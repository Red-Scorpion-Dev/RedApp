.class public final Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerAndroidComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/DaggerAndroidComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private androidBatteryModule:Lorg/briarproject/bramble/battery/AndroidBatteryModule;

.field private androidNetworkModule:Lorg/briarproject/bramble/network/AndroidNetworkModule;

.field private androidSystemModule:Lorg/briarproject/bramble/system/AndroidSystemModule;

.field private appModule:Lorg/briarproject/briar/android/AppModule;

.field private blogModule:Lorg/briarproject/briar/blog/BlogModule;

.field private briarAccountModule:Lorg/briarproject/bramble/account/BriarAccountModule;

.field private briarClientModule:Lorg/briarproject/briar/client/BriarClientModule;

.field private circumventionModule:Lorg/briarproject/bramble/plugin/tor/CircumventionModule;

.field private clientModule:Lorg/briarproject/bramble/client/ClientModule;

.field private contactModule:Lorg/briarproject/bramble/contact/ContactModule;

.field private cryptoExecutorModule:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

.field private cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

.field private dataModule:Lorg/briarproject/bramble/data/DataModule;

.field private databaseExecutorModule:Lorg/briarproject/bramble/db/DatabaseExecutorModule;

.field private databaseModule:Lorg/briarproject/bramble/db/DatabaseModule;

.field private dnsModule:Lorg/briarproject/briar/feed/DnsModule;

.field private eventModule:Lorg/briarproject/bramble/event/EventModule;

.field private feedModule:Lorg/briarproject/briar/feed/FeedModule;

.field private forumModule:Lorg/briarproject/briar/forum/ForumModule;

.field private groupInvitationModule:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

.field private identityModule:Lorg/briarproject/bramble/identity/IdentityModule;

.field private introductionModule:Lorg/briarproject/briar/introduction/IntroductionModule;

.field private keyAgreementModule:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

.field private lifecycleModule:Lorg/briarproject/bramble/lifecycle/LifecycleModule;

.field private messagingModule:Lorg/briarproject/briar/messaging/MessagingModule;

.field private pluginModule:Lorg/briarproject/bramble/plugin/PluginModule;

.field private privateGroupModule:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

.field private propertiesModule:Lorg/briarproject/bramble/properties/PropertiesModule;

.field private recordModule:Lorg/briarproject/bramble/record/RecordModule;

.field private reportingModule:Lorg/briarproject/bramble/reporting/ReportingModule;

.field private settingsModule:Lorg/briarproject/bramble/settings/SettingsModule;

.field private sharingModule:Lorg/briarproject/briar/sharing/SharingModule;

.field private socksModule:Lorg/briarproject/bramble/socks/SocksModule;

.field private syncModule:Lorg/briarproject/bramble/sync/SyncModule;

.field private systemModule:Lorg/briarproject/bramble/system/SystemModule;

.field private testModule:Lorg/briarproject/briar/test/TestModule;

.field private transportModule:Lorg/briarproject/bramble/transport/TransportModule;

.field private versioningModule:Lorg/briarproject/bramble/versioning/VersioningModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/android/DaggerAndroidComponent$1;)V
    .locals 0

    .line 2514
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->appModule:Lorg/briarproject/briar/android/AppModule;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/db/DatabaseExecutorModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->databaseExecutorModule:Lorg/briarproject/bramble/db/DatabaseExecutorModule;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/socks/SocksModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->socksModule:Lorg/briarproject/bramble/socks/SocksModule;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/plugin/PluginModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->pluginModule:Lorg/briarproject/bramble/plugin/PluginModule;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/network/AndroidNetworkModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidNetworkModule:Lorg/briarproject/bramble/network/AndroidNetworkModule;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/plugin/tor/CircumventionModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->circumventionModule:Lorg/briarproject/bramble/plugin/tor/CircumventionModule;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/battery/AndroidBatteryModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidBatteryModule:Lorg/briarproject/bramble/battery/AndroidBatteryModule;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/transport/TransportModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->transportModule:Lorg/briarproject/bramble/transport/TransportModule;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/contact/ContactModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->contactModule:Lorg/briarproject/bramble/contact/ContactModule;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoExecutorModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->cryptoExecutorModule:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/record/RecordModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->recordModule:Lorg/briarproject/bramble/record/RecordModule;

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/system/AndroidSystemModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidSystemModule:Lorg/briarproject/bramble/system/AndroidSystemModule;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/settings/SettingsModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->settingsModule:Lorg/briarproject/bramble/settings/SettingsModule;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/data/DataModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/client/ClientModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->clientModule:Lorg/briarproject/bramble/client/ClientModule;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/versioning/VersioningModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->versioningModule:Lorg/briarproject/bramble/versioning/VersioningModule;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/properties/PropertiesModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->propertiesModule:Lorg/briarproject/bramble/properties/PropertiesModule;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/reporting/ReportingModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->reportingModule:Lorg/briarproject/bramble/reporting/ReportingModule;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/blog/BlogModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->blogModule:Lorg/briarproject/briar/blog/BlogModule;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/feed/FeedModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->feedModule:Lorg/briarproject/briar/feed/FeedModule;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/feed/DnsModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->dnsModule:Lorg/briarproject/briar/feed/DnsModule;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/forum/ForumModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->forumModule:Lorg/briarproject/briar/forum/ForumModule;

    return-object p0
.end method

.method static synthetic access$300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/system/SystemModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->systemModule:Lorg/briarproject/bramble/system/SystemModule;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/client/BriarClientModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->briarClientModule:Lorg/briarproject/briar/client/BriarClientModule;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/PrivateGroupModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->privateGroupModule:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->groupInvitationModule:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/messaging/MessagingModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->messagingModule:Lorg/briarproject/briar/messaging/MessagingModule;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/introduction/IntroductionModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->introductionModule:Lorg/briarproject/briar/introduction/IntroductionModule;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->sharingModule:Lorg/briarproject/briar/sharing/SharingModule;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->keyAgreementModule:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/test/TestModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->testModule:Lorg/briarproject/briar/test/TestModule;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/account/BriarAccountModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->briarAccountModule:Lorg/briarproject/bramble/account/BriarAccountModule;

    return-object p0
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/sync/SyncModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->syncModule:Lorg/briarproject/bramble/sync/SyncModule;

    return-object p0
.end method

.method static synthetic access$600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/db/DatabaseModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->databaseModule:Lorg/briarproject/bramble/db/DatabaseModule;

    return-object p0
.end method

.method static synthetic access$700(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/event/EventModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->eventModule:Lorg/briarproject/bramble/event/EventModule;

    return-object p0
.end method

.method static synthetic access$800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/lifecycle/LifecycleModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->lifecycleModule:Lorg/briarproject/bramble/lifecycle/LifecycleModule;

    return-object p0
.end method

.method static synthetic access$900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/identity/IdentityModule;
    .locals 0

    .line 2514
    iget-object p0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->identityModule:Lorg/briarproject/bramble/identity/IdentityModule;

    return-object p0
.end method


# virtual methods
.method public androidBatteryModule(Lorg/briarproject/bramble/battery/AndroidBatteryModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2912
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/battery/AndroidBatteryModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidBatteryModule:Lorg/briarproject/bramble/battery/AndroidBatteryModule;

    return-object p0
.end method

.method public androidNetworkModule(Lorg/briarproject/bramble/network/AndroidNetworkModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2917
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/network/AndroidNetworkModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidNetworkModule:Lorg/briarproject/bramble/network/AndroidNetworkModule;

    return-object p0
.end method

.method public androidSystemModule(Lorg/briarproject/bramble/system/AndroidSystemModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2922
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/system/AndroidSystemModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidSystemModule:Lorg/briarproject/bramble/system/AndroidSystemModule;

    return-object p0
.end method

.method public appModule(Lorg/briarproject/briar/android/AppModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2937
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/AppModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->appModule:Lorg/briarproject/briar/android/AppModule;

    return-object p0
.end method

.method public blogModule(Lorg/briarproject/briar/blog/BlogModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2847
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/blog/BlogModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->blogModule:Lorg/briarproject/briar/blog/BlogModule;

    return-object p0
.end method

.method public brambleAndroidModule(Lorg/briarproject/bramble/BrambleAndroidModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2907
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public brambleCoreModule(Lorg/briarproject/bramble/BrambleCoreModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2717
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public briarAccountModule(Lorg/briarproject/bramble/account/BriarAccountModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2932
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/account/BriarAccountModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->briarAccountModule:Lorg/briarproject/bramble/account/BriarAccountModule;

    return-object p0
.end method

.method public briarClientModule(Lorg/briarproject/briar/client/BriarClientModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2852
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/client/BriarClientModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->briarClientModule:Lorg/briarproject/briar/client/BriarClientModule;

    return-object p0
.end method

.method public briarCoreModule(Lorg/briarproject/briar/BriarCoreModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2842
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lorg/briarproject/briar/android/AndroidComponent;
    .locals 3

    .line 2594
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->contactModule:Lorg/briarproject/bramble/contact/ContactModule;

    if-nez v0, :cond_0

    .line 2595
    new-instance v0, Lorg/briarproject/bramble/contact/ContactModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/contact/ContactModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->contactModule:Lorg/briarproject/bramble/contact/ContactModule;

    .line 2597
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->databaseModule:Lorg/briarproject/bramble/db/DatabaseModule;

    if-nez v0, :cond_1

    .line 2598
    new-instance v0, Lorg/briarproject/bramble/db/DatabaseModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DatabaseModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->databaseModule:Lorg/briarproject/bramble/db/DatabaseModule;

    .line 2600
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->appModule:Lorg/briarproject/briar/android/AppModule;

    if-eqz v0, :cond_25

    .line 2603
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->syncModule:Lorg/briarproject/bramble/sync/SyncModule;

    if-nez v0, :cond_2

    .line 2604
    new-instance v0, Lorg/briarproject/bramble/sync/SyncModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/sync/SyncModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->syncModule:Lorg/briarproject/bramble/sync/SyncModule;

    .line 2606
    :cond_2
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

    if-nez v0, :cond_3

    .line 2607
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/crypto/CryptoModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

    .line 2609
    :cond_3
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidSystemModule:Lorg/briarproject/bramble/system/AndroidSystemModule;

    if-nez v0, :cond_4

    .line 2610
    new-instance v0, Lorg/briarproject/bramble/system/AndroidSystemModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/system/AndroidSystemModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidSystemModule:Lorg/briarproject/bramble/system/AndroidSystemModule;

    .line 2612
    :cond_4
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->systemModule:Lorg/briarproject/bramble/system/SystemModule;

    if-nez v0, :cond_5

    .line 2613
    new-instance v0, Lorg/briarproject/bramble/system/SystemModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/system/SystemModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->systemModule:Lorg/briarproject/bramble/system/SystemModule;

    .line 2615
    :cond_5
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->eventModule:Lorg/briarproject/bramble/event/EventModule;

    if-nez v0, :cond_6

    .line 2616
    new-instance v0, Lorg/briarproject/bramble/event/EventModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/event/EventModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->eventModule:Lorg/briarproject/bramble/event/EventModule;

    .line 2618
    :cond_6
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->lifecycleModule:Lorg/briarproject/bramble/lifecycle/LifecycleModule;

    if-nez v0, :cond_7

    .line 2619
    new-instance v0, Lorg/briarproject/bramble/lifecycle/LifecycleModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/lifecycle/LifecycleModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->lifecycleModule:Lorg/briarproject/bramble/lifecycle/LifecycleModule;

    .line 2621
    :cond_7
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->transportModule:Lorg/briarproject/bramble/transport/TransportModule;

    if-nez v0, :cond_8

    .line 2622
    new-instance v0, Lorg/briarproject/bramble/transport/TransportModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/transport/TransportModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->transportModule:Lorg/briarproject/bramble/transport/TransportModule;

    .line 2624
    :cond_8
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->identityModule:Lorg/briarproject/bramble/identity/IdentityModule;

    if-nez v0, :cond_9

    .line 2625
    new-instance v0, Lorg/briarproject/bramble/identity/IdentityModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/identity/IdentityModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->identityModule:Lorg/briarproject/bramble/identity/IdentityModule;

    .line 2627
    :cond_9
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->databaseExecutorModule:Lorg/briarproject/bramble/db/DatabaseExecutorModule;

    if-nez v0, :cond_a

    .line 2628
    new-instance v0, Lorg/briarproject/bramble/db/DatabaseExecutorModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/db/DatabaseExecutorModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->databaseExecutorModule:Lorg/briarproject/bramble/db/DatabaseExecutorModule;

    .line 2630
    :cond_a
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->socksModule:Lorg/briarproject/bramble/socks/SocksModule;

    if-nez v0, :cond_b

    .line 2631
    new-instance v0, Lorg/briarproject/bramble/socks/SocksModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/socks/SocksModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->socksModule:Lorg/briarproject/bramble/socks/SocksModule;

    .line 2633
    :cond_b
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->pluginModule:Lorg/briarproject/bramble/plugin/PluginModule;

    if-nez v0, :cond_c

    .line 2634
    new-instance v0, Lorg/briarproject/bramble/plugin/PluginModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/plugin/PluginModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->pluginModule:Lorg/briarproject/bramble/plugin/PluginModule;

    .line 2636
    :cond_c
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidNetworkModule:Lorg/briarproject/bramble/network/AndroidNetworkModule;

    if-nez v0, :cond_d

    .line 2637
    new-instance v0, Lorg/briarproject/bramble/network/AndroidNetworkModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/network/AndroidNetworkModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidNetworkModule:Lorg/briarproject/bramble/network/AndroidNetworkModule;

    .line 2639
    :cond_d
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->circumventionModule:Lorg/briarproject/bramble/plugin/tor/CircumventionModule;

    if-nez v0, :cond_e

    .line 2640
    new-instance v0, Lorg/briarproject/bramble/plugin/tor/CircumventionModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/plugin/tor/CircumventionModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->circumventionModule:Lorg/briarproject/bramble/plugin/tor/CircumventionModule;

    .line 2642
    :cond_e
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidBatteryModule:Lorg/briarproject/bramble/battery/AndroidBatteryModule;

    if-nez v0, :cond_f

    .line 2643
    new-instance v0, Lorg/briarproject/bramble/battery/AndroidBatteryModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/battery/AndroidBatteryModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->androidBatteryModule:Lorg/briarproject/bramble/battery/AndroidBatteryModule;

    .line 2645
    :cond_f
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->cryptoExecutorModule:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    if-nez v0, :cond_10

    .line 2646
    new-instance v0, Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->cryptoExecutorModule:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    .line 2648
    :cond_10
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->recordModule:Lorg/briarproject/bramble/record/RecordModule;

    if-nez v0, :cond_11

    .line 2649
    new-instance v0, Lorg/briarproject/bramble/record/RecordModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/record/RecordModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->recordModule:Lorg/briarproject/bramble/record/RecordModule;

    .line 2651
    :cond_11
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->settingsModule:Lorg/briarproject/bramble/settings/SettingsModule;

    if-nez v0, :cond_12

    .line 2652
    new-instance v0, Lorg/briarproject/bramble/settings/SettingsModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/settings/SettingsModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->settingsModule:Lorg/briarproject/bramble/settings/SettingsModule;

    .line 2654
    :cond_12
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->propertiesModule:Lorg/briarproject/bramble/properties/PropertiesModule;

    if-nez v0, :cond_13

    .line 2655
    new-instance v0, Lorg/briarproject/bramble/properties/PropertiesModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/properties/PropertiesModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->propertiesModule:Lorg/briarproject/bramble/properties/PropertiesModule;

    .line 2657
    :cond_13
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->versioningModule:Lorg/briarproject/bramble/versioning/VersioningModule;

    if-nez v0, :cond_14

    .line 2658
    new-instance v0, Lorg/briarproject/bramble/versioning/VersioningModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/versioning/VersioningModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->versioningModule:Lorg/briarproject/bramble/versioning/VersioningModule;

    .line 2660
    :cond_14
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->clientModule:Lorg/briarproject/bramble/client/ClientModule;

    if-nez v0, :cond_15

    .line 2661
    new-instance v0, Lorg/briarproject/bramble/client/ClientModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/client/ClientModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->clientModule:Lorg/briarproject/bramble/client/ClientModule;

    .line 2663
    :cond_15
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    if-nez v0, :cond_16

    .line 2664
    new-instance v0, Lorg/briarproject/bramble/data/DataModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/data/DataModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    .line 2666
    :cond_16
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->reportingModule:Lorg/briarproject/bramble/reporting/ReportingModule;

    if-nez v0, :cond_17

    .line 2667
    new-instance v0, Lorg/briarproject/bramble/reporting/ReportingModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/reporting/ReportingModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->reportingModule:Lorg/briarproject/bramble/reporting/ReportingModule;

    .line 2669
    :cond_17
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->blogModule:Lorg/briarproject/briar/blog/BlogModule;

    if-nez v0, :cond_18

    .line 2670
    new-instance v0, Lorg/briarproject/briar/blog/BlogModule;

    invoke-direct {v0}, Lorg/briarproject/briar/blog/BlogModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->blogModule:Lorg/briarproject/briar/blog/BlogModule;

    .line 2672
    :cond_18
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->feedModule:Lorg/briarproject/briar/feed/FeedModule;

    if-nez v0, :cond_19

    .line 2673
    new-instance v0, Lorg/briarproject/briar/feed/FeedModule;

    invoke-direct {v0}, Lorg/briarproject/briar/feed/FeedModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->feedModule:Lorg/briarproject/briar/feed/FeedModule;

    .line 2675
    :cond_19
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->dnsModule:Lorg/briarproject/briar/feed/DnsModule;

    if-nez v0, :cond_1a

    .line 2676
    new-instance v0, Lorg/briarproject/briar/feed/DnsModule;

    invoke-direct {v0}, Lorg/briarproject/briar/feed/DnsModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->dnsModule:Lorg/briarproject/briar/feed/DnsModule;

    .line 2678
    :cond_1a
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->forumModule:Lorg/briarproject/briar/forum/ForumModule;

    if-nez v0, :cond_1b

    .line 2679
    new-instance v0, Lorg/briarproject/briar/forum/ForumModule;

    invoke-direct {v0}, Lorg/briarproject/briar/forum/ForumModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->forumModule:Lorg/briarproject/briar/forum/ForumModule;

    .line 2681
    :cond_1b
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->briarClientModule:Lorg/briarproject/briar/client/BriarClientModule;

    if-nez v0, :cond_1c

    .line 2682
    new-instance v0, Lorg/briarproject/briar/client/BriarClientModule;

    invoke-direct {v0}, Lorg/briarproject/briar/client/BriarClientModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->briarClientModule:Lorg/briarproject/briar/client/BriarClientModule;

    .line 2684
    :cond_1c
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->groupInvitationModule:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    if-nez v0, :cond_1d

    .line 2685
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    invoke-direct {v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->groupInvitationModule:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    .line 2687
    :cond_1d
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->privateGroupModule:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    if-nez v0, :cond_1e

    .line 2688
    new-instance v0, Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    invoke-direct {v0}, Lorg/briarproject/briar/privategroup/PrivateGroupModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->privateGroupModule:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    .line 2690
    :cond_1e
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->messagingModule:Lorg/briarproject/briar/messaging/MessagingModule;

    if-nez v0, :cond_1f

    .line 2691
    new-instance v0, Lorg/briarproject/briar/messaging/MessagingModule;

    invoke-direct {v0}, Lorg/briarproject/briar/messaging/MessagingModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->messagingModule:Lorg/briarproject/briar/messaging/MessagingModule;

    .line 2693
    :cond_1f
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->introductionModule:Lorg/briarproject/briar/introduction/IntroductionModule;

    if-nez v0, :cond_20

    .line 2694
    new-instance v0, Lorg/briarproject/briar/introduction/IntroductionModule;

    invoke-direct {v0}, Lorg/briarproject/briar/introduction/IntroductionModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->introductionModule:Lorg/briarproject/briar/introduction/IntroductionModule;

    .line 2696
    :cond_20
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->sharingModule:Lorg/briarproject/briar/sharing/SharingModule;

    if-nez v0, :cond_21

    .line 2697
    new-instance v0, Lorg/briarproject/briar/sharing/SharingModule;

    invoke-direct {v0}, Lorg/briarproject/briar/sharing/SharingModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->sharingModule:Lorg/briarproject/briar/sharing/SharingModule;

    .line 2699
    :cond_21
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->keyAgreementModule:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    if-nez v0, :cond_22

    .line 2700
    new-instance v0, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->keyAgreementModule:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    .line 2702
    :cond_22
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->testModule:Lorg/briarproject/briar/test/TestModule;

    if-nez v0, :cond_23

    .line 2703
    new-instance v0, Lorg/briarproject/briar/test/TestModule;

    invoke-direct {v0}, Lorg/briarproject/briar/test/TestModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->testModule:Lorg/briarproject/briar/test/TestModule;

    .line 2705
    :cond_23
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->briarAccountModule:Lorg/briarproject/bramble/account/BriarAccountModule;

    if-nez v0, :cond_24

    .line 2706
    new-instance v0, Lorg/briarproject/bramble/account/BriarAccountModule;

    invoke-direct {v0}, Lorg/briarproject/bramble/account/BriarAccountModule;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->briarAccountModule:Lorg/briarproject/bramble/account/BriarAccountModule;

    .line 2708
    :cond_24
    new-instance v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;-><init>(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;Lorg/briarproject/briar/android/DaggerAndroidComponent$1;)V

    return-object v0

    .line 2601
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/briarproject/briar/android/AppModule;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public circumventionModule(Lorg/briarproject/bramble/plugin/tor/CircumventionModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2927
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/plugin/tor/CircumventionModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->circumventionModule:Lorg/briarproject/bramble/plugin/tor/CircumventionModule;

    return-object p0
.end method

.method public clientModule(Lorg/briarproject/bramble/client/ClientModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2722
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/client/ClientModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->clientModule:Lorg/briarproject/bramble/client/ClientModule;

    return-object p0
.end method

.method public contactModule(Lorg/briarproject/bramble/contact/ContactModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2727
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/contact/ContactModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->contactModule:Lorg/briarproject/bramble/contact/ContactModule;

    return-object p0
.end method

.method public cryptoExecutorModule(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2737
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->cryptoExecutorModule:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    return-object p0
.end method

.method public cryptoModule(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2732
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/crypto/CryptoModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

    return-object p0
.end method

.method public dataModule(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2742
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/data/DataModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    return-object p0
.end method

.method public databaseExecutorModule(Lorg/briarproject/bramble/db/DatabaseExecutorModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2752
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/db/DatabaseExecutorModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->databaseExecutorModule:Lorg/briarproject/bramble/db/DatabaseExecutorModule;

    return-object p0
.end method

.method public databaseModule(Lorg/briarproject/bramble/db/DatabaseModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2747
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/db/DatabaseModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->databaseModule:Lorg/briarproject/bramble/db/DatabaseModule;

    return-object p0
.end method

.method public dnsModule(Lorg/briarproject/briar/feed/DnsModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2862
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/feed/DnsModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->dnsModule:Lorg/briarproject/briar/feed/DnsModule;

    return-object p0
.end method

.method public eventModule(Lorg/briarproject/bramble/event/EventModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2757
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/event/EventModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->eventModule:Lorg/briarproject/bramble/event/EventModule;

    return-object p0
.end method

.method public feedModule(Lorg/briarproject/briar/feed/FeedModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2857
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/feed/FeedModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->feedModule:Lorg/briarproject/briar/feed/FeedModule;

    return-object p0
.end method

.method public forumModule(Lorg/briarproject/briar/forum/ForumModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2867
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/forum/ForumModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->forumModule:Lorg/briarproject/briar/forum/ForumModule;

    return-object p0
.end method

.method public groupInvitationModule(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2872
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->groupInvitationModule:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    return-object p0
.end method

.method public identityModule(Lorg/briarproject/bramble/identity/IdentityModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2762
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/identity/IdentityModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->identityModule:Lorg/briarproject/bramble/identity/IdentityModule;

    return-object p0
.end method

.method public introductionModule(Lorg/briarproject/briar/introduction/IntroductionModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2877
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/introduction/IntroductionModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->introductionModule:Lorg/briarproject/briar/introduction/IntroductionModule;

    return-object p0
.end method

.method public keyAgreementModule(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2767
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->keyAgreementModule:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    return-object p0
.end method

.method public lifecycleModule(Lorg/briarproject/bramble/lifecycle/LifecycleModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2772
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/lifecycle/LifecycleModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->lifecycleModule:Lorg/briarproject/bramble/lifecycle/LifecycleModule;

    return-object p0
.end method

.method public messagingModule(Lorg/briarproject/briar/messaging/MessagingModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2882
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/messaging/MessagingModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->messagingModule:Lorg/briarproject/briar/messaging/MessagingModule;

    return-object p0
.end method

.method public pluginModule(Lorg/briarproject/bramble/plugin/PluginModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2777
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/plugin/PluginModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->pluginModule:Lorg/briarproject/bramble/plugin/PluginModule;

    return-object p0
.end method

.method public privateGroupModule(Lorg/briarproject/briar/privategroup/PrivateGroupModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2887
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->privateGroupModule:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    return-object p0
.end method

.method public propertiesModule(Lorg/briarproject/bramble/properties/PropertiesModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2782
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/properties/PropertiesModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->propertiesModule:Lorg/briarproject/bramble/properties/PropertiesModule;

    return-object p0
.end method

.method public recordModule(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2787
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/record/RecordModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->recordModule:Lorg/briarproject/bramble/record/RecordModule;

    return-object p0
.end method

.method public reliabilityModule(Lorg/briarproject/bramble/reliability/ReliabilityModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2797
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public reportingModule(Lorg/briarproject/bramble/reporting/ReportingModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2802
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/reporting/ReportingModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->reportingModule:Lorg/briarproject/bramble/reporting/ReportingModule;

    return-object p0
.end method

.method public settingsModule(Lorg/briarproject/bramble/settings/SettingsModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2807
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/settings/SettingsModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->settingsModule:Lorg/briarproject/bramble/settings/SettingsModule;

    return-object p0
.end method

.method public sharingModule(Lorg/briarproject/briar/sharing/SharingModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2892
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/sharing/SharingModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->sharingModule:Lorg/briarproject/briar/sharing/SharingModule;

    return-object p0
.end method

.method public socksModule(Lorg/briarproject/bramble/socks/SocksModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2812
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/socks/SocksModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->socksModule:Lorg/briarproject/bramble/socks/SocksModule;

    return-object p0
.end method

.method public syncModule(Lorg/briarproject/bramble/sync/SyncModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2817
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/sync/SyncModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->syncModule:Lorg/briarproject/bramble/sync/SyncModule;

    return-object p0
.end method

.method public systemModule(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2822
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/system/SystemModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->systemModule:Lorg/briarproject/bramble/system/SystemModule;

    return-object p0
.end method

.method public testModule(Lorg/briarproject/briar/test/TestModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2897
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/test/TestModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->testModule:Lorg/briarproject/briar/test/TestModule;

    return-object p0
.end method

.method public transportModule(Lorg/briarproject/bramble/transport/TransportModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2827
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/transport/TransportModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->transportModule:Lorg/briarproject/bramble/transport/TransportModule;

    return-object p0
.end method

.method public versioningModule(Lorg/briarproject/bramble/versioning/VersioningModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 0

    .line 2832
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/versioning/VersioningModule;

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->versioningModule:Lorg/briarproject/bramble/versioning/VersioningModule;

    return-object p0
.end method
