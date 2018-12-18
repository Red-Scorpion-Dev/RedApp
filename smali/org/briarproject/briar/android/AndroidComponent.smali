.class public interface abstract Lorg/briarproject/briar/android/AndroidComponent;
.super Ljava/lang/Object;
.source "AndroidComponent.java"

# interfaces
.implements Lorg/briarproject/bramble/BrambleCoreEagerSingletons;
.implements Lorg/briarproject/briar/BriarCoreEagerSingletons;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lorg/briarproject/bramble/BrambleCoreModule;,
        Lorg/briarproject/briar/BriarCoreModule;,
        Lorg/briarproject/bramble/BrambleAndroidModule;,
        Lorg/briarproject/bramble/account/BriarAccountModule;,
        Lorg/briarproject/briar/android/AppModule;
    }
.end annotation


# virtual methods
.method public abstract accountManager()Lorg/briarproject/bramble/api/account/AccountManager;
.end method

.method public abstract androidExecutor()Lorg/briarproject/bramble/api/system/AndroidExecutor;
.end method

.method public abstract androidNotificationManager()Lorg/briarproject/briar/api/android/AndroidNotificationManager;
.end method

.method public abstract blogManager()Lorg/briarproject/briar/api/blog/BlogManager;
.end method

.method public abstract blogPostFactory()Lorg/briarproject/briar/api/blog/BlogPostFactory;
.end method

.method public abstract blogSharingManager()Lorg/briarproject/briar/api/blog/BlogSharingManager;
.end method

.method public abstract circumventionProvider()Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;
.end method

.method public abstract clock()Lorg/briarproject/bramble/api/system/Clock;
.end method

.method public abstract connectionRegistry()Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;
.end method

.method public abstract contactExchangeTask()Lorg/briarproject/bramble/api/contact/ContactExchangeTask;
.end method

.method public abstract contactManager()Lorg/briarproject/bramble/api/contact/ContactManager;
.end method

.method public abstract conversationManager()Lorg/briarproject/briar/api/conversation/ConversationManager;
.end method

.method public abstract cryptoExecutor()Ljava/util/concurrent/Executor;
    .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
    .end annotation
.end method

.method public abstract databaseExecutor()Ljava/util/concurrent/Executor;
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end method

.method public abstract dozeWatchdog()Lorg/briarproject/briar/api/android/DozeWatchdog;
.end method

.method public abstract eventBus()Lorg/briarproject/bramble/api/event/EventBus;
.end method

.method public abstract feedManager()Lorg/briarproject/briar/api/feed/FeedManager;
.end method

.method public abstract forumManager()Lorg/briarproject/briar/api/forum/ForumManager;
.end method

.method public abstract forumSharingManager()Lorg/briarproject/briar/api/forum/ForumSharingManager;
.end method

.method public abstract groupInvitationFactory()Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;
.end method

.method public abstract groupInvitationManager()Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;
.end method

.method public abstract groupMessageFactory()Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;
.end method

.method public abstract identityManager()Lorg/briarproject/bramble/api/identity/IdentityManager;
.end method

.method public abstract inject(Lorg/briarproject/briar/android/AppModule$EagerSingletons;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/BriarService;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/NotificationCleanupService;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/login/SignInReminderReceiver;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/reporting/BriarReportSender;)V
.end method

.method public abstract inject(Lorg/briarproject/briar/android/view/TextInputView;)V
.end method

.method public abstract introductionManager()Lorg/briarproject/briar/api/introduction/IntroductionManager;
.end method

.method public abstract ioExecutor()Ljava/util/concurrent/Executor;
    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation
.end method

.method public abstract keyAgreementTask()Lorg/briarproject/bramble/api/keyagreement/KeyAgreementTask;
.end method

.method public abstract lifecycleManager()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;
.end method

.method public abstract locationUtils()Lorg/briarproject/bramble/api/system/LocationUtils;
.end method

.method public abstract lockManager()Lorg/briarproject/briar/api/android/LockManager;
.end method

.method public abstract messageTracker()Lorg/briarproject/briar/api/client/MessageTracker;
.end method

.method public abstract messagingManager()Lorg/briarproject/briar/api/messaging/MessagingManager;
.end method

.method public abstract passwordStrengthIndicator()Lorg/briarproject/bramble/api/crypto/PasswordStrengthEstimator;
.end method

.method public abstract payloadEncoder()Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;
.end method

.method public abstract payloadParser()Lorg/briarproject/bramble/api/keyagreement/PayloadParser;
.end method

.method public abstract pluginManager()Lorg/briarproject/bramble/api/plugin/PluginManager;
.end method

.method public abstract privateGroupFactory()Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;
.end method

.method public abstract privateGroupManager()Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;
.end method

.method public abstract privateMessageFactory()Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;
.end method

.method public abstract screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;
.end method

.method public abstract settingsManager()Lorg/briarproject/bramble/api/settings/SettingsManager;
.end method

.method public abstract testDataCreator()Lorg/briarproject/briar/api/test/TestDataCreator;
.end method

.method public abstract viewModelFactory()Landroid/arch/lifecycle/ViewModelProvider$Factory;
.end method
