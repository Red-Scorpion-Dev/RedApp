.class public final Lorg/briarproject/briar/android/DaggerAndroidComponent;
.super Ljava/lang/Object;
.source "DaggerAndroidComponent.java"

# interfaces
.implements Lorg/briarproject/briar/android/AndroidComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    }
.end annotation


# instance fields
.field private androidBatteryManagerProvider:Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;

.field private androidExecutorImplProvider:Lorg/briarproject/bramble/system/AndroidExecutorImpl_Factory;

.field private androidLocationUtilsProvider:Lorg/briarproject/bramble/system/AndroidLocationUtils_Factory;

.field private androidNetworkManagerProvider:Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;

.field private androidNotificationManagerImplProvider:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;

.field private androidResourceProvider:Lorg/briarproject/bramble/system/AndroidResourceProvider_Factory;

.field private androidSecureRandomProvider:Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;

.field private androidSystemModule:Lorg/briarproject/bramble/system/AndroidSystemModule;

.field private appModule:Lorg/briarproject/briar/android/AppModule;

.field private authorFactoryImplProvider:Lorg/briarproject/bramble/identity/AuthorFactoryImpl_Factory;

.field private blogFactoryImplProvider:Lorg/briarproject/briar/blog/BlogFactoryImpl_Factory;

.field private blogManagerImplProvider:Lorg/briarproject/briar/blog/BlogManagerImpl_Factory;

.field private blogMessageParserImplProvider:Lorg/briarproject/briar/sharing/BlogMessageParserImpl_Factory;

.field private blogModule:Lorg/briarproject/briar/blog/BlogModule;

.field private blogPostFactoryImplProvider:Lorg/briarproject/briar/blog/BlogPostFactoryImpl_Factory;

.field private blogProtocolEngineImplProvider:Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;

.field private blogSharingManagerImplProvider:Lorg/briarproject/briar/sharing/BlogSharingManagerImpl_Factory;

.field private briarAccountManagerProvider:Lorg/briarproject/bramble/account/BriarAccountManager_Factory;

.field private briarClientModule:Lorg/briarproject/briar/client/BriarClientModule;

.field private clientHelperImplProvider:Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;

.field private clientModule:Lorg/briarproject/bramble/client/ClientModule;

.field private clientVersioningManagerImplProvider:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl_Factory;

.field private connectionManagerImplProvider:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;

.field private connectionRegistryImplProvider:Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl_Factory;

.field private contactGroupFactoryImplProvider:Lorg/briarproject/bramble/client/ContactGroupFactoryImpl_Factory;

.field private contactManagerImplProvider:Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;

.field private contactModule:Lorg/briarproject/bramble/contact/ContactModule;

.field private conversationManagerImplProvider:Lorg/briarproject/briar/messaging/ConversationManagerImpl_Factory;

.field private conversationViewModelProvider:Lorg/briarproject/briar/android/conversation/ConversationViewModel_Factory;

.field private cryptoExecutorModule:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

.field private cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

.field private dataModule:Lorg/briarproject/bramble/data/DataModule;

.field private devReporterImplProvider:Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;

.field private feedFactoryImplProvider:Lorg/briarproject/briar/feed/FeedFactoryImpl_Factory;

.field private feedManagerImplProvider:Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;

.field private forumFactoryImplProvider:Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;

.field private forumManagerImplProvider:Lorg/briarproject/briar/forum/ForumManagerImpl_Factory;

.field private forumMessageParserImplProvider:Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;

.field private forumPostFactoryImplProvider:Lorg/briarproject/briar/forum/ForumPostFactoryImpl_Factory;

.field private forumProtocolEngineImplProvider:Lorg/briarproject/briar/sharing/ForumProtocolEngineImpl_Factory;

.field private forumSharingManagerImplProvider:Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;

.field private getContactManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;"
        }
    .end annotation
.end field

.field private getConversationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;"
        }
    .end annotation
.end field

.field private getMessagingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/MessagingManager;",
            ">;"
        }
    .end annotation
.end field

.field private getSecureRandomProvider:Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;

.field private getTestDataCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/test/TestDataCreator;",
            ">;"
        }
    .end annotation
.end field

.field private getTransportPropertyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;"
        }
    .end annotation
.end field

.field private getValidatorProvider:Ljavax/inject/Provider;

.field private getValidatorProvider2:Ljavax/inject/Provider;

.field private groupInvitationFactoryImplProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl_Factory;

.field private groupInvitationManagerImplProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl_Factory;

.field private groupInvitationModule:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

.field private groupMessageFactoryImplProvider:Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl_Factory;

.field private identityManagerImplProvider:Lorg/briarproject/bramble/identity/IdentityManagerImpl_Factory;

.field private identityModule:Lorg/briarproject/bramble/identity/IdentityModule;

.field private introduceeProtocolEngineProvider:Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;

.field private introducerProtocolEngineProvider:Lorg/briarproject/briar/introduction/IntroducerProtocolEngine_Factory;

.field private introductionCryptoImplProvider:Lorg/briarproject/briar/introduction/IntroductionCryptoImpl_Factory;

.field private introductionManagerImplProvider:Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;

.field private keyAgreementModule:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

.field private keyManagerImplProvider:Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;

.field private lifecycleManagerImplProvider:Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl_Factory;

.field private lockManagerImplProvider:Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;

.field private mapOfClassOfAndProviderOfViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/arch/lifecycle/ViewModel;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private messageEncoderImplProvider:Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl_Factory;

.field private messageEncoderImplProvider2:Lorg/briarproject/briar/introduction/MessageEncoderImpl_Factory;

.field private messageEncoderImplProvider3:Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;

.field private messageParserImplProvider:Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;

.field private messageParserImplProvider2:Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;

.field private messageTrackerImplProvider:Lorg/briarproject/briar/client/MessageTrackerImpl_Factory;

.field private messagingManagerImplProvider:Lorg/briarproject/briar/messaging/MessagingManagerImpl_Factory;

.field private messagingModule:Lorg/briarproject/briar/messaging/MessagingModule;

.field private pluginManagerImplProvider:Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;

.field private privateGroupFactoryImplProvider:Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl_Factory;

.field private privateGroupManagerImplProvider:Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl_Factory;

.field private privateGroupModule:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

.field private privateMessageFactoryImplProvider:Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;

.field private protocolEngineFactoryImplProvider:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;

.field private provideAccountManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/account/AccountManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAndroidExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/AndroidExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private provideAndroidNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAuthenticatedCipherProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;

.field private provideAuthorFactoryProvider:Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;

.field private provideBackoffFactoryProvider:Lorg/briarproject/bramble/plugin/PluginModule_ProvideBackoffFactoryFactory;

.field private provideBatteryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/battery/BatteryManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideBdfReaderFactoryProvider:Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;

.field private provideBdfWriterFactoryProvider:Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;

.field private provideBlogFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogFactoryFactory;

.field private provideBlogInvitationFactoryProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;

.field private provideBlogManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideBlogMessageParserProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;

.field private provideBlogPostFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;

.field private provideBlogPostValidatorProvider:Ljavax/inject/Provider;

.field private provideBlogProtocolEngineProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogProtocolEngineFactory;

.field private provideBlogSharingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideBlogSharingValidatorProvider:Ljavax/inject/Provider;

.field private provideCircumventionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

.field private provideClientVersioningManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideClientVersioningValidatorProvider:Ljavax/inject/Provider;

.field private provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

.field private provideConnectionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectionRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

.field private provideCryptoComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;"
        }
    .end annotation
.end field

.field private provideCryptoExecutorProvider:Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;

.field private provideCryptoExecutorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideDatabaseComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;"
        }
    .end annotation
.end field

.field private provideDatabaseConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseConfig;",
            ">;"
        }
    .end annotation
.end field

.field private provideDatabaseExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideDatabaseExecutorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideDatabaseProvider:Ljavax/inject/Provider;

.field private provideDevConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/reporting/DevConfig;",
            ">;"
        }
    .end annotation
.end field

.field private provideDevReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/reporting/DevReporter;",
            ">;"
        }
    .end annotation
.end field

.field private provideDnsProvider:Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;

.field private provideDozeWatchdogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/DozeWatchdog;",
            ">;"
        }
    .end annotation
.end field

.field private provideEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private provideFeedFactoryProvider:Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;

.field private provideFeedManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/feed/FeedManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideForumFactoryProvider:Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;

.field private provideForumInvitationFactoryProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideForumInvitationFactoryFactory;

.field private provideForumManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideForumMessageParserProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;

.field private provideForumPostFactoryProvider:Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostFactoryFactory;

.field private provideForumPostValidatorProvider:Ljavax/inject/Provider;

.field private provideForumProtocolEngineProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideForumProtocolEngineFactory;

.field private provideForumSharingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideForumSharingValidatorProvider:Ljavax/inject/Provider;

.field private provideGroupFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideGroupFactoryFactory;

.field private provideGroupInvitationFactoryProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;

.field private provideGroupInvitationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideGroupInvitationValidatorProvider:Ljavax/inject/Provider;

.field private provideGroupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideGroupMessageFactoryProvider:Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageFactoryFactory;

.field private provideGroupMessageValidatorProvider:Ljavax/inject/Provider;

.field private provideIdentityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIntroductionCryptoProvider:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionCryptoFactory;

.field private provideIntroductionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/introduction/IntroductionManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIoExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLifecycleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocationUtilsProvider:Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideLocationUtilsFactory;

.field private provideLockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideMessageEncoderProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageEncoderFactory;

.field private provideMessageEncoderProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;

.field private provideMessageEncoderProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideMessageEncoderFactory;

.field private provideMessageFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;

.field private provideMessageParserProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageParserFactory;

.field private provideMessageParserProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageParserFactory;

.field private provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

.field private provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

.field private provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

.field private provideNetworkManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/network/NetworkManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePluginConfigProvider:Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;

.field private providePluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePrivateGroupFactoryProvider:Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;

.field private providePrivateMessageFactoryProvider:Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;

.field private provideProtocolEngineFactoryProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;

.field private provideRecentEmojiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/vanniktech/emoji/RecentEmoji;",
            ">;"
        }
    .end annotation
.end field

.field private provideRecordReaderFactoryProvider:Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;

.field private provideRecordReaderFactoryProvider2:Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordReaderFactoryFactory;

.field private provideRecordWriterFactoryProvider:Lorg/briarproject/bramble/record/RecordModule_ProvideRecordWriterFactoryFactory;

.field private provideRecordWriterFactoryProvider2:Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;

.field private provideResourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/ResourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideScheduledExecutorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideScreenFilterMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private provideSecureRandomProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/SecureRandomProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideSessionEncoderProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionEncoderFactory;

.field private provideSessionEncoderProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;

.field private provideSessionEncoderProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;

.field private provideSessionParserProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;

.field private provideSessionParserProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionParserFactory;

.field private provideSessionParserProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;

.field private provideSettingsManagerProvider:Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;

.field private provideSharedPreferencesProvider:Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;

.field private provideShutdownManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/lifecycle/ShutdownManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideStreamDecrypterFactoryProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;

.field private provideStreamEncrypterFactoryProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;

.field private provideStreamReaderFactoryProvider:Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamReaderFactoryFactory;

.field private provideStreamWriterFactoryProvider:Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;

.field private provideSyncSessionFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/SyncSessionFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideTorSocketFactoryProvider:Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;

.field private provideTransportCryptoProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;

.field private provideTransportKeyManagerFactoryProvider:Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;

.field private provideValidationExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideValidationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/ValidationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideValidatorProvider:Ljavax/inject/Provider;

.field private providesApplicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private recentEmojiImplProvider:Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;

.field private recordModule:Lorg/briarproject/bramble/record/RecordModule;

.field private screenFilterMonitorImplProvider:Lorg/briarproject/briar/android/ScreenFilterMonitorImpl_Factory;

.field private scryptKdfProvider:Lorg/briarproject/bramble/crypto/ScryptKdf_Factory;

.field private sessionEncoderImplProvider:Lorg/briarproject/briar/introduction/SessionEncoderImpl_Factory;

.field private sessionParserImplProvider:Lorg/briarproject/briar/introduction/SessionParserImpl_Factory;

.field private settingsModule:Lorg/briarproject/bramble/settings/SettingsModule;

.field private syncModule:Lorg/briarproject/bramble/sync/SyncModule;

.field private syncRecordReaderFactoryImplProvider:Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;

.field private syncRecordWriterFactoryImplProvider:Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl_Factory;

.field private systemModule:Lorg/briarproject/bramble/system/SystemModule;

.field private testDataCreatorImplProvider:Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;

.field private transportCryptoImplProvider:Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;

.field private transportKeyManagerFactoryImplProvider:Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl_Factory;

.field private transportModule:Lorg/briarproject/bramble/transport/TransportModule;

.field private transportPropertyManagerImplProvider:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl_Factory;

.field private validationManagerImplProvider:Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;

.field private viewModelFactoryProvider:Ljavax/inject/Provider;


# direct methods
.method private constructor <init>(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)V
    .locals 0

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->initialize(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)V

    .line 774
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->initialize2(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)V

    .line 775
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->initialize3(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;Lorg/briarproject/briar/android/DaggerAndroidComponent$1;)V
    .locals 0

    .line 342
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;-><init>(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)V

    return-void
.end method

.method public static builder()Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;
    .locals 2

    .line 779
    new-instance v0, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;-><init>(Lorg/briarproject/briar/android/DaggerAndroidComponent$1;)V

    return-object v0
.end method

.method private getAndroidLocationUtils()Ljava/lang/Object;
    .locals 1

    .line 960
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lorg/briarproject/bramble/system/AndroidLocationUtils_Factory;->newAndroidLocationUtils(Landroid/app/Application;)Lorg/briarproject/bramble/system/AndroidLocationUtils;

    move-result-object v0

    return-object v0
.end method

.method private getAuthorFactory()Lorg/briarproject/bramble/api/identity/AuthorFactory;
    .locals 2

    .line 806
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->identityModule:Lorg/briarproject/bramble/identity/IdentityModule;

    .line 807
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getAuthorFactoryImpl()Ljava/lang/Object;

    move-result-object v1

    .line 806
    invoke-static {v0, v1}, Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;->proxyProvideAuthorFactory(Lorg/briarproject/bramble/identity/IdentityModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/identity/AuthorFactory;

    move-result-object v0

    return-object v0
.end method

.method private getAuthorFactoryImpl()Ljava/lang/Object;
    .locals 2

    .line 800
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 801
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->systemModule:Lorg/briarproject/bramble/system/SystemModule;

    .line 802
    invoke-static {v1}, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;->proxyProvideClock(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/bramble/api/system/Clock;

    move-result-object v1

    .line 800
    invoke-static {v0, v1}, Lorg/briarproject/bramble/identity/AuthorFactoryImpl_Factory;->newAuthorFactoryImpl(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/identity/AuthorFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method private getBlogPostFactoryImpl()Ljava/lang/Object;
    .locals 2

    .line 872
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getClientHelper()Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->systemModule:Lorg/briarproject/bramble/system/SystemModule;

    invoke-static {v1}, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;->proxyProvideClock(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/bramble/api/system/Clock;

    move-result-object v1

    .line 871
    invoke-static {v0, v1}, Lorg/briarproject/briar/blog/BlogPostFactoryImpl_Factory;->newBlogPostFactoryImpl(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/blog/BlogPostFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method private getClientHelper()Lorg/briarproject/bramble/api/client/ClientHelper;
    .locals 2

    .line 823
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->clientModule:Lorg/briarproject/bramble/client/ClientModule;

    .line 824
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getClientHelperImpl()Ljava/lang/Object;

    move-result-object v1

    .line 823
    invoke-static {v0, v1}, Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;->proxyProvideClientHelper(Lorg/briarproject/bramble/client/ClientModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object v0

    return-object v0
.end method

.method private getClientHelperImpl()Ljava/lang/Object;
    .locals 9

    .line 811
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    .line 812
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 813
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getMessageFactory()Lorg/briarproject/bramble/api/sync/MessageFactory;

    move-result-object v2

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    .line 814
    invoke-static {v0}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;->proxyProvideBdfReaderFactory(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    move-result-object v3

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    .line 815
    invoke-static {v0}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;->proxyProvideBdfWriterFactory(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    move-result-object v4

    .line 816
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getMetadataParser()Lorg/briarproject/bramble/api/data/MetadataParser;

    move-result-object v5

    .line 817
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getMetadataEncoder()Lorg/briarproject/bramble/api/data/MetadataEncoder;

    move-result-object v6

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 818
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 819
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getAuthorFactory()Lorg/briarproject/bramble/api/identity/AuthorFactory;

    move-result-object v8

    .line 811
    invoke-static/range {v1 .. v8}, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->newClientHelperImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/sync/MessageFactory;Lorg/briarproject/bramble/api/data/BdfReaderFactory;Lorg/briarproject/bramble/api/data/BdfWriterFactory;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/AuthorFactory;)Lorg/briarproject/bramble/client/ClientHelperImpl;

    move-result-object v0

    return-object v0
.end method

.method private getConnectionChooser()Ljava/lang/Object;
    .locals 2

    .line 941
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->keyAgreementModule:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    .line 942
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getConnectionChooserImpl()Ljava/lang/Object;

    move-result-object v1

    .line 941
    invoke-static {v0, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideConnectionChooserFactory;->proxyProvideConnectionChooser(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljava/lang/Object;)Lorg/briarproject/bramble/keyagreement/ConnectionChooser;

    move-result-object v0

    return-object v0
.end method

.method private getConnectionChooserImpl()Ljava/lang/Object;
    .locals 2

    .line 935
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->systemModule:Lorg/briarproject/bramble/system/SystemModule;

    .line 936
    invoke-static {v0}, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;->proxyProvideClock(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/bramble/api/system/Clock;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIoExecutorProvider:Ljavax/inject/Provider;

    .line 937
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 935
    invoke-static {v0, v1}, Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl_Factory;->newConnectionChooserImpl(Lorg/briarproject/bramble/api/system/Clock;Ljava/util/concurrent/Executor;)Lorg/briarproject/bramble/keyagreement/ConnectionChooserImpl;

    move-result-object v0

    return-object v0
.end method

.method private getContactExchangeTaskImpl()Ljava/lang/Object;
    .locals 12

    .line 908
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    .line 909
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 910
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getClientHelper()Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object v2

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->recordModule:Lorg/briarproject/bramble/record/RecordModule;

    .line 911
    invoke-static {v0}, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;->proxyProvideRecordReaderFactory(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    move-result-object v3

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->recordModule:Lorg/briarproject/bramble/record/RecordModule;

    .line 913
    invoke-static {v0}, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordWriterFactoryFactory;->proxyProvideRecordWriterFactory(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/bramble/api/record/RecordWriterFactory;

    move-result-object v4

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->systemModule:Lorg/briarproject/bramble/system/SystemModule;

    .line 915
    invoke-static {v0}, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;->proxyProvideClock(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/bramble/api/system/Clock;

    move-result-object v5

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideConnectionManagerProvider:Ljavax/inject/Provider;

    .line 916
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/bramble/api/plugin/ConnectionManager;

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    .line 917
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/bramble/api/contact/ContactManager;

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getTransportPropertyManagerProvider:Ljavax/inject/Provider;

    .line 918
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 919
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 920
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getStreamReaderFactory()Lorg/briarproject/bramble/api/transport/StreamReaderFactory;

    move-result-object v10

    .line 921
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getStreamWriterFactory()Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    move-result-object v11

    .line 908
    invoke-static/range {v1 .. v11}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl_Factory;->newContactExchangeTaskImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/plugin/ConnectionManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/transport/StreamReaderFactory;Lorg/briarproject/bramble/api/transport/StreamWriterFactory;)Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;

    move-result-object v0

    return-object v0
.end method

.method private getContactGroupFactory()Lorg/briarproject/bramble/api/client/ContactGroupFactory;
    .locals 2

    .line 847
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->clientModule:Lorg/briarproject/bramble/client/ClientModule;

    .line 848
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactGroupFactoryImpl()Ljava/lang/Object;

    move-result-object v1

    .line 847
    invoke-static {v0, v1}, Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;->proxyProvideContactGroupFactory(Lorg/briarproject/bramble/client/ClientModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    move-result-object v0

    return-object v0
.end method

.method private getContactGroupFactoryImpl()Ljava/lang/Object;
    .locals 2

    .line 843
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getGroupFactory()Lorg/briarproject/bramble/api/sync/GroupFactory;

    move-result-object v0

    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getClientHelper()Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object v1

    .line 842
    invoke-static {v0, v1}, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl_Factory;->newContactGroupFactoryImpl(Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;)Lorg/briarproject/bramble/client/ContactGroupFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method private getGroupFactory()Lorg/briarproject/bramble/api/sync/GroupFactory;
    .locals 2

    .line 837
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->syncModule:Lorg/briarproject/bramble/sync/SyncModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 838
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 837
    invoke-static {v0, v1}, Lorg/briarproject/bramble/sync/SyncModule_ProvideGroupFactoryFactory;->proxyProvideGroupFactory(Lorg/briarproject/bramble/sync/SyncModule;Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/api/sync/GroupFactory;

    move-result-object v0

    return-object v0
.end method

.method private getGroupInvitationFactoryImpl()Ljava/lang/Object;
    .locals 2

    .line 853
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactGroupFactory()Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    move-result-object v0

    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getClientHelper()Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object v1

    .line 852
    invoke-static {v0, v1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl_Factory;->newGroupInvitationFactoryImpl(Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method private getGroupMessageFactoryImpl()Ljava/lang/Object;
    .locals 1

    .line 867
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getClientHelper()Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl_Factory;->newGroupMessageFactoryImpl(Lorg/briarproject/bramble/api/client/ClientHelper;)Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method private getKeyAgreementCrypto()Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;
    .locals 2

    .line 930
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

    .line 931
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getKeyAgreementCryptoImpl()Ljava/lang/Object;

    move-result-object v1

    .line 930
    invoke-static {v0, v1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideKeyAgreementCryptoFactory;->proxyProvideKeyAgreementCrypto(Lorg/briarproject/bramble/crypto/CryptoModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    move-result-object v0

    return-object v0
.end method

.method private getKeyAgreementCryptoImpl()Ljava/lang/Object;
    .locals 1

    .line 925
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 926
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 925
    invoke-static {v0}, Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl_Factory;->newKeyAgreementCryptoImpl(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/crypto/KeyAgreementCryptoImpl;

    move-result-object v0

    return-object v0
.end method

.method private getKeyAgreementTaskImpl()Ljava/lang/Object;
    .locals 9

    .line 946
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 947
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 948
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getKeyAgreementCrypto()Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;

    move-result-object v2

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 949
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/api/event/EventBus;

    .line 950
    invoke-virtual {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->payloadEncoder()Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    move-result-object v4

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 951
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/bramble/api/plugin/PluginManager;

    .line 952
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getConnectionChooser()Ljava/lang/Object;

    move-result-object v6

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->recordModule:Lorg/briarproject/bramble/record/RecordModule;

    .line 953
    invoke-static {v0}, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;->proxyProvideRecordReaderFactory(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/bramble/api/record/RecordReaderFactory;

    move-result-object v7

    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->recordModule:Lorg/briarproject/bramble/record/RecordModule;

    .line 955
    invoke-static {v0}, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordWriterFactoryFactory;->proxyProvideRecordWriterFactory(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/bramble/api/record/RecordWriterFactory;

    move-result-object v8

    .line 946
    invoke-static/range {v1 .. v8}, Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl_Factory;->newKeyAgreementTaskImpl(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/KeyAgreementCrypto;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;Lorg/briarproject/bramble/api/plugin/PluginManager;Ljava/lang/Object;Lorg/briarproject/bramble/api/record/RecordReaderFactory;Lorg/briarproject/bramble/api/record/RecordWriterFactory;)Lorg/briarproject/bramble/keyagreement/KeyAgreementTaskImpl;

    move-result-object v0

    return-object v0
.end method

.method private getMessageFactory()Lorg/briarproject/bramble/api/sync/MessageFactory;
    .locals 2

    .line 783
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->syncModule:Lorg/briarproject/bramble/sync/SyncModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 784
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 783
    invoke-static {v0, v1}, Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;->proxyProvideMessageFactory(Lorg/briarproject/bramble/sync/SyncModule;Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/api/sync/MessageFactory;

    move-result-object v0

    return-object v0
.end method

.method private getMessageTrackerImpl()Ljava/lang/Object;
    .locals 2

    .line 828
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    .line 829
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getClientHelper()Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object v1

    .line 828
    invoke-static {v0, v1}, Lorg/briarproject/briar/client/MessageTrackerImpl_Factory;->newMessageTrackerImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;)Lorg/briarproject/briar/client/MessageTrackerImpl;

    move-result-object v0

    return-object v0
.end method

.method private getMetadataEncoder()Lorg/briarproject/bramble/api/data/MetadataEncoder;
    .locals 2

    .line 794
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    .line 796
    invoke-static {v1}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;->proxyProvideBdfWriterFactory(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    move-result-object v1

    .line 794
    invoke-static {v0, v1}, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;->proxyProvideMetaDataEncoder(Lorg/briarproject/bramble/data/DataModule;Lorg/briarproject/bramble/api/data/BdfWriterFactory;)Lorg/briarproject/bramble/api/data/MetadataEncoder;

    move-result-object v0

    return-object v0
.end method

.method private getMetadataParser()Lorg/briarproject/bramble/api/data/MetadataParser;
    .locals 2

    .line 788
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    .line 790
    invoke-static {v1}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;->proxyProvideBdfReaderFactory(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    move-result-object v1

    .line 788
    invoke-static {v0, v1}, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;->proxyProvideMetaDataParser(Lorg/briarproject/bramble/data/DataModule;Lorg/briarproject/bramble/api/data/BdfReaderFactory;)Lorg/briarproject/bramble/api/data/MetadataParser;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkUsageLogger()Lorg/briarproject/briar/android/NetworkUsageLogger;
    .locals 2

    .line 964
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->appModule:Lorg/briarproject/briar/android/AppModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    .line 965
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 964
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/AppModule_ProvideNetworkUsageLoggerFactory;->proxyProvideNetworkUsageLogger(Lorg/briarproject/briar/android/AppModule;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)Lorg/briarproject/briar/android/NetworkUsageLogger;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateGroupFactoryImpl()Ljava/lang/Object;
    .locals 3

    .line 863
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getGroupFactory()Lorg/briarproject/bramble/api/sync/GroupFactory;

    move-result-object v0

    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getClientHelper()Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object v1

    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    .line 862
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl_Factory;->newPrivateGroupFactoryImpl(Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Ljava/security/SecureRandom;)Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateMessageFactoryImpl()Ljava/lang/Object;
    .locals 1

    .line 833
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getClientHelper()Lorg/briarproject/bramble/api/client/ClientHelper;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;->newPrivateMessageFactoryImpl(Lorg/briarproject/bramble/api/client/ClientHelper;)Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method private getSecureRandom()Ljava/security/SecureRandom;
    .locals 2

    .line 857
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 858
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 857
    invoke-static {v0, v1}, Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;->proxyGetSecureRandom(Lorg/briarproject/bramble/crypto/CryptoModule;Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method private getStreamDecrypterFactory()Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;
    .locals 2

    .line 876
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthenticatedCipherProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;

    invoke-static {v0, v1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;->proxyProvideStreamDecrypterFactory(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;

    move-result-object v0

    return-object v0
.end method

.method private getStreamEncrypterFactory()Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;
    .locals 4

    .line 895
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 897
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 898
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getTransportCrypto()Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    move-result-object v2

    iget-object v3, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthenticatedCipherProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;

    .line 895
    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->proxyProvideStreamEncrypterFactory(Lorg/briarproject/bramble/crypto/CryptoModule;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/crypto/TransportCrypto;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    move-result-object v0

    return-object v0
.end method

.method private getStreamReaderFactory()Lorg/briarproject/bramble/api/transport/StreamReaderFactory;
    .locals 2

    .line 881
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->transportModule:Lorg/briarproject/bramble/transport/TransportModule;

    .line 882
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getStreamDecrypterFactory()Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;

    move-result-object v1

    .line 881
    invoke-static {v0, v1}, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamReaderFactoryFactory;->proxyProvideStreamReaderFactory(Lorg/briarproject/bramble/transport/TransportModule;Lorg/briarproject/bramble/api/crypto/StreamDecrypterFactory;)Lorg/briarproject/bramble/api/transport/StreamReaderFactory;

    move-result-object v0

    return-object v0
.end method

.method private getStreamWriterFactory()Lorg/briarproject/bramble/api/transport/StreamWriterFactory;
    .locals 2

    .line 903
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->transportModule:Lorg/briarproject/bramble/transport/TransportModule;

    .line 904
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getStreamEncrypterFactory()Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;

    move-result-object v1

    .line 903
    invoke-static {v0, v1}, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;->proxyProvideStreamWriterFactory(Lorg/briarproject/bramble/transport/TransportModule;Lorg/briarproject/bramble/api/crypto/StreamEncrypterFactory;)Lorg/briarproject/bramble/api/transport/StreamWriterFactory;

    move-result-object v0

    return-object v0
.end method

.method private getTransportCrypto()Lorg/briarproject/bramble/api/crypto/TransportCrypto;
    .locals 2

    .line 890
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

    .line 891
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getTransportCryptoImpl()Ljava/lang/Object;

    move-result-object v1

    .line 890
    invoke-static {v0, v1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;->proxyProvideTransportCrypto(Lorg/briarproject/bramble/crypto/CryptoModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/crypto/TransportCrypto;

    move-result-object v0

    return-object v0
.end method

.method private getTransportCryptoImpl()Ljava/lang/Object;
    .locals 1

    .line 886
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-static {v0}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;->newTransportCryptoImpl(Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/crypto/TransportCryptoImpl;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)V
    .locals 17

    move-object/from16 v0, p0

    .line 971
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/briar/android/AppModule_ProvidesApplicationFactory;->create(Lorg/briarproject/briar/android/AppModule;)Lorg/briarproject/briar/android/AppModule_ProvidesApplicationFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    .line 975
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    .line 974
    invoke-static {v1, v2}, Lorg/briarproject/briar/android/AppModule_ProvideDatabaseConfigFactory;->create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideDatabaseConfigFactory;

    move-result-object v1

    .line 973
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseConfigProvider:Ljavax/inject/Provider;

    .line 976
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    .line 977
    invoke-static {v1}, Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidSecureRandomProvider:Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;

    .line 981
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/system/AndroidSystemModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidSecureRandomProvider:Lorg/briarproject/bramble/system/AndroidSecureRandomProvider_Factory;

    .line 980
    invoke-static {v1, v2}, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideSecureRandomProviderFactory;->create(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideSecureRandomProviderFactory;

    move-result-object v1

    .line 979
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSecureRandomProvider:Ljavax/inject/Provider;

    .line 982
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/system/SystemModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;->create(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 983
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    invoke-static {v1}, Lorg/briarproject/bramble/crypto/ScryptKdf_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/ScryptKdf_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->scryptKdfProvider:Lorg/briarproject/bramble/crypto/ScryptKdf_Factory;

    .line 987
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSecureRandomProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->scryptKdfProvider:Lorg/briarproject/bramble/crypto/ScryptKdf_Factory;

    .line 986
    invoke-static {v1, v2, v3}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;->create(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvideCryptoComponentFactory;

    move-result-object v1

    .line 985
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 990
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/sync/SyncModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 989
    invoke-static {v1, v2}, Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;->create(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;

    .line 994
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/db/DatabaseModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseConfigProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 993
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;->create(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseFactory;

    move-result-object v1

    .line 992
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseProvider:Ljavax/inject/Provider;

    .line 999
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$700(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/event/EventModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/event/EventModule_ProvideEventBusFactory;->create(Lorg/briarproject/bramble/event/EventModule;)Lorg/briarproject/bramble/event/EventModule_ProvideEventBusFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 1002
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/lifecycle/LifecycleModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideShutdownManagerFactory;->create(Lorg/briarproject/bramble/lifecycle/LifecycleModule;)Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideShutdownManagerFactory;

    move-result-object v1

    .line 1001
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideShutdownManagerProvider:Ljavax/inject/Provider;

    .line 1006
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/db/DatabaseModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideShutdownManagerProvider:Ljavax/inject/Provider;

    .line 1005
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;->create(Lorg/briarproject/bramble/db/DatabaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/DatabaseModule_ProvideDatabaseComponentFactory;

    move-result-object v1

    .line 1004
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    .line 1010
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1011
    invoke-static {v1, v2}, Lorg/briarproject/bramble/identity/AuthorFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/identity/AuthorFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->authorFactoryImplProvider:Lorg/briarproject/bramble/identity/AuthorFactoryImpl_Factory;

    .line 1014
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/identity/IdentityModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->authorFactoryImplProvider:Lorg/briarproject/bramble/identity/AuthorFactoryImpl_Factory;

    .line 1013
    invoke-static {v1, v2}, Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;->create(Lorg/briarproject/bramble/identity/IdentityModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthorFactoryProvider:Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;

    .line 1015
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthorFactoryProvider:Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;

    .line 1016
    invoke-static {v1, v2, v3}, Lorg/briarproject/bramble/identity/IdentityManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/identity/IdentityManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->identityManagerImplProvider:Lorg/briarproject/bramble/identity/IdentityManagerImpl_Factory;

    .line 1023
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/identity/IdentityModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->identityManagerImplProvider:Lorg/briarproject/bramble/identity/IdentityManagerImpl_Factory;

    .line 1022
    invoke-static {v1, v2}, Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;->create(Lorg/briarproject/bramble/identity/IdentityModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/identity/IdentityModule_ProvideIdentityManagerFactory;

    move-result-object v1

    .line 1021
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    .line 1024
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    .line 1025
    invoke-static {v1, v2, v3}, Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->lifecycleManagerImplProvider:Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl_Factory;

    .line 1032
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/lifecycle/LifecycleModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->lifecycleManagerImplProvider:Lorg/briarproject/bramble/lifecycle/LifecycleManagerImpl_Factory;

    .line 1031
    invoke-static {v1, v2}, Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideLifecycleManagerFactory;->create(Lorg/briarproject/bramble/lifecycle/LifecycleModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideLifecycleManagerFactory;

    move-result-object v1

    .line 1030
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    .line 1036
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1000(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/db/DatabaseExecutorModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-static {v1, v2}, Lorg/briarproject/bramble/db/DatabaseExecutorModule_ProvideDatabaseExecutorServiceFactory;->create(Lorg/briarproject/bramble/db/DatabaseExecutorModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/DatabaseExecutorModule_ProvideDatabaseExecutorServiceFactory;

    move-result-object v1

    .line 1034
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorServiceProvider:Ljavax/inject/Provider;

    .line 1040
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1000(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/db/DatabaseExecutorModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorServiceProvider:Ljavax/inject/Provider;

    .line 1039
    invoke-static {v1, v2}, Lorg/briarproject/bramble/db/DatabaseExecutorModule_ProvideDatabaseExecutorFactory;->create(Lorg/briarproject/bramble/db/DatabaseExecutorModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/db/DatabaseExecutorModule_ProvideDatabaseExecutorFactory;

    move-result-object v1

    .line 1038
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/lifecycle/LifecycleModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-static {v1, v2}, Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideIoExecutorFactory;->create(Lorg/briarproject/bramble/lifecycle/LifecycleModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/lifecycle/LifecycleModule_ProvideIoExecutorFactory;

    move-result-object v1

    .line 1042
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIoExecutorProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/system/SystemModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-static {v1, v2}, Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;->create(Lorg/briarproject/bramble/system/SystemModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/SystemModule_ProvideScheduledExecutorServiceFactory;

    move-result-object v1

    .line 1046
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    .line 1049
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-static {v1}, Lorg/briarproject/bramble/system/AndroidExecutorImpl_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidExecutorImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidExecutorImplProvider:Lorg/briarproject/bramble/system/AndroidExecutorImpl_Factory;

    .line 1054
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/system/AndroidSystemModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidExecutorImplProvider:Lorg/briarproject/bramble/system/AndroidExecutorImpl_Factory;

    .line 1053
    invoke-static {v1, v2}, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideAndroidExecutorFactory;->create(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideAndroidExecutorFactory;

    move-result-object v1

    .line 1052
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidExecutorProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 1056
    invoke-static {v1, v2}, Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;->create(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getSecureRandomProvider:Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;

    .line 1059
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/socks/SocksModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;->create(Lorg/briarproject/bramble/socks/SocksModule;)Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideTorSocketFactoryProvider:Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;

    .line 1061
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/plugin/PluginModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/plugin/PluginModule_ProvideBackoffFactoryFactory;->create(Lorg/briarproject/bramble/plugin/PluginModule;)Lorg/briarproject/bramble/plugin/PluginModule_ProvideBackoffFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBackoffFactoryProvider:Lorg/briarproject/bramble/plugin/PluginModule_ProvideBackoffFactoryFactory;

    .line 1062
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-static {v1, v2, v3}, Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidNetworkManagerProvider:Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;

    .line 1070
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/network/AndroidNetworkModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidNetworkManagerProvider:Lorg/briarproject/bramble/network/AndroidNetworkManager_Factory;

    .line 1069
    invoke-static {v1, v2, v3}, Lorg/briarproject/bramble/network/AndroidNetworkModule_ProvideNetworkManagerFactory;->create(Lorg/briarproject/bramble/network/AndroidNetworkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/network/AndroidNetworkModule_ProvideNetworkManagerFactory;

    move-result-object v1

    .line 1068
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideNetworkManagerProvider:Ljavax/inject/Provider;

    .line 1073
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    .line 1074
    invoke-static {v1}, Lorg/briarproject/bramble/system/AndroidLocationUtils_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidLocationUtils_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidLocationUtilsProvider:Lorg/briarproject/bramble/system/AndroidLocationUtils_Factory;

    .line 1077
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/system/AndroidSystemModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidLocationUtilsProvider:Lorg/briarproject/bramble/system/AndroidLocationUtils_Factory;

    .line 1076
    invoke-static {v1, v2}, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideLocationUtilsFactory;->create(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideLocationUtilsFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLocationUtilsProvider:Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideLocationUtilsFactory;

    .line 1078
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    .line 1079
    invoke-static {v1}, Lorg/briarproject/bramble/system/AndroidResourceProvider_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidResourceProvider_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidResourceProvider:Lorg/briarproject/bramble/system/AndroidResourceProvider_Factory;

    .line 1083
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/system/AndroidSystemModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidResourceProvider:Lorg/briarproject/bramble/system/AndroidResourceProvider_Factory;

    .line 1082
    invoke-static {v1, v2}, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;->create(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideResourceProviderFactory;

    move-result-object v1

    .line 1081
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideResourceProvider:Ljavax/inject/Provider;

    .line 1087
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/plugin/tor/CircumventionModule;

    move-result-object v1

    invoke-static {}, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;->create()Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;

    move-result-object v2

    .line 1086
    invoke-static {v1, v2}, Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;->create(Lorg/briarproject/bramble/plugin/tor/CircumventionModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/tor/CircumventionModule_ProvideCircumventionProviderFactory;

    move-result-object v1

    .line 1085
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCircumventionProvider:Ljavax/inject/Provider;

    .line 1088
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 1089
    invoke-static {v1, v2}, Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidBatteryManagerProvider:Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;

    .line 1093
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/battery/AndroidBatteryModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidBatteryManagerProvider:Lorg/briarproject/bramble/battery/AndroidBatteryManager_Factory;

    .line 1092
    invoke-static {v1, v2, v3}, Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;->create(Lorg/briarproject/bramble/battery/AndroidBatteryModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/battery/AndroidBatteryModule_ProvideBatteryManagerFactory;

    move-result-object v1

    .line 1091
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBatteryManagerProvider:Ljavax/inject/Provider;

    .line 1098
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIoExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidExecutorProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getSecureRandomProvider:Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideTorSocketFactoryProvider:Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBackoffFactoryProvider:Lorg/briarproject/bramble/plugin/PluginModule_ProvideBackoffFactoryFactory;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideNetworkManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLocationUtilsProvider:Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideLocationUtilsFactory;

    iget-object v12, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideResourceProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCircumventionProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBatteryManagerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    move-object/from16 v16, v1

    .line 1097
    invoke-static/range {v2 .. v16}, Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;->create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePluginConfigProvider:Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;

    .line 1113
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 1114
    invoke-static {v1}, Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->transportCryptoImplProvider:Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;

    .line 1117
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->transportCryptoImplProvider:Lorg/briarproject/bramble/crypto/TransportCryptoImpl_Factory;

    .line 1116
    invoke-static {v1, v2}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;->create(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideTransportCryptoProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;

    .line 1118
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideTransportCryptoProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1119
    invoke-static {v1, v2, v3, v4, v5}, Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->transportKeyManagerFactoryImplProvider:Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl_Factory;

    .line 1127
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/transport/TransportModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->transportKeyManagerFactoryImplProvider:Lorg/briarproject/bramble/transport/TransportKeyManagerFactoryImpl_Factory;

    .line 1126
    invoke-static {v1, v2}, Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;->create(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideTransportKeyManagerFactoryProvider:Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;

    .line 1128
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePluginConfigProvider:Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideTransportKeyManagerFactoryProvider:Lorg/briarproject/bramble/transport/TransportModule_ProvideTransportKeyManagerFactoryFactory;

    .line 1129
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->keyManagerImplProvider:Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;

    .line 1137
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/transport/TransportModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->keyManagerImplProvider:Lorg/briarproject/bramble/transport/KeyManagerImpl_Factory;

    .line 1136
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/bramble/transport/TransportModule_ProvideKeyManagerFactory;->create(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/TransportModule_ProvideKeyManagerFactory;

    move-result-object v1

    .line 1135
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideKeyManagerProvider:Ljavax/inject/Provider;

    .line 1141
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideKeyManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    .line 1142
    invoke-static {v1, v2, v3}, Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->contactManagerImplProvider:Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;

    .line 1149
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1700(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/contact/ContactModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->contactManagerImplProvider:Lorg/briarproject/bramble/contact/ContactManagerImpl_Factory;

    .line 1148
    invoke-static {v1, v2}, Lorg/briarproject/bramble/contact/ContactModule_GetContactManagerFactory;->create(Lorg/briarproject/bramble/contact/ContactModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/contact/ContactModule_GetContactManagerFactory;

    move-result-object v1

    .line 1147
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    .line 1153
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    .line 1152
    invoke-static {v1, v2}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;->create(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorServiceFactory;

    move-result-object v1

    .line 1151
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoExecutorServiceProvider:Ljavax/inject/Provider;

    .line 1155
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;->create(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthenticatedCipherProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;

    .line 1158
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthenticatedCipherProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;

    .line 1157
    invoke-static {v1, v2}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;->create(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideStreamDecrypterFactoryProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;

    .line 1161
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/transport/TransportModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideStreamDecrypterFactoryProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamDecrypterFactoryFactory;

    .line 1160
    invoke-static {v1, v2}, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamReaderFactoryFactory;->create(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamReaderFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideStreamReaderFactoryProvider:Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamReaderFactoryFactory;

    .line 1164
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideTransportCryptoProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideTransportCryptoFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthenticatedCipherProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideAuthenticatedCipherFactory;

    .line 1163
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;->create(Lorg/briarproject/bramble/crypto/CryptoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideStreamEncrypterFactoryProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;

    .line 1170
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/transport/TransportModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideStreamEncrypterFactoryProvider:Lorg/briarproject/bramble/crypto/CryptoModule_ProvideStreamEncrypterFactoryFactory;

    .line 1169
    invoke-static {v1, v2}, Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;->create(Lorg/briarproject/bramble/transport/TransportModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideStreamWriterFactoryProvider:Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;

    .line 1172
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/record/RecordModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;->create(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideRecordReaderFactoryProvider:Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;

    .line 1173
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideRecordReaderFactoryProvider:Lorg/briarproject/bramble/record/RecordModule_ProvideRecordReaderFactoryFactory;

    .line 1174
    invoke-static {v1, v2}, Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->syncRecordReaderFactoryImplProvider:Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;

    .line 1178
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/sync/SyncModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->syncRecordReaderFactoryImplProvider:Lorg/briarproject/bramble/sync/SyncRecordReaderFactoryImpl_Factory;

    .line 1177
    invoke-static {v1, v2}, Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordReaderFactoryFactory;->create(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordReaderFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideRecordReaderFactoryProvider2:Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordReaderFactoryFactory;

    .line 1180
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/record/RecordModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/record/RecordModule_ProvideRecordWriterFactoryFactory;->create(Lorg/briarproject/bramble/record/RecordModule;)Lorg/briarproject/bramble/record/RecordModule_ProvideRecordWriterFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideRecordWriterFactoryProvider:Lorg/briarproject/bramble/record/RecordModule_ProvideRecordWriterFactoryFactory;

    .line 1181
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideRecordWriterFactoryProvider:Lorg/briarproject/bramble/record/RecordModule_ProvideRecordWriterFactoryFactory;

    .line 1182
    invoke-static {v1, v2}, Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->syncRecordWriterFactoryImplProvider:Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl_Factory;

    .line 1186
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/sync/SyncModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->syncRecordWriterFactoryImplProvider:Lorg/briarproject/bramble/sync/SyncRecordWriterFactoryImpl_Factory;

    .line 1185
    invoke-static {v1, v2}, Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;->create(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideRecordWriterFactoryProvider2:Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;

    .line 1190
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/sync/SyncModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideRecordReaderFactoryProvider2:Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordReaderFactoryFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideRecordWriterFactoryProvider2:Lorg/briarproject/bramble/sync/SyncModule_ProvideRecordWriterFactoryFactory;

    .line 1189
    invoke-static/range {v2 .. v8}, Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;->create(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncModule_ProvideSyncSessionFactoryFactory;

    move-result-object v1

    .line 1188
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSyncSessionFactoryProvider:Ljavax/inject/Provider;

    .line 1197
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 1198
    invoke-static {v1}, Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->connectionRegistryImplProvider:Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl_Factory;

    .line 1202
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/plugin/PluginModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->connectionRegistryImplProvider:Lorg/briarproject/bramble/plugin/ConnectionRegistryImpl_Factory;

    .line 1201
    invoke-static {v1, v2}, Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionRegistryFactory;->create(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionRegistryFactory;

    move-result-object v1

    .line 1200
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideConnectionRegistryProvider:Ljavax/inject/Provider;

    .line 1203
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIoExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideKeyManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideStreamReaderFactoryProvider:Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamReaderFactoryFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideStreamWriterFactoryProvider:Lorg/briarproject/bramble/transport/TransportModule_ProvideStreamWriterFactoryFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSyncSessionFactoryProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideConnectionRegistryProvider:Ljavax/inject/Provider;

    .line 1204
    invoke-static/range {v2 .. v7}, Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->connectionManagerImplProvider:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;

    .line 1214
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/plugin/PluginModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->connectionManagerImplProvider:Lorg/briarproject/bramble/plugin/ConnectionManagerImpl_Factory;

    .line 1213
    invoke-static {v1, v2}, Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;->create(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/PluginModule_ProvideConnectionManagerFactory;

    move-result-object v1

    .line 1212
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideConnectionManagerProvider:Ljavax/inject/Provider;

    .line 1217
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2000(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/settings/SettingsModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    .line 1216
    invoke-static {v1, v2}, Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;->create(Lorg/briarproject/bramble/settings/SettingsModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSettingsManagerProvider:Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;

    .line 1219
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;->create(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;)Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoExecutorProvider:Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;

    .line 1223
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/sync/SyncModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoExecutorProvider:Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;

    .line 1222
    invoke-static {v1, v2}, Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;->create(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationExecutorFactory;

    move-result-object v1

    .line 1221
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationExecutorProvider:Ljavax/inject/Provider;

    .line 1224
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationExecutorProvider:Ljavax/inject/Provider;

    .line 1225
    invoke-static {v1, v2, v3}, Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->validationManagerImplProvider:Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;

    .line 1232
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/sync/SyncModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->validationManagerImplProvider:Lorg/briarproject/bramble/sync/ValidationManagerImpl_Factory;

    .line 1231
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationManagerFactory;->create(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncModule_ProvideValidationManagerFactory;

    move-result-object v1

    .line 1230
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    .line 1237
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/data/DataModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;->create(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBdfReaderFactoryProvider:Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;

    .line 1239
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/data/DataModule;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;->create(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBdfWriterFactoryProvider:Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;

    .line 1242
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/data/DataModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBdfReaderFactoryProvider:Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;

    .line 1241
    invoke-static {v1, v2}, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;->create(Lorg/briarproject/bramble/data/DataModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    .line 1245
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/data/DataModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBdfWriterFactoryProvider:Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;

    .line 1244
    invoke-static {v1, v2}, Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;->create(Lorg/briarproject/bramble/data/DataModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    .line 1246
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBdfReaderFactoryProvider:Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBdfWriterFactoryProvider:Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthorFactoryProvider:Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;

    .line 1247
    invoke-static/range {v2 .. v9}, Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->clientHelperImplProvider:Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;

    .line 1258
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/client/ClientModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->clientHelperImplProvider:Lorg/briarproject/bramble/client/ClientHelperImpl_Factory;

    .line 1257
    invoke-static {v1, v2}, Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;->create(Lorg/briarproject/bramble/client/ClientModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1261
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/sync/SyncModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 1260
    invoke-static {v1, v2}, Lorg/briarproject/bramble/sync/SyncModule_ProvideGroupFactoryFactory;->create(Lorg/briarproject/bramble/sync/SyncModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/sync/SyncModule_ProvideGroupFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideGroupFactoryFactory;

    .line 1262
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideGroupFactoryFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1263
    invoke-static {v1, v2}, Lorg/briarproject/bramble/client/ContactGroupFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/client/ContactGroupFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->contactGroupFactoryImplProvider:Lorg/briarproject/bramble/client/ContactGroupFactoryImpl_Factory;

    .line 1267
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/client/ClientModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->contactGroupFactoryImplProvider:Lorg/briarproject/bramble/client/ContactGroupFactoryImpl_Factory;

    .line 1266
    invoke-static {v1, v2}, Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;->create(Lorg/briarproject/bramble/client/ClientModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    .line 1268
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1269
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->clientVersioningManagerImplProvider:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl_Factory;

    .line 1277
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/versioning/VersioningModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->clientVersioningManagerImplProvider:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl_Factory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    .line 1276
    invoke-static {v1, v2, v3, v4, v5}, Lorg/briarproject/bramble/versioning/VersioningModule_ProvideClientVersioningManagerFactory;->create(Lorg/briarproject/bramble/versioning/VersioningModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/versioning/VersioningModule_ProvideClientVersioningManagerFactory;

    move-result-object v1

    .line 1275
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    .line 1282
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1283
    invoke-static/range {v2 .. v7}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->transportPropertyManagerImplProvider:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl_Factory;

    .line 1293
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/properties/PropertiesModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->transportPropertyManagerImplProvider:Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl_Factory;

    .line 1292
    invoke-static/range {v2 .. v7}, Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;->create(Lorg/briarproject/bramble/properties/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/properties/PropertiesModule_GetTransportPropertyManagerFactory;

    move-result-object v1

    .line 1291
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getTransportPropertyManagerProvider:Ljavax/inject/Provider;

    .line 1299
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIoExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePluginConfigProvider:Lorg/briarproject/briar/android/AppModule_ProvidePluginConfigFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideConnectionManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideConnectionRegistryProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSettingsManagerProvider:Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getTransportPropertyManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getSecureRandomProvider:Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;

    iget-object v11, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1300
    invoke-static/range {v2 .. v11}, Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->pluginManagerImplProvider:Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;

    .line 1314
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/plugin/PluginModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->pluginManagerImplProvider:Lorg/briarproject/bramble/plugin/PluginManagerImpl_Factory;

    .line 1313
    invoke-static {v1, v2, v3}, Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;->create(Lorg/briarproject/bramble/plugin/PluginModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/plugin/PluginModule_ProvidePluginManagerFactory;

    move-result-object v1

    .line 1312
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 1318
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/properties/PropertiesModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1317
    invoke-static {v1, v2, v3, v4, v5}, Lorg/briarproject/bramble/properties/PropertiesModule_GetValidatorFactory;->create(Lorg/briarproject/bramble/properties/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/properties/PropertiesModule_GetValidatorFactory;

    move-result-object v1

    .line 1316
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getValidatorProvider:Ljavax/inject/Provider;

    .line 1326
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    .line 1325
    invoke-static {v1, v2, v3}, Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;->create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideDevConfigFactory;

    move-result-object v1

    .line 1324
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDevConfigProvider:Ljavax/inject/Provider;

    .line 1327
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIoExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDevConfigProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideTorSocketFactoryProvider:Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;

    .line 1328
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->devReporterImplProvider:Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;

    .line 1336
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/reporting/ReportingModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->devReporterImplProvider:Lorg/briarproject/bramble/reporting/DevReporterImpl_Factory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 1335
    invoke-static {v1, v2, v3}, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;->create(Lorg/briarproject/bramble/reporting/ReportingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;

    move-result-object v1

    .line 1334
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDevReporterProvider:Ljavax/inject/Provider;

    .line 1340
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/versioning/VersioningModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    .line 1339
    invoke-static {v1, v2, v3, v4, v5}, Lorg/briarproject/bramble/versioning/VersioningModule_ProvideClientVersioningValidatorFactory;->create(Lorg/briarproject/bramble/versioning/VersioningModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/versioning/VersioningModule_ProvideClientVersioningValidatorFactory;

    move-result-object v1

    .line 1338
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningValidatorProvider:Ljavax/inject/Provider;

    .line 1345
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideGroupFactoryFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1346
    invoke-static {v1, v2}, Lorg/briarproject/briar/blog/BlogFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/blog/BlogFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogFactoryImplProvider:Lorg/briarproject/briar/blog/BlogFactoryImpl_Factory;

    .line 1348
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/blog/BlogModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogFactoryImplProvider:Lorg/briarproject/briar/blog/BlogFactoryImpl_Factory;

    invoke-static {v1, v2}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogFactoryFactory;->create(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/blog/BlogModule_ProvideBlogFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogFactoryFactory;

    .line 1352
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/blog/BlogModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideGroupFactoryFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogFactoryFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1351
    invoke-static/range {v2 .. v9}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;->create(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostValidatorFactory;

    move-result-object v1

    .line 1350
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogPostValidatorProvider:Ljavax/inject/Provider;

    .line 1360
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1361
    invoke-static {v1, v2}, Lorg/briarproject/briar/blog/BlogPostFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/blog/BlogPostFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogPostFactoryImplProvider:Lorg/briarproject/briar/blog/BlogPostFactoryImpl_Factory;

    .line 1364
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/blog/BlogModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogPostFactoryImplProvider:Lorg/briarproject/briar/blog/BlogPostFactoryImpl_Factory;

    .line 1363
    invoke-static {v1, v2}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;->create(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogPostFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;

    .line 1365
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogFactoryFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogPostFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;

    .line 1366
    invoke-static/range {v2 .. v8}, Lorg/briarproject/briar/blog/BlogManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/blog/BlogManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogManagerImplProvider:Lorg/briarproject/briar/blog/BlogManagerImpl_Factory;

    .line 1377
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/blog/BlogModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogManagerImplProvider:Lorg/briarproject/briar/blog/BlogManagerImpl_Factory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    .line 1376
    invoke-static {v1, v2, v3, v4, v5}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogManagerFactory;->create(Lorg/briarproject/briar/blog/BlogModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/blog/BlogModule_ProvideBlogManagerFactory;

    move-result-object v1

    .line 1375
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogManagerProvider:Ljavax/inject/Provider;

    .line 1382
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthorFactoryProvider:Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogFactoryFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1383
    invoke-static {v1, v2, v3, v4, v5}, Lorg/briarproject/briar/feed/FeedFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/FeedFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->feedFactoryImplProvider:Lorg/briarproject/briar/feed/FeedFactoryImpl_Factory;

    .line 1390
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2700(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/feed/FeedModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->feedFactoryImplProvider:Lorg/briarproject/briar/feed/FeedFactoryImpl_Factory;

    invoke-static {v1, v2}, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;->create(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideFeedFactoryProvider:Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;

    .line 1392
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/feed/DnsModule;

    move-result-object v1

    invoke-static {}, Lorg/briarproject/briar/feed/NoDns_Factory;->create()Lorg/briarproject/briar/feed/NoDns_Factory;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;->create(Lorg/briarproject/briar/feed/DnsModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDnsProvider:Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;

    .line 1393
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIoExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogPostFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideFeedFactoryProvider:Lorg/briarproject/briar/feed/FeedModule_ProvideFeedFactoryFactory;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideTorSocketFactoryProvider:Lorg/briarproject/bramble/socks/SocksModule_ProvideTorSocketFactoryFactory;

    iget-object v11, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    iget-object v12, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDnsProvider:Lorg/briarproject/briar/feed/DnsModule_ProvideDnsFactory;

    .line 1394
    invoke-static/range {v2 .. v12}, Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->feedManagerImplProvider:Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;

    .line 1409
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2700(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/feed/FeedModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->feedManagerImplProvider:Lorg/briarproject/briar/feed/FeedManagerImpl_Factory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogManagerProvider:Ljavax/inject/Provider;

    .line 1408
    invoke-static {v1, v2, v3, v4, v5}, Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;->create(Lorg/briarproject/briar/feed/FeedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/feed/FeedModule_ProvideFeedManagerFactory;

    move-result-object v1

    .line 1407
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideFeedManagerProvider:Ljavax/inject/Provider;

    .line 1414
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideGroupFactoryFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getSecureRandomProvider:Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;

    .line 1415
    invoke-static {v1, v2, v3}, Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumFactoryImplProvider:Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;

    return-void
.end method

.method private initialize2(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1423
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/forum/ForumModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumFactoryImplProvider:Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;

    .line 1422
    invoke-static {v1, v2}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;->create(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumFactoryProvider:Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;

    .line 1424
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1425
    invoke-static {v1}, Lorg/briarproject/briar/forum/ForumPostFactoryImpl_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumPostFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumPostFactoryImplProvider:Lorg/briarproject/briar/forum/ForumPostFactoryImpl_Factory;

    .line 1428
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/forum/ForumModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumPostFactoryImplProvider:Lorg/briarproject/briar/forum/ForumPostFactoryImpl_Factory;

    .line 1427
    invoke-static {v1, v2}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostFactoryFactory;->create(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumPostFactoryProvider:Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostFactoryFactory;

    .line 1429
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1430
    invoke-static {v1, v2}, Lorg/briarproject/briar/client/MessageTrackerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/client/MessageTrackerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageTrackerImplProvider:Lorg/briarproject/briar/client/MessageTrackerImpl_Factory;

    .line 1434
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3000(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/client/BriarClientModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageTrackerImplProvider:Lorg/briarproject/briar/client/MessageTrackerImpl_Factory;

    .line 1433
    invoke-static {v1, v2}, Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;->create(Lorg/briarproject/briar/client/BriarClientModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    .line 1435
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumFactoryProvider:Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumPostFactoryProvider:Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostFactoryFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    .line 1436
    invoke-static/range {v2 .. v8}, Lorg/briarproject/briar/forum/ForumManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumManagerImplProvider:Lorg/briarproject/briar/forum/ForumManagerImpl_Factory;

    .line 1447
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/forum/ForumModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumManagerImplProvider:Lorg/briarproject/briar/forum/ForumManagerImpl_Factory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    .line 1446
    invoke-static {v1, v2, v3}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;->create(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumModule_ProvideForumManagerFactory;

    move-result-object v1

    .line 1445
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumManagerProvider:Ljavax/inject/Provider;

    .line 1451
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/forum/ForumModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1450
    invoke-static {v1, v2, v3, v4, v5}, Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;->create(Lorg/briarproject/briar/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumModule_ProvideForumPostValidatorFactory;

    move-result-object v1

    .line 1449
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumPostValidatorProvider:Ljavax/inject/Provider;

    .line 1456
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideGroupFactoryFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getSecureRandomProvider:Lorg/briarproject/bramble/crypto/CryptoModule_GetSecureRandomFactory;

    .line 1457
    invoke-static {v1, v2, v3}, Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->privateGroupFactoryImplProvider:Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl_Factory;

    .line 1461
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->privateGroupFactoryImplProvider:Lorg/briarproject/briar/privategroup/PrivateGroupFactoryImpl_Factory;

    .line 1460
    invoke-static {v1, v2}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;->create(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePrivateGroupFactoryProvider:Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;

    .line 1462
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;

    .line 1463
    invoke-static {v1, v2}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageEncoderImplProvider:Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl_Factory;

    .line 1467
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageEncoderImplProvider:Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl_Factory;

    .line 1466
    invoke-static {v1, v2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageEncoderFactory;->create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageEncoderFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageEncoderFactory;

    .line 1471
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePrivateGroupFactoryProvider:Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageEncoderFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    .line 1470
    invoke-static/range {v2 .. v8}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;->create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationValidatorFactory;

    move-result-object v1

    .line 1469
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupInvitationValidatorProvider:Ljavax/inject/Provider;

    .line 1478
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePrivateGroupFactoryProvider:Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    .line 1479
    invoke-static/range {v2 .. v8}, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->privateGroupManagerImplProvider:Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl_Factory;

    .line 1490
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->privateGroupManagerImplProvider:Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl_Factory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    .line 1489
    invoke-static {v1, v2, v3}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;->create(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupManagerFactory;

    move-result-object v1

    .line 1488
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupManagerProvider:Ljavax/inject/Provider;

    .line 1493
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthorFactoryProvider:Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePrivateGroupFactoryProvider:Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1494
    invoke-static {v1, v2, v3}, Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageParserImplProvider:Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;

    .line 1500
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageParserImplProvider:Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl_Factory;

    .line 1499
    invoke-static {v1, v2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageParserFactory;->create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageParserFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageParserProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageParserFactory;

    .line 1503
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    move-result-object v1

    .line 1504
    invoke-static {}, Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;->create()Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl_Factory;

    move-result-object v2

    .line 1502
    invoke-static {v1, v2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;->create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionParserProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;

    .line 1507
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    move-result-object v1

    .line 1508
    invoke-static {}, Lorg/briarproject/briar/privategroup/invitation/SessionEncoderImpl_Factory;->create()Lorg/briarproject/briar/privategroup/invitation/SessionEncoderImpl_Factory;

    move-result-object v2

    .line 1506
    invoke-static {v1, v2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionEncoderFactory;->create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionEncoderFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionEncoderProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionEncoderFactory;

    .line 1509
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1510
    invoke-static {v1}, Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->groupMessageFactoryImplProvider:Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl_Factory;

    .line 1513
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->groupMessageFactoryImplProvider:Lorg/briarproject/briar/privategroup/GroupMessageFactoryImpl_Factory;

    .line 1512
    invoke-static {v1, v2}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageFactoryFactory;->create(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupMessageFactoryProvider:Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageFactoryFactory;

    .line 1514
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePrivateGroupFactoryProvider:Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupMessageFactoryProvider:Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageFactoryFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageParserProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageParserFactory;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageEncoderFactory;

    iget-object v11, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    iget-object v12, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1515
    invoke-static/range {v2 .. v12}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->protocolEngineFactoryImplProvider:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;

    .line 1529
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->protocolEngineFactoryImplProvider:Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;

    .line 1528
    invoke-static {v1, v2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;->create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideProtocolEngineFactoryProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;

    .line 1530
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePrivateGroupFactoryProvider:Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageParserProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideMessageParserFactory;

    iget-object v11, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionParserProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionParserFactory;

    iget-object v12, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionEncoderProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideSessionEncoderFactory;

    iget-object v13, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideProtocolEngineFactoryProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideProtocolEngineFactoryFactory;

    .line 1531
    invoke-static/range {v2 .. v13}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->groupInvitationManagerImplProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl_Factory;

    .line 1544
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    .line 1545
    invoke-static {v1}, Lorg/briarproject/briar/messaging/ConversationManagerImpl_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/ConversationManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->conversationManagerImplProvider:Lorg/briarproject/briar/messaging/ConversationManagerImpl_Factory;

    .line 1549
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/messaging/MessagingModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->conversationManagerImplProvider:Lorg/briarproject/briar/messaging/ConversationManagerImpl_Factory;

    .line 1548
    invoke-static {v1, v2}, Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;->create(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;

    move-result-object v1

    .line 1547
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getConversationManagerProvider:Ljavax/inject/Provider;

    .line 1553
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->groupInvitationManagerImplProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl_Factory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getConversationManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    .line 1552
    invoke-static/range {v2 .. v9}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;->create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationManagerFactory;

    move-result-object v1

    .line 1551
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupInvitationManagerProvider:Ljavax/inject/Provider;

    .line 1561
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;

    .line 1562
    invoke-static {v1, v2}, Lorg/briarproject/briar/introduction/MessageEncoderImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/MessageEncoderImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageEncoderImplProvider2:Lorg/briarproject/briar/introduction/MessageEncoderImpl_Factory;

    .line 1566
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/introduction/IntroductionModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageEncoderImplProvider2:Lorg/briarproject/briar/introduction/MessageEncoderImpl_Factory;

    .line 1565
    invoke-static {v1, v2}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;->create(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;

    .line 1570
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/introduction/IntroductionModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1569
    invoke-static/range {v2 .. v7}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;->create(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionModule_ProvideValidatorFactory;

    move-result-object v1

    .line 1568
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidatorProvider:Ljavax/inject/Provider;

    .line 1576
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1577
    invoke-static {v1}, Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageParserImplProvider2:Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;

    .line 1581
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/introduction/IntroductionModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageParserImplProvider2:Lorg/briarproject/briar/introduction/MessageParserImpl_Factory;

    .line 1580
    invoke-static {v1, v2}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageParserFactory;->create(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageParserFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageParserProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageParserFactory;

    .line 1582
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1583
    invoke-static {v1}, Lorg/briarproject/briar/introduction/SessionEncoderImpl_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/SessionEncoderImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->sessionEncoderImplProvider:Lorg/briarproject/briar/introduction/SessionEncoderImpl_Factory;

    .line 1586
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/introduction/IntroductionModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->sessionEncoderImplProvider:Lorg/briarproject/briar/introduction/SessionEncoderImpl_Factory;

    .line 1585
    invoke-static {v1, v2}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;->create(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionEncoderProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;

    .line 1587
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    invoke-static {v1}, Lorg/briarproject/briar/introduction/SessionParserImpl_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/SessionParserImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->sessionParserImplProvider:Lorg/briarproject/briar/introduction/SessionParserImpl_Factory;

    .line 1590
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/introduction/IntroductionModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->sessionParserImplProvider:Lorg/briarproject/briar/introduction/SessionParserImpl_Factory;

    .line 1589
    invoke-static {v1, v2}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionParserFactory;->create(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionParserFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionParserProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionParserFactory;

    .line 1591
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageParserProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageParserFactory;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1592
    invoke-static/range {v2 .. v10}, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroducerProtocolEngine_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->introducerProtocolEngineProvider:Lorg/briarproject/briar/introduction/IntroducerProtocolEngine_Factory;

    .line 1602
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1603
    invoke-static {v1, v2}, Lorg/briarproject/briar/introduction/IntroductionCryptoImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionCryptoImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->introductionCryptoImplProvider:Lorg/briarproject/briar/introduction/IntroductionCryptoImpl_Factory;

    .line 1607
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/introduction/IntroductionModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->introductionCryptoImplProvider:Lorg/briarproject/briar/introduction/IntroductionCryptoImpl_Factory;

    .line 1606
    invoke-static {v1, v2}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionCryptoFactory;->create(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionCryptoFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIntroductionCryptoProvider:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionCryptoFactory;

    .line 1608
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageParserProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageParserFactory;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageEncoderFactory;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    iget-object v11, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIntroductionCryptoProvider:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionCryptoFactory;

    iget-object v12, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideKeyManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getTransportPropertyManagerProvider:Ljavax/inject/Provider;

    .line 1609
    invoke-static/range {v2 .. v13}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->introduceeProtocolEngineProvider:Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;

    .line 1622
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageParserProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideMessageParserFactory;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionEncoderProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionEncoderFactory;

    iget-object v11, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionParserProvider2:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideSessionParserFactory;

    iget-object v12, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->introducerProtocolEngineProvider:Lorg/briarproject/briar/introduction/IntroducerProtocolEngine_Factory;

    iget-object v13, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->introduceeProtocolEngineProvider:Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;

    iget-object v14, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIntroductionCryptoProvider:Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionCryptoFactory;

    iget-object v15, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    .line 1623
    invoke-static/range {v2 .. v15}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->introductionManagerImplProvider:Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;

    .line 1641
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/introduction/IntroductionModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getConversationManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->introductionManagerImplProvider:Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;

    .line 1640
    invoke-static/range {v2 .. v8}, Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;->create(Lorg/briarproject/briar/introduction/IntroductionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionModule_ProvideIntroductionManagerFactory;

    move-result-object v1

    .line 1639
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIntroductionManagerProvider:Ljavax/inject/Provider;

    .line 1648
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    .line 1649
    invoke-static/range {v2 .. v7}, Lorg/briarproject/briar/messaging/MessagingManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/MessagingManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messagingManagerImplProvider:Lorg/briarproject/briar/messaging/MessagingManagerImpl_Factory;

    .line 1659
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/messaging/MessagingModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getConversationManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messagingManagerImplProvider:Lorg/briarproject/briar/messaging/MessagingManagerImpl_Factory;

    .line 1658
    invoke-static/range {v2 .. v8}, Lorg/briarproject/briar/messaging/MessagingModule_GetMessagingManagerFactory;->create(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/MessagingModule_GetMessagingManagerFactory;

    move-result-object v1

    .line 1657
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getMessagingManagerProvider:Ljavax/inject/Provider;

    .line 1669
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/messaging/MessagingModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1668
    invoke-static {v1, v2, v3, v4, v5}, Lorg/briarproject/briar/messaging/MessagingModule_GetValidatorFactory;->create(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/MessagingModule_GetValidatorFactory;

    move-result-object v1

    .line 1667
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getValidatorProvider2:Ljavax/inject/Provider;

    .line 1674
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1675
    invoke-static {v1, v2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->groupInvitationFactoryImplProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl_Factory;

    .line 1679
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->groupInvitationFactoryImplProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl_Factory;

    .line 1678
    invoke-static {v1, v2}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;->create(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupInvitationFactoryProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;

    .line 1683
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePrivateGroupFactoryProvider:Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupInvitationFactoryProvider:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    .line 1682
    invoke-static/range {v2 .. v8}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;->create(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageValidatorFactory;

    move-result-object v1

    .line 1681
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupMessageValidatorProvider:Ljavax/inject/Provider;

    .line 1690
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageFactoryProvider:Lorg/briarproject/bramble/sync/SyncModule_ProvideMessageFactoryFactory;

    .line 1691
    invoke-static {v1, v2}, Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageEncoderImplProvider3:Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;

    .line 1695
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messageEncoderImplProvider3:Lorg/briarproject/briar/sharing/MessageEncoderImpl_Factory;

    .line 1694
    invoke-static {v1, v2}, Lorg/briarproject/briar/sharing/SharingModule_ProvideMessageEncoderFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideMessageEncoderFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideMessageEncoderFactory;

    .line 1699
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideMessageEncoderFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogFactoryFactory;

    .line 1698
    invoke-static/range {v2 .. v8}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingValidatorFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingValidatorFactory;

    move-result-object v1

    .line 1697
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogSharingValidatorProvider:Ljavax/inject/Provider;

    .line 1709
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideMessageEncoderFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataEncoderProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataEncoderFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumFactoryProvider:Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;

    .line 1708
    invoke-static/range {v2 .. v8}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingValidatorFactory;

    move-result-object v1

    .line 1707
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumSharingValidatorProvider:Ljavax/inject/Provider;

    .line 1716
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumFactoryProvider:Lorg/briarproject/briar/forum/ForumModule_ProvideForumFactoryFactory;

    .line 1717
    invoke-static {v1, v2}, Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumMessageParserImplProvider:Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;

    .line 1721
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumMessageParserImplProvider:Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;

    .line 1720
    invoke-static {v1, v2}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumMessageParserProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;

    .line 1724
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v1

    .line 1725
    invoke-static {}, Lorg/briarproject/briar/sharing/SessionEncoderImpl_Factory;->create()Lorg/briarproject/briar/sharing/SessionEncoderImpl_Factory;

    move-result-object v2

    .line 1723
    invoke-static {v1, v2}, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionEncoderProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;

    .line 1728
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v1

    .line 1729
    invoke-static {}, Lorg/briarproject/briar/sharing/SessionParserImpl_Factory;->create()Lorg/briarproject/briar/sharing/SessionParserImpl_Factory;

    move-result-object v2

    .line 1727
    invoke-static {v1, v2}, Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionParserProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;

    .line 1732
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v1

    invoke-static {}, Lorg/briarproject/briar/sharing/ForumInvitationFactoryImpl_Factory;->create()Lorg/briarproject/briar/sharing/ForumInvitationFactoryImpl_Factory;

    move-result-object v2

    .line 1731
    invoke-static {v1, v2}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumInvitationFactoryFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideForumInvitationFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumInvitationFactoryProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideForumInvitationFactoryFactory;

    .line 1733
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideMessageEncoderFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumMessageParserProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumInvitationFactoryProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideForumInvitationFactoryFactory;

    .line 1734
    invoke-static/range {v2 .. v10}, Lorg/briarproject/briar/sharing/ForumProtocolEngineImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumProtocolEngineImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumProtocolEngineImplProvider:Lorg/briarproject/briar/sharing/ForumProtocolEngineImpl_Factory;

    .line 1746
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumProtocolEngineImplProvider:Lorg/briarproject/briar/sharing/ForumProtocolEngineImpl_Factory;

    .line 1745
    invoke-static {v1, v2}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumProtocolEngineFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideForumProtocolEngineFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumProtocolEngineProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideForumProtocolEngineFactory;

    .line 1747
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumMessageParserProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideForumMessageParserFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionEncoderProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionParserProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    iget-object v11, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumProtocolEngineProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideForumProtocolEngineFactory;

    iget-object v12, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumInvitationFactoryProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideForumInvitationFactoryFactory;

    .line 1748
    invoke-static/range {v2 .. v12}, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumSharingManagerImplProvider:Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;

    .line 1763
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getConversationManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->forumSharingManagerImplProvider:Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;

    .line 1762
    invoke-static/range {v2 .. v9}, Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingManagerFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideForumSharingManagerFactory;

    move-result-object v1

    .line 1761
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumSharingManagerProvider:Ljavax/inject/Provider;

    .line 1771
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogFactoryFactory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthorFactoryProvider:Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;

    .line 1772
    invoke-static {v1, v2, v3}, Lorg/briarproject/briar/sharing/BlogMessageParserImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/BlogMessageParserImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogMessageParserImplProvider:Lorg/briarproject/briar/sharing/BlogMessageParserImpl_Factory;

    .line 1776
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogMessageParserImplProvider:Lorg/briarproject/briar/sharing/BlogMessageParserImpl_Factory;

    .line 1775
    invoke-static {v1, v2}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogMessageParserProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;

    .line 1779
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v1

    invoke-static {}, Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl_Factory;->create()Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl_Factory;

    move-result-object v2

    .line 1778
    invoke-static {v1, v2}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogInvitationFactoryProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;

    .line 1780
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageEncoderProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideMessageEncoderFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogMessageParserProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogInvitationFactoryProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;

    .line 1781
    invoke-static/range {v2 .. v10}, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogProtocolEngineImplProvider:Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;

    .line 1793
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogProtocolEngineImplProvider:Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;

    .line 1792
    invoke-static {v1, v2}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogProtocolEngineFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogProtocolEngineFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogProtocolEngineProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogProtocolEngineFactory;

    .line 1794
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMetaDataParserProvider:Lorg/briarproject/bramble/data/DataModule_ProvideMetaDataParserFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogMessageParserProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogMessageParserFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionEncoderProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionEncoderFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSessionParserProvider3:Lorg/briarproject/briar/sharing/SharingModule_ProvideSessionParserFactory;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideContactGroupFactoryProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideContactGroupFactoryFactory;

    iget-object v11, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogProtocolEngineProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogProtocolEngineFactory;

    iget-object v12, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogInvitationFactoryProvider:Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogInvitationFactoryFactory;

    iget-object v13, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogManagerProvider:Ljavax/inject/Provider;

    .line 1795
    invoke-static/range {v2 .. v14}, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/BlogSharingManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogSharingManagerImplProvider:Lorg/briarproject/briar/sharing/BlogSharingManagerImpl_Factory;

    .line 1812
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/sharing/SharingModule;

    move-result-object v2

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getConversationManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogSharingManagerImplProvider:Lorg/briarproject/briar/sharing/BlogSharingManagerImpl_Factory;

    .line 1811
    invoke-static/range {v2 .. v9}, Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;->create(Lorg/briarproject/briar/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/SharingModule_ProvideBlogSharingManagerFactory;

    move-result-object v1

    .line 1810
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogSharingManagerProvider:Ljavax/inject/Provider;

    .line 1820
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->cryptoExecutorModule:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    .line 1821
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$400(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/crypto/CryptoModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

    .line 1822
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3000(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/client/BriarClientModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->briarClientModule:Lorg/briarproject/briar/client/BriarClientModule;

    .line 1823
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/client/ClientModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->clientModule:Lorg/briarproject/bramble/client/ClientModule;

    .line 1824
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$500(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/sync/SyncModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->syncModule:Lorg/briarproject/bramble/sync/SyncModule;

    .line 1825
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/data/DataModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    .line 1826
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/identity/IdentityModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->identityModule:Lorg/briarproject/bramble/identity/IdentityModule;

    .line 1827
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/system/SystemModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->systemModule:Lorg/briarproject/bramble/system/SystemModule;

    .line 1828
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSettingsManagerProvider:Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    .line 1829
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidNotificationManagerImplProvider:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;

    .line 1837
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidNotificationManagerImplProvider:Lorg/briarproject/briar/android/AndroidNotificationManagerImpl_Factory;

    .line 1836
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;->create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideAndroidNotificationManagerFactory;

    move-result-object v1

    .line 1835
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidNotificationManagerProvider:Ljavax/inject/Provider;

    .line 1843
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    .line 1842
    invoke-static {v1, v2}, Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;->create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSharedPreferencesProvider:Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;

    .line 1844
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSharedPreferencesProvider:Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;

    .line 1845
    invoke-static {v1, v2, v3}, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/ScreenFilterMonitorImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->screenFilterMonitorImplProvider:Lorg/briarproject/briar/android/ScreenFilterMonitorImpl_Factory;

    .line 1852
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->screenFilterMonitorImplProvider:Lorg/briarproject/briar/android/ScreenFilterMonitorImpl_Factory;

    .line 1851
    invoke-static {v1, v2, v3}, Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;->create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideScreenFilterMonitorFactory;

    move-result-object v1

    .line 1850
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideScreenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 1855
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/messaging/MessagingModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messagingModule:Lorg/briarproject/briar/messaging/MessagingModule;

    .line 1856
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->groupInvitationModule:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    .line 1857
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->privateGroupModule:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    .line 1858
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/blog/BlogModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogModule:Lorg/briarproject/briar/blog/BlogModule;

    .line 1859
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$2000(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/settings/SettingsModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->settingsModule:Lorg/briarproject/bramble/settings/SettingsModule;

    .line 1860
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1700(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/contact/ContactModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->contactModule:Lorg/briarproject/bramble/contact/ContactModule;

    .line 1861
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1900(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/record/RecordModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->recordModule:Lorg/briarproject/bramble/record/RecordModule;

    .line 1862
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$1600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/transport/TransportModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->transportModule:Lorg/briarproject/bramble/transport/TransportModule;

    .line 1863
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3600(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->keyAgreementModule:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    .line 1864
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    .line 1865
    invoke-static {v1}, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->privateMessageFactoryImplProvider:Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;

    .line 1868
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3300(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/messaging/MessagingModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->privateMessageFactoryImplProvider:Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl_Factory;

    .line 1867
    invoke-static {v1, v2}, Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;->create(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePrivateMessageFactoryProvider:Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;

    .line 1869
    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAuthorFactoryProvider:Lorg/briarproject/bramble/identity/IdentityModule_ProvideAuthorFactoryFactory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClockProvider:Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePrivateMessageFactoryProvider:Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientHelperProvider:Lorg/briarproject/bramble/client/ClientModule_ProvideClientHelperFactory;

    iget-object v6, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideMessageTrackerProvider:Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;

    iget-object v7, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogPostFactoryProvider:Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;

    iget-object v8, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getTransportPropertyManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getMessagingManagerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogManagerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumManagerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIoExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    .line 1870
    invoke-static/range {v2 .. v16}, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->testDataCreatorImplProvider:Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;

    .line 1889
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3700(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/test/TestModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->testDataCreatorImplProvider:Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;

    .line 1888
    invoke-static {v1, v2}, Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;->create(Lorg/briarproject/briar/test/TestModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/test/TestModule_GetTestDataCreatorFactory;

    move-result-object v1

    .line 1887
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getTestDataCreatorProvider:Ljavax/inject/Provider;

    .line 1893
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    .line 1892
    invoke-static {v1, v2}, Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;->create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideDozeWatchdogFactory;

    move-result-object v1

    .line 1891
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDozeWatchdogProvider:Ljavax/inject/Provider;

    .line 1894
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseConfigProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSharedPreferencesProvider:Lorg/briarproject/briar/android/AppModule_ProvideSharedPreferencesFactory;

    iget-object v5, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    .line 1895
    invoke-static {v1, v2, v3, v4, v5}, Lorg/briarproject/bramble/account/BriarAccountManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/account/BriarAccountManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->briarAccountManagerProvider:Lorg/briarproject/bramble/account/BriarAccountManager_Factory;

    .line 1904
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$3800(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/account/BriarAccountModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->briarAccountManagerProvider:Lorg/briarproject/bramble/account/BriarAccountManager_Factory;

    .line 1903
    invoke-static {v1, v2}, Lorg/briarproject/bramble/account/BriarAccountModule_ProvideAccountManagerFactory;->create(Lorg/briarproject/bramble/account/BriarAccountModule;Ljavax/inject/Provider;)Lorg/briarproject/bramble/account/BriarAccountModule_ProvideAccountManagerFactory;

    move-result-object v1

    .line 1902
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAccountManagerProvider:Ljavax/inject/Provider;

    .line 1905
    iget-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSettingsManagerProvider:Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidNotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorProvider:Ljavax/inject/Provider;

    .line 1906
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->lockManagerImplProvider:Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;

    .line 1914
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;

    move-result-object v1

    iget-object v2, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->lockManagerImplProvider:Lorg/briarproject/briar/android/account/LockManagerImpl_Factory;

    .line 1913
    invoke-static {v1, v2, v3, v4}, Lorg/briarproject/briar/android/AppModule_ProvideLockManagerFactory;->create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideLockManagerFactory;

    move-result-object v1

    .line 1912
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLockManagerProvider:Ljavax/inject/Provider;

    .line 1918
    invoke-static/range {p1 .. p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$200(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/bramble/system/AndroidSystemModule;

    move-result-object v1

    iput-object v1, v0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidSystemModule:Lorg/briarproject/bramble/system/AndroidSystemModule;

    return-void
.end method

.method private initialize3(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)V
    .locals 3

    .line 1923
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    .line 1924
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/conversation/ConversationViewModel_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/conversation/ConversationViewModel_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->conversationViewModelProvider:Lorg/briarproject/briar/android/conversation/ConversationViewModel_Factory;

    const/4 v0, 0x1

    .line 1929
    invoke-static {v0}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v0

    const-class v1, Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    iget-object v2, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->conversationViewModelProvider:Lorg/briarproject/briar/android/conversation/ConversationViewModel_Factory;

    .line 1930
    invoke-virtual {v0, v1, v2}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object v0

    .line 1931
    invoke-virtual {v0}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->mapOfClassOfAndProviderOfViewModelProvider:Ljavax/inject/Provider;

    .line 1932
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->mapOfClassOfAndProviderOfViewModelProvider:Ljavax/inject/Provider;

    .line 1934
    invoke-static {v0}, Lorg/briarproject/briar/android/viewmodel/ViewModelFactory_Factory;->create(Ljavax/inject/Provider;)Lorg/briarproject/briar/android/viewmodel/ViewModelFactory_Factory;

    move-result-object v0

    .line 1933
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->viewModelFactoryProvider:Ljavax/inject/Provider;

    .line 1935
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideSettingsManagerProvider:Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;

    .line 1936
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->recentEmojiImplProvider:Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;

    .line 1943
    invoke-static {p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->recentEmojiImplProvider:Lorg/briarproject/briar/android/RecentEmojiImpl_Factory;

    .line 1942
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;->create(Lorg/briarproject/briar/android/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/AppModule_ProvideRecentEmojiFactory;

    move-result-object v0

    .line 1941
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideRecentEmojiProvider:Ljavax/inject/Provider;

    .line 1944
    invoke-static {p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->access$100(Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;)Lorg/briarproject/briar/android/AppModule;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->appModule:Lorg/briarproject/briar/android/AppModule;

    return-void
.end method

.method private injectBriarReportSender(Lorg/briarproject/briar/android/reporting/BriarReportSender;)Lorg/briarproject/briar/android/reporting/BriarReportSender;
    .locals 1

    .line 2486
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDevReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/reporting/DevReporter;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/reporting/BriarReportSender_MembersInjector;->injectReporter(Lorg/briarproject/briar/android/reporting/BriarReportSender;Lorg/briarproject/bramble/api/reporting/DevReporter;)V

    return-object p1
.end method

.method private injectBriarService(Lorg/briarproject/briar/android/BriarService;)Lorg/briarproject/briar/android/BriarService;
    .locals 1

    .line 2473
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidNotificationManagerProvider:Ljavax/inject/Provider;

    .line 2474
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 2473
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/BriarService_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 2475
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAccountManagerProvider:Ljavax/inject/Provider;

    .line 2476
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    .line 2475
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/BriarService_MembersInjector;->injectAccountManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/account/AccountManager;)V

    .line 2477
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/BriarService_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 2478
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    .line 2479
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 2478
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/BriarService_MembersInjector;->injectLifecycleManager(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 2480
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidExecutorProvider:Ljavax/inject/Provider;

    .line 2481
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    .line 2480
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/BriarService_MembersInjector;->injectAndroidExecutor(Lorg/briarproject/briar/android/BriarService;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V

    return-object p1
.end method

.method private injectEagerSingletons(Lorg/briarproject/bramble/contact/ContactModule$EagerSingletons;)Lorg/briarproject/bramble/contact/ContactModule$EagerSingletons;
    .locals 1

    .line 2305
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    .line 2306
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 2305
    invoke-static {p1, v0}, Lorg/briarproject/bramble/contact/ContactModule_EagerSingletons_MembersInjector;->injectContactManager(Lorg/briarproject/bramble/contact/ContactModule$EagerSingletons;Lorg/briarproject/bramble/api/contact/ContactManager;)V

    return-object p1
.end method

.method private injectEagerSingletons10(Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;)Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;
    .locals 1

    .line 2369
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideScheduledExecutorServiceProvider:Ljavax/inject/Provider;

    .line 2370
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 2369
    invoke-static {p1, v0}, Lorg/briarproject/bramble/system/SystemModule_EagerSingletons_MembersInjector;->injectScheduledExecutorService(Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object p1
.end method

.method private injectEagerSingletons11(Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;)Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;
    .locals 1

    .line 2376
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideKeyManagerProvider:Ljavax/inject/Provider;

    .line 2377
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/transport/KeyManager;

    .line 2376
    invoke-static {p1, v0}, Lorg/briarproject/bramble/transport/TransportModule_EagerSingletons_MembersInjector;->injectKeyManager(Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;Lorg/briarproject/bramble/api/transport/KeyManager;)V

    return-object p1
.end method

.method private injectEagerSingletons12(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;)Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;
    .locals 1

    .line 2383
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningManagerProvider:Ljavax/inject/Provider;

    .line 2384
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 2383
    invoke-static {p1, v0}, Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;->injectClientVersioningManager(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;)V

    .line 2385
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideClientVersioningValidatorProvider:Ljavax/inject/Provider;

    .line 2386
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2385
    invoke-static {p1, v0}, Lorg/briarproject/bramble/versioning/VersioningModule_EagerSingletons_MembersInjector;->injectClientVersioningValidator(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;Ljava/lang/Object;)V

    return-object p1
.end method

.method private injectEagerSingletons13(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;)Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;
    .locals 1

    .line 2391
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogPostValidatorProvider:Ljavax/inject/Provider;

    .line 2392
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2391
    invoke-static {p1, v0}, Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;->injectBlogPostValidator(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;Ljava/lang/Object;)V

    .line 2393
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogManagerProvider:Ljavax/inject/Provider;

    .line 2394
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogManager;

    .line 2393
    invoke-static {p1, v0}, Lorg/briarproject/briar/blog/BlogModule_EagerSingletons_MembersInjector;->injectBlogManager(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;Lorg/briarproject/briar/api/blog/BlogManager;)V

    return-object p1
.end method

.method private injectEagerSingletons14(Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;)Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;
    .locals 1

    .line 2399
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideFeedManagerProvider:Ljavax/inject/Provider;

    .line 2400
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/feed/FeedManager;

    .line 2399
    invoke-static {p1, v0}, Lorg/briarproject/briar/feed/FeedModule_EagerSingletons_MembersInjector;->injectFeedManager(Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;Lorg/briarproject/briar/api/feed/FeedManager;)V

    return-object p1
.end method

.method private injectEagerSingletons15(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;)Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;
    .locals 1

    .line 2406
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumManagerProvider:Ljavax/inject/Provider;

    .line 2407
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumManager;

    .line 2406
    invoke-static {p1, v0}, Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;->injectForumManager(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;Lorg/briarproject/briar/api/forum/ForumManager;)V

    .line 2408
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumPostValidatorProvider:Ljavax/inject/Provider;

    .line 2409
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2408
    invoke-static {p1, v0}, Lorg/briarproject/briar/forum/ForumModule_EagerSingletons_MembersInjector;->injectForumPostValidator(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;Ljava/lang/Object;)V

    return-object p1
.end method

.method private injectEagerSingletons16(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;
    .locals 1

    .line 2415
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupInvitationValidatorProvider:Ljavax/inject/Provider;

    .line 2416
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2415
    invoke-static {p1, v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;->injectGroupInvitationValidator(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;Ljava/lang/Object;)V

    .line 2417
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupInvitationManagerProvider:Ljavax/inject/Provider;

    .line 2418
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    .line 2417
    invoke-static {p1, v0}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_EagerSingletons_MembersInjector;->injectGroupInvitationManager(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;)V

    return-object p1
.end method

.method private injectEagerSingletons17(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;)Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;
    .locals 1

    .line 2424
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidatorProvider:Ljavax/inject/Provider;

    .line 2425
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2424
    invoke-static {p1, v0}, Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;->injectIntroductionValidator(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;Ljava/lang/Object;)V

    .line 2426
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIntroductionManagerProvider:Ljavax/inject/Provider;

    .line 2427
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/introduction/IntroductionManager;

    .line 2426
    invoke-static {p1, v0}, Lorg/briarproject/briar/introduction/IntroductionModule_EagerSingletons_MembersInjector;->injectIntroductionManager(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;Lorg/briarproject/briar/api/introduction/IntroductionManager;)V

    return-object p1
.end method

.method private injectEagerSingletons18(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;)Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;
    .locals 1

    .line 2433
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getMessagingManagerProvider:Ljavax/inject/Provider;

    .line 2434
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/messaging/MessagingManager;

    .line 2433
    invoke-static {p1, v0}, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->injectMessagingManager(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;Lorg/briarproject/briar/api/messaging/MessagingManager;)V

    .line 2435
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getConversationManagerProvider:Ljavax/inject/Provider;

    .line 2436
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 2435
    invoke-static {p1, v0}, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->injectConversationManager(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;Lorg/briarproject/briar/api/conversation/ConversationManager;)V

    .line 2437
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getValidatorProvider2:Ljavax/inject/Provider;

    .line 2438
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2437
    invoke-static {p1, v0}, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->injectPrivateMessageValidator(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;Ljava/lang/Object;)V

    return-object p1
.end method

.method private injectEagerSingletons19(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;)Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;
    .locals 1

    .line 2444
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupMessageValidatorProvider:Ljavax/inject/Provider;

    .line 2445
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2444
    invoke-static {p1, v0}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;->injectGroupMessageValidator(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;Ljava/lang/Object;)V

    .line 2446
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupManagerProvider:Ljavax/inject/Provider;

    .line 2447
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 2446
    invoke-static {p1, v0}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_EagerSingletons_MembersInjector;->injectGroupManager(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;)V

    return-object p1
.end method

.method private injectEagerSingletons2(Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;)Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;
    .locals 1

    .line 2312
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCryptoExecutorServiceProvider:Ljavax/inject/Provider;

    .line 2313
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 2312
    invoke-static {p1, v0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_EagerSingletons_MembersInjector;->injectCryptoExecutor(Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;Ljava/util/concurrent/ExecutorService;)V

    return-object p1
.end method

.method private injectEagerSingletons20(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;)Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;
    .locals 1

    .line 2453
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogSharingValidatorProvider:Ljavax/inject/Provider;

    .line 2454
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2453
    invoke-static {p1, v0}, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->injectBlogSharingValidator(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Ljava/lang/Object;)V

    .line 2455
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumSharingValidatorProvider:Ljavax/inject/Provider;

    .line 2456
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2455
    invoke-static {p1, v0}, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->injectForumSharingValidator(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Ljava/lang/Object;)V

    .line 2457
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumSharingManagerProvider:Ljavax/inject/Provider;

    .line 2458
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumSharingManager;

    .line 2457
    invoke-static {p1, v0}, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->injectForumSharingManager(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Lorg/briarproject/briar/api/forum/ForumSharingManager;)V

    .line 2459
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogSharingManagerProvider:Ljavax/inject/Provider;

    .line 2460
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogSharingManager;

    .line 2459
    invoke-static {p1, v0}, Lorg/briarproject/briar/sharing/SharingModule_EagerSingletons_MembersInjector;->injectBlogSharingManager(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;Lorg/briarproject/briar/api/blog/BlogSharingManager;)V

    return-object p1
.end method

.method private injectEagerSingletons21(Lorg/briarproject/briar/android/AppModule$EagerSingletons;)Lorg/briarproject/briar/android/AppModule$EagerSingletons;
    .locals 1

    .line 2503
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidNotificationManagerProvider:Ljavax/inject/Provider;

    .line 2504
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 2503
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->injectAndroidNotificationManager(Ljava/lang/Object;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 2506
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getNetworkUsageLogger()Lorg/briarproject/briar/android/NetworkUsageLogger;

    move-result-object v0

    .line 2505
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->injectNetworkUsageLogger(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2507
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDozeWatchdogProvider:Ljavax/inject/Provider;

    .line 2508
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/DozeWatchdog;

    .line 2507
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->injectDozeWatchdog(Ljava/lang/Object;Lorg/briarproject/briar/api/android/DozeWatchdog;)V

    .line 2509
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideRecentEmojiProvider:Ljavax/inject/Provider;

    .line 2510
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vanniktech/emoji/RecentEmoji;

    .line 2509
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/AppModule_EagerSingletons_MembersInjector;->injectRecentEmoji(Ljava/lang/Object;Lcom/vanniktech/emoji/RecentEmoji;)V

    return-object p1
.end method

.method private injectEagerSingletons3(Lorg/briarproject/bramble/db/DatabaseExecutorModule$EagerSingletons;)Lorg/briarproject/bramble/db/DatabaseExecutorModule$EagerSingletons;
    .locals 1

    .line 2319
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorServiceProvider:Ljavax/inject/Provider;

    .line 2320
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 2319
    invoke-static {p1, v0}, Lorg/briarproject/bramble/db/DatabaseExecutorModule_EagerSingletons_MembersInjector;->injectExecutorService(Lorg/briarproject/bramble/db/DatabaseExecutorModule$EagerSingletons;Ljava/util/concurrent/ExecutorService;)V

    return-object p1
.end method

.method private injectEagerSingletons4(Lorg/briarproject/bramble/identity/IdentityModule$EagerSingletons;)Lorg/briarproject/bramble/identity/IdentityModule$EagerSingletons;
    .locals 1

    .line 2326
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    .line 2327
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 2326
    invoke-static {p1, v0}, Lorg/briarproject/bramble/identity/IdentityModule_EagerSingletons_MembersInjector;->injectIdentityManager(Lorg/briarproject/bramble/identity/IdentityModule$EagerSingletons;Lorg/briarproject/bramble/api/identity/IdentityManager;)V

    return-object p1
.end method

.method private injectEagerSingletons5(Lorg/briarproject/bramble/lifecycle/LifecycleModule$EagerSingletons;)Lorg/briarproject/bramble/lifecycle/LifecycleModule$EagerSingletons;
    .locals 1

    .line 2333
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIoExecutorProvider:Ljavax/inject/Provider;

    .line 2334
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 2333
    invoke-static {p1, v0}, Lorg/briarproject/bramble/lifecycle/LifecycleModule_EagerSingletons_MembersInjector;->injectExecutor(Lorg/briarproject/bramble/lifecycle/LifecycleModule$EagerSingletons;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method private injectEagerSingletons6(Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;)Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;
    .locals 1

    .line 2340
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 2341
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/PluginManager;

    .line 2340
    invoke-static {p1, v0}, Lorg/briarproject/bramble/plugin/PluginModule_EagerSingletons_MembersInjector;->injectPluginManager(Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;Lorg/briarproject/bramble/api/plugin/PluginManager;)V

    return-object p1
.end method

.method private injectEagerSingletons7(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;)Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;
    .locals 1

    .line 2347
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getValidatorProvider:Ljavax/inject/Provider;

    .line 2348
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2347
    invoke-static {p1, v0}, Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;->injectTransportPropertyValidator(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;Ljava/lang/Object;)V

    .line 2349
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getTransportPropertyManagerProvider:Ljavax/inject/Provider;

    .line 2350
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    .line 2349
    invoke-static {p1, v0}, Lorg/briarproject/bramble/properties/PropertiesModule_EagerSingletons_MembersInjector;->injectTransportPropertyManager(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;)V

    return-object p1
.end method

.method private injectEagerSingletons8(Lorg/briarproject/bramble/reporting/ReportingModule$EagerSingletons;)Lorg/briarproject/bramble/reporting/ReportingModule$EagerSingletons;
    .locals 1

    .line 2356
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDevReporterProvider:Ljavax/inject/Provider;

    .line 2357
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/reporting/DevReporter;

    .line 2356
    invoke-static {p1, v0}, Lorg/briarproject/bramble/reporting/ReportingModule_EagerSingletons_MembersInjector;->injectDevReporter(Lorg/briarproject/bramble/reporting/ReportingModule$EagerSingletons;Lorg/briarproject/bramble/api/reporting/DevReporter;)V

    return-object p1
.end method

.method private injectEagerSingletons9(Lorg/briarproject/bramble/sync/SyncModule$EagerSingletons;)Lorg/briarproject/bramble/sync/SyncModule$EagerSingletons;
    .locals 1

    .line 2362
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideValidationManagerProvider:Ljavax/inject/Provider;

    .line 2363
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/sync/ValidationManager;

    .line 2362
    invoke-static {p1, v0}, Lorg/briarproject/bramble/sync/SyncModule_EagerSingletons_MembersInjector;->injectValidationManager(Lorg/briarproject/bramble/sync/SyncModule$EagerSingletons;Lorg/briarproject/bramble/api/sync/ValidationManager;)V

    return-object p1
.end method

.method private injectNotificationCleanupService(Lorg/briarproject/briar/android/NotificationCleanupService;)Lorg/briarproject/briar/android/NotificationCleanupService;
    .locals 1

    .line 2492
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidNotificationManagerProvider:Ljavax/inject/Provider;

    .line 2493
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 2492
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/NotificationCleanupService_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/NotificationCleanupService;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    return-object p1
.end method

.method private injectSignInReminderReceiver(Lorg/briarproject/briar/android/login/SignInReminderReceiver;)Lorg/briarproject/briar/android/login/SignInReminderReceiver;
    .locals 1

    .line 2465
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAccountManagerProvider:Ljavax/inject/Provider;

    .line 2466
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    .line 2465
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;->injectAccountManager(Lorg/briarproject/briar/android/login/SignInReminderReceiver;Lorg/briarproject/bramble/api/account/AccountManager;)V

    .line 2467
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidNotificationManagerProvider:Ljavax/inject/Provider;

    .line 2468
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 2467
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/SignInReminderReceiver_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/login/SignInReminderReceiver;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    return-object p1
.end method

.method private injectTextInputView(Lorg/briarproject/briar/android/view/TextInputView;)Lorg/briarproject/briar/android/view/TextInputView;
    .locals 1

    .line 2498
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideRecentEmojiProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vanniktech/emoji/RecentEmoji;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/view/TextInputView_MembersInjector;->injectRecentEmoji(Lorg/briarproject/briar/android/view/TextInputView;Lcom/vanniktech/emoji/RecentEmoji;)V

    return-object p1
.end method


# virtual methods
.method public accountManager()Lorg/briarproject/bramble/api/account/AccountManager;
    .locals 1

    .line 2249
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAccountManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    return-object v0
.end method

.method public androidExecutor()Lorg/briarproject/bramble/api/system/AndroidExecutor;
    .locals 1

    .line 2219
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    return-object v0
.end method

.method public androidNotificationManager()Lorg/briarproject/briar/api/android/AndroidNotificationManager;
    .locals 1

    .line 2092
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideAndroidNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    return-object v0
.end method

.method public blogManager()Lorg/briarproject/briar/api/blog/BlogManager;
    .locals 1

    .line 2171
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogManager;

    return-object v0
.end method

.method public blogPostFactory()Lorg/briarproject/briar/api/blog/BlogPostFactory;
    .locals 2

    .line 2176
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->blogModule:Lorg/briarproject/briar/blog/BlogModule;

    .line 2177
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getBlogPostFactoryImpl()Ljava/lang/Object;

    move-result-object v1

    .line 2176
    invoke-static {v0, v1}, Lorg/briarproject/briar/blog/BlogModule_ProvideBlogPostFactoryFactory;->proxyProvideBlogPostFactory(Lorg/briarproject/briar/blog/BlogModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/blog/BlogPostFactory;

    move-result-object v0

    return-object v0
.end method

.method public blogSharingManager()Lorg/briarproject/briar/api/blog/BlogSharingManager;
    .locals 1

    .line 2166
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideBlogSharingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogSharingManager;

    return-object v0
.end method

.method public circumventionProvider()Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;
    .locals 1

    .line 2265
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideCircumventionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    return-object v0
.end method

.method public clock()Lorg/briarproject/bramble/api/system/Clock;
    .locals 1

    .line 2229
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->systemModule:Lorg/briarproject/bramble/system/SystemModule;

    invoke-static {v0}, Lorg/briarproject/bramble/system/SystemModule_ProvideClockFactory;->proxyProvideClock(Lorg/briarproject/bramble/system/SystemModule;)Lorg/briarproject/bramble/api/system/Clock;

    move-result-object v0

    return-object v0
.end method

.method public connectionRegistry()Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;
    .locals 1

    .line 2102
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideConnectionRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    return-object v0
.end method

.method public contactExchangeTask()Lorg/briarproject/bramble/api/contact/ContactExchangeTask;
    .locals 2

    .line 2188
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->contactModule:Lorg/briarproject/bramble/contact/ContactModule;

    .line 2189
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactExchangeTaskImpl()Ljava/lang/Object;

    move-result-object v1

    .line 2188
    invoke-static {v0, v1}, Lorg/briarproject/bramble/contact/ContactModule_ProvideContactExchangeTaskFactory;->proxyProvideContactExchangeTask(Lorg/briarproject/bramble/contact/ContactModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

    move-result-object v0

    return-object v0
.end method

.method public contactManager()Lorg/briarproject/bramble/api/contact/ContactManager;
    .locals 1

    .line 2107
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getContactManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactManager;

    return-object v0
.end method

.method public conversationManager()Lorg/briarproject/briar/api/conversation/ConversationManager;
    .locals 1

    .line 2112
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getConversationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/conversation/ConversationManager;

    return-object v0
.end method

.method public cryptoExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 2049
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->cryptoExecutorModule:Lorg/briarproject/bramble/crypto/CryptoExecutorModule;

    invoke-static {v0}, Lorg/briarproject/bramble/crypto/CryptoExecutorModule_ProvideCryptoExecutorFactory;->proxyProvideCryptoExecutor(Lorg/briarproject/bramble/crypto/CryptoExecutorModule;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public databaseExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 2061
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public dozeWatchdog()Lorg/briarproject/briar/api/android/DozeWatchdog;
    .locals 1

    .line 2239
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDozeWatchdogProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/DozeWatchdog;

    return-object v0
.end method

.method public eventBus()Lorg/briarproject/bramble/api/event/EventBus;
    .locals 1

    .line 2087
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    return-object v0
.end method

.method public feedManager()Lorg/briarproject/briar/api/feed/FeedManager;
    .locals 1

    .line 2224
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideFeedManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/feed/FeedManager;

    return-object v0
.end method

.method public forumManager()Lorg/briarproject/briar/api/forum/ForumManager;
    .locals 1

    .line 2156
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumManager;

    return-object v0
.end method

.method public forumSharingManager()Lorg/briarproject/briar/api/forum/ForumSharingManager;
    .locals 1

    .line 2161
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideForumSharingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumSharingManager;

    return-object v0
.end method

.method public groupInvitationFactory()Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;
    .locals 2

    .line 2133
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->groupInvitationModule:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;

    .line 2134
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getGroupInvitationFactoryImpl()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule_ProvideGroupInvitationFactoryFactory;->proxyProvideGroupInvitationFactory(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

    move-result-object v0

    return-object v0
.end method

.method public groupInvitationManager()Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;
    .locals 1

    .line 2139
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupInvitationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    return-object v0
.end method

.method public groupMessageFactory()Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;
    .locals 2

    .line 2150
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->privateGroupModule:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    .line 2151
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getGroupMessageFactoryImpl()Ljava/lang/Object;

    move-result-object v1

    .line 2150
    invoke-static {v0, v1}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvideGroupMessageFactoryFactory;->proxyProvideGroupMessageFactory(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    move-result-object v0

    return-object v0
.end method

.method public identityManager()Lorg/briarproject/bramble/api/identity/IdentityManager;
    .locals 1

    .line 2077
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/identity/IdentityManager;

    return-object v0
.end method

.method public inject(Lorg/briarproject/bramble/contact/ContactModule$EagerSingletons;)V
    .locals 0

    .line 1949
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons(Lorg/briarproject/bramble/contact/ContactModule$EagerSingletons;)Lorg/briarproject/bramble/contact/ContactModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;)V
    .locals 0

    .line 1954
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons2(Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;)Lorg/briarproject/bramble/crypto/CryptoExecutorModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/bramble/db/DatabaseExecutorModule$EagerSingletons;)V
    .locals 0

    .line 1959
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons3(Lorg/briarproject/bramble/db/DatabaseExecutorModule$EagerSingletons;)Lorg/briarproject/bramble/db/DatabaseExecutorModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/bramble/identity/IdentityModule$EagerSingletons;)V
    .locals 0

    .line 1964
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons4(Lorg/briarproject/bramble/identity/IdentityModule$EagerSingletons;)Lorg/briarproject/bramble/identity/IdentityModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/bramble/lifecycle/LifecycleModule$EagerSingletons;)V
    .locals 0

    .line 1969
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons5(Lorg/briarproject/bramble/lifecycle/LifecycleModule$EagerSingletons;)Lorg/briarproject/bramble/lifecycle/LifecycleModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;)V
    .locals 0

    .line 1974
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons6(Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;)Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;)V
    .locals 0

    .line 1979
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons7(Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;)Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/bramble/reporting/ReportingModule$EagerSingletons;)V
    .locals 0

    .line 1984
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons8(Lorg/briarproject/bramble/reporting/ReportingModule$EagerSingletons;)Lorg/briarproject/bramble/reporting/ReportingModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/bramble/sync/SyncModule$EagerSingletons;)V
    .locals 0

    .line 1989
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons9(Lorg/briarproject/bramble/sync/SyncModule$EagerSingletons;)Lorg/briarproject/bramble/sync/SyncModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;)V
    .locals 0

    .line 1994
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons10(Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;)Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;)V
    .locals 0

    .line 1999
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons11(Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;)Lorg/briarproject/bramble/transport/TransportModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;)V
    .locals 0

    .line 2004
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons12(Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;)Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/AppModule$EagerSingletons;)V
    .locals 0

    .line 2300
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons21(Lorg/briarproject/briar/android/AppModule$EagerSingletons;)Lorg/briarproject/briar/android/AppModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/BriarService;)V
    .locals 0

    .line 2280
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectBriarService(Lorg/briarproject/briar/android/BriarService;)Lorg/briarproject/briar/android/BriarService;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/NotificationCleanupService;)V
    .locals 0

    .line 2290
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectNotificationCleanupService(Lorg/briarproject/briar/android/NotificationCleanupService;)Lorg/briarproject/briar/android/NotificationCleanupService;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/login/SignInReminderReceiver;)V
    .locals 0

    .line 2275
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectSignInReminderReceiver(Lorg/briarproject/briar/android/login/SignInReminderReceiver;)Lorg/briarproject/briar/android/login/SignInReminderReceiver;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/reporting/BriarReportSender;)V
    .locals 0

    .line 2285
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectBriarReportSender(Lorg/briarproject/briar/android/reporting/BriarReportSender;)Lorg/briarproject/briar/android/reporting/BriarReportSender;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/view/TextInputView;)V
    .locals 0

    .line 2295
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectTextInputView(Lorg/briarproject/briar/android/view/TextInputView;)Lorg/briarproject/briar/android/view/TextInputView;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;)V
    .locals 0

    .line 2009
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons13(Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;)Lorg/briarproject/briar/blog/BlogModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;)V
    .locals 0

    .line 2014
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons14(Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;)Lorg/briarproject/briar/feed/FeedModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;)V
    .locals 0

    .line 2019
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons15(Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;)Lorg/briarproject/briar/forum/ForumModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;)V
    .locals 0

    .line 2029
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons17(Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;)Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;)V
    .locals 0

    .line 2034
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons18(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;)Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;)V
    .locals 0

    .line 2039
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons19(Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;)Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;)V
    .locals 0

    .line 2024
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons16(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;)V
    .locals 0

    .line 2044
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->injectEagerSingletons20(Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;)Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;

    return-void
.end method

.method public introductionManager()Lorg/briarproject/briar/api/introduction/IntroductionManager;
    .locals 1

    .line 2214
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIntroductionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/introduction/IntroductionManager;

    return-object v0
.end method

.method public ioExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 2244
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideIoExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public keyAgreementTask()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;
    .locals 2

    .line 2194
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->keyAgreementModule:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    .line 2195
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getKeyAgreementTaskImpl()Ljava/lang/Object;

    move-result-object v1

    .line 2194
    invoke-static {v0, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvideKeyAgreementTaskFactory;->proxyProvideKeyAgreementTask(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;

    move-result-object v0

    return-object v0
.end method

.method public lifecycleManager()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;
    .locals 1

    .line 2072
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLifecycleManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    return-object v0
.end method

.method public locationUtils()Lorg/briarproject/bramble/api/system/LocationUtils;
    .locals 2

    .line 2259
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->androidSystemModule:Lorg/briarproject/bramble/system/AndroidSystemModule;

    .line 2260
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getAndroidLocationUtils()Ljava/lang/Object;

    move-result-object v1

    .line 2259
    invoke-static {v0, v1}, Lorg/briarproject/bramble/system/AndroidSystemModule_ProvideLocationUtilsFactory;->proxyProvideLocationUtils(Lorg/briarproject/bramble/system/AndroidSystemModule;Ljava/lang/Object;)Lorg/briarproject/bramble/api/system/LocationUtils;

    move-result-object v0

    return-object v0
.end method

.method public lockManager()Lorg/briarproject/briar/api/android/LockManager;
    .locals 1

    .line 2254
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideLockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    return-object v0
.end method

.method public messageTracker()Lorg/briarproject/briar/api/client/MessageTracker;
    .locals 2

    .line 2066
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->briarClientModule:Lorg/briarproject/briar/client/BriarClientModule;

    .line 2067
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getMessageTrackerImpl()Ljava/lang/Object;

    move-result-object v1

    .line 2066
    invoke-static {v0, v1}, Lorg/briarproject/briar/client/BriarClientModule_ProvideMessageTrackerFactory;->proxyProvideMessageTracker(Lorg/briarproject/briar/client/BriarClientModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/client/MessageTracker;

    move-result-object v0

    return-object v0
.end method

.method public messagingManager()Lorg/briarproject/briar/api/messaging/MessagingManager;
    .locals 1

    .line 2117
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getMessagingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/messaging/MessagingManager;

    return-object v0
.end method

.method public passwordStrengthIndicator()Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;
    .locals 1

    .line 2055
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->cryptoModule:Lorg/briarproject/bramble/crypto/CryptoModule;

    .line 2056
    invoke-static {v0}, Lorg/briarproject/bramble/crypto/CryptoModule_ProvidePasswordStrengthEstimatorFactory;->proxyProvidePasswordStrengthEstimator(Lorg/briarproject/bramble/crypto/CryptoModule;)Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;

    move-result-object v0

    return-object v0
.end method

.method public payloadEncoder()Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;
    .locals 2

    .line 2200
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->keyAgreementModule:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    .line 2202
    invoke-static {v1}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfWriterFactoryFactory;->proxyProvideBdfWriterFactory(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfWriterFactory;

    move-result-object v1

    .line 2200
    invoke-static {v0, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvidePayloadEncoderFactory;->proxyProvidePayloadEncoder(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Lorg/briarproject/bramble/api/data/BdfWriterFactory;)Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    move-result-object v0

    return-object v0
.end method

.method public payloadParser()Lorg/briarproject/bramble/api/keyagreement/PayloadParser;
    .locals 2

    .line 2207
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->keyAgreementModule:Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->dataModule:Lorg/briarproject/bramble/data/DataModule;

    .line 2209
    invoke-static {v1}, Lorg/briarproject/bramble/data/DataModule_ProvideBdfReaderFactoryFactory;->proxyProvideBdfReaderFactory(Lorg/briarproject/bramble/data/DataModule;)Lorg/briarproject/bramble/api/data/BdfReaderFactory;

    move-result-object v1

    .line 2207
    invoke-static {v0, v1}, Lorg/briarproject/bramble/keyagreement/KeyAgreementModule_ProvidePayloadParserFactory;->proxyProvidePayloadParser(Lorg/briarproject/bramble/keyagreement/KeyAgreementModule;Lorg/briarproject/bramble/api/data/BdfReaderFactory;)Lorg/briarproject/bramble/api/keyagreement/PayloadParser;

    move-result-object v0

    return-object v0
.end method

.method public pluginManager()Lorg/briarproject/bramble/api/plugin/PluginManager;
    .locals 1

    .line 2082
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/PluginManager;

    return-object v0
.end method

.method public privateGroupFactory()Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;
    .locals 2

    .line 2144
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->privateGroupModule:Lorg/briarproject/briar/privategroup/PrivateGroupModule;

    .line 2145
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getPrivateGroupFactoryImpl()Ljava/lang/Object;

    move-result-object v1

    .line 2144
    invoke-static {v0, v1}, Lorg/briarproject/briar/privategroup/PrivateGroupModule_ProvidePrivateGroupFactoryFactory;->proxyProvidePrivateGroupFactory(Lorg/briarproject/briar/privategroup/PrivateGroupModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    move-result-object v0

    return-object v0
.end method

.method public privateGroupManager()Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;
    .locals 1

    .line 2128
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideGroupManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    return-object v0
.end method

.method public privateMessageFactory()Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;
    .locals 2

    .line 2122
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->messagingModule:Lorg/briarproject/briar/messaging/MessagingModule;

    .line 2123
    invoke-direct {p0}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getPrivateMessageFactoryImpl()Ljava/lang/Object;

    move-result-object v1

    .line 2122
    invoke-static {v0, v1}, Lorg/briarproject/briar/messaging/MessagingModule_ProvidePrivateMessageFactoryFactory;->proxyProvidePrivateMessageFactory(Lorg/briarproject/briar/messaging/MessagingModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    move-result-object v0

    return-object v0
.end method

.method public screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;
    .locals 1

    .line 2097
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideScreenFilterMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    return-object v0
.end method

.method public settingsManager()Lorg/briarproject/bramble/api/settings/SettingsManager;
    .locals 2

    .line 2182
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->settingsModule:Lorg/briarproject/bramble/settings/SettingsModule;

    iget-object v1, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->provideDatabaseComponentProvider:Ljavax/inject/Provider;

    .line 2183
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 2182
    invoke-static {v0, v1}, Lorg/briarproject/bramble/settings/SettingsModule_ProvideSettingsManagerFactory;->proxyProvideSettingsManager(Lorg/briarproject/bramble/settings/SettingsModule;Lorg/briarproject/bramble/api/db/DatabaseComponent;)Lorg/briarproject/bramble/api/settings/SettingsManager;

    move-result-object v0

    return-object v0
.end method

.method public testDataCreator()Lorg/briarproject/briar/api/test/TestDataCreator;
    .locals 1

    .line 2234
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->getTestDataCreatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/test/TestDataCreator;

    return-object v0
.end method

.method public viewModelFactory()Landroid/arch/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 2270
    iget-object v0, p0, Lorg/briarproject/briar/android/DaggerAndroidComponent;->viewModelFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method
