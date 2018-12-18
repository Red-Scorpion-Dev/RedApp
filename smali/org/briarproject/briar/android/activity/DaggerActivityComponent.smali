.class public final Lorg/briarproject/briar/android/activity/DaggerActivityComponent;
.super Ljava/lang/Object;
.source "DaggerActivityComponent.java"

# interfaces
.implements Lorg/briarproject/briar/android/activity/ActivityComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_keyAgreementTask;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_conversationManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_androidNotificationManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_messageTracker;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_connectionRegistry;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_clock;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationFactory;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupMessageFactory;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupFactory;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_identityManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_contactManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_cryptoExecutor;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogSharingManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumSharingManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_pluginManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_dozeWatchdog;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_settingsManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_passwordStrengthIndicator;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_ioExecutor;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_accountManager;,
        Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    }
.end annotation


# instance fields
.field private accountManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_accountManager;

.field private androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

.field private androidNotificationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_androidNotificationManager;

.field private blogControllerImplProvider:Lorg/briarproject/briar/android/blog/BlogControllerImpl_Factory;

.field private blogInvitationControllerImplProvider:Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;

.field private blogManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogManager;

.field private blogSharingManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogSharingManager;

.field private briarControllerImplProvider:Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;

.field private clockProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_clock;

.field private connectionRegistryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_connectionRegistry;

.field private contactManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_contactManager;

.field private conversationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_conversationManager;

.field private createGroupControllerImplProvider:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl_Factory;

.field private cryptoExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_cryptoExecutor;

.field private databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

.field private dbControllerImplProvider:Lorg/briarproject/briar/android/controller/DbControllerImpl_Factory;

.field private dozeWatchdogProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_dozeWatchdog;

.field private eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

.field private feedControllerImplProvider:Lorg/briarproject/briar/android/blog/FeedControllerImpl_Factory;

.field private forumControllerImplProvider:Lorg/briarproject/briar/android/forum/ForumControllerImpl_Factory;

.field private forumInvitationControllerImplProvider:Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl_Factory;

.field private forumManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumManager;

.field private forumSharingManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumSharingManager;

.field private groupControllerImplProvider:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;

.field private groupInvitationControllerImplProvider:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl_Factory;

.field private groupInvitationFactoryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationFactory;

.field private groupInvitationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationManager;

.field private groupListControllerImplProvider:Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;

.field private groupMemberListControllerImplProvider:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl_Factory;

.field private groupMessageFactoryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupMessageFactory;

.field private identityManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_identityManager;

.field private ioExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_ioExecutor;

.field private keyAgreementTaskProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_keyAgreementTask;

.field private lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

.field private messageTrackerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_messageTracker;

.field private navDrawerControllerImplProvider:Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;

.field private passwordControllerImplProvider:Lorg/briarproject/briar/android/login/PasswordControllerImpl_Factory;

.field private passwordStrengthIndicatorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_passwordStrengthIndicator;

.field private pluginManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_pluginManager;

.field private privateGroupFactoryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupFactory;

.field private privateGroupManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupManager;

.field private provideActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private provideBaseActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/activity/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private provideBlogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/blog/BlogController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBriarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBriarServiceConnectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/BriarService$BriarServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private provideCreateGroupControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDBControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;"
        }
    .end annotation
.end field

.field private provideFeedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/blog/FeedController;",
            ">;"
        }
    .end annotation
.end field

.field private provideForumControllerProvider:Ljavax/inject/Provider;

.field private provideGroupControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/conversation/GroupController;",
            ">;"
        }
    .end annotation
.end field

.field private provideGroupListControllerProvider:Ljavax/inject/Provider;

.field private provideGroupMemberListControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;",
            ">;"
        }
    .end annotation
.end field

.field private provideInvitationBlogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/sharing/BlogInvitationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideInvitationForumControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/sharing/ForumInvitationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideInvitationGroupControllerProvider:Ljavax/inject/Provider;

.field private provideNavDrawerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/navdrawer/NavDrawerController;",
            ">;"
        }
    .end annotation
.end field

.field private providePasswordControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/login/PasswordController;",
            ">;"
        }
    .end annotation
.end field

.field private provideRevealContactsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSetupControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/login/SetupController;",
            ">;"
        }
    .end annotation
.end field

.field private provideShareBlogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/sharing/ShareBlogController;",
            ">;"
        }
    .end annotation
.end field

.field private provideShareForumControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/sharing/ShareForumController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSharingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/SharingController;",
            ">;"
        }
    .end annotation
.end field

.field private revealContactsControllerImplProvider:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;

.field private settingsManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_settingsManager;

.field private setupControllerImplProvider:Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;

.field private shareBlogControllerImplProvider:Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl_Factory;

.field private shareForumControllerImplProvider:Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;

.field private sharingControllerImplProvider:Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;


# direct methods
.method private constructor <init>(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->initialize(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;Lorg/briarproject/briar/android/activity/DaggerActivityComponent$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;-><init>(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)V

    return-void
.end method

.method public static builder()Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;
    .locals 2

    .line 372
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;-><init>(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$1;)V

    return-object v0
.end method

.method private initialize(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)V
    .locals 13

    .line 378
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$100(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/activity/ActivityModule;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideActivityFactory;->create(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideActivityFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideActivityProvider:Ljavax/inject/Provider;

    .line 379
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 380
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_accountManager;

    .line 382
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_accountManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->accountManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_accountManager;

    .line 383
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_ioExecutor;

    .line 384
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_ioExecutor;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->ioExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_ioExecutor;

    .line 385
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_passwordStrengthIndicator;

    .line 387
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_passwordStrengthIndicator;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->passwordStrengthIndicatorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_passwordStrengthIndicator;

    .line 388
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->accountManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_accountManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->ioExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_ioExecutor;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->passwordStrengthIndicatorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_passwordStrengthIndicator;

    .line 389
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->setupControllerImplProvider:Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;

    .line 394
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$100(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/activity/ActivityModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->setupControllerImplProvider:Lorg/briarproject/briar/android/login/SetupControllerImpl_Factory;

    .line 393
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;->create(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideSetupControllerFactory;

    move-result-object v0

    .line 392
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideSetupControllerProvider:Ljavax/inject/Provider;

    .line 397
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$100(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/activity/ActivityModule;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarServiceConnectionFactory;->create(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarServiceConnectionFactory;

    move-result-object v0

    .line 396
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarServiceConnectionProvider:Ljavax/inject/Provider;

    .line 398
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    .line 400
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    .line 401
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_settingsManager;

    .line 403
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_settingsManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->settingsManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_settingsManager;

    .line 404
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_dozeWatchdog;

    .line 405
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_dozeWatchdog;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->dozeWatchdogProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_dozeWatchdog;

    .line 406
    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarServiceConnectionProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->accountManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_accountManager;

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v5, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->settingsManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_settingsManager;

    iget-object v6, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->dozeWatchdogProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_dozeWatchdog;

    iget-object v7, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideActivityProvider:Ljavax/inject/Provider;

    .line 407
    invoke-static/range {v2 .. v7}, Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->briarControllerImplProvider:Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;

    .line 417
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$100(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/activity/ActivityModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->briarControllerImplProvider:Lorg/briarproject/briar/android/controller/BriarControllerImpl_Factory;

    .line 416
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;->create(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBriarControllerFactory;

    move-result-object v0

    .line 415
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 418
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    .line 420
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    .line 421
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    .line 422
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/controller/DbControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/DbControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->dbControllerImplProvider:Lorg/briarproject/briar/android/controller/DbControllerImpl_Factory;

    .line 426
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$100(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/activity/ActivityModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->dbControllerImplProvider:Lorg/briarproject/briar/android/controller/DbControllerImpl_Factory;

    .line 425
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideDBControllerFactory;->create(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideDBControllerFactory;

    move-result-object v0

    .line 424
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    .line 427
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_pluginManager;

    .line 428
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_pluginManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->pluginManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_pluginManager;

    .line 429
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    .line 430
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    .line 431
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->pluginManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_pluginManager;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->settingsManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_settingsManager;

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    .line 432
    invoke-static {v0, v1, v2, v3, v4}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->navDrawerControllerImplProvider:Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;

    .line 441
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$100(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/activity/ActivityModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->navDrawerControllerImplProvider:Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl_Factory;

    .line 440
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideNavDrawerControllerFactory;->create(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideNavDrawerControllerFactory;

    move-result-object v0

    .line 439
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideNavDrawerControllerProvider:Ljavax/inject/Provider;

    .line 442
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->accountManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_accountManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->ioExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_ioExecutor;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->passwordStrengthIndicatorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_passwordStrengthIndicator;

    .line 443
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/login/PasswordControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/login/PasswordControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->passwordControllerImplProvider:Lorg/briarproject/briar/android/login/PasswordControllerImpl_Factory;

    .line 448
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$100(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/activity/ActivityModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->passwordControllerImplProvider:Lorg/briarproject/briar/android/login/PasswordControllerImpl_Factory;

    .line 447
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvidePasswordControllerFactory;->create(Lorg/briarproject/briar/android/activity/ActivityModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvidePasswordControllerFactory;

    move-result-object v0

    .line 446
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->providePasswordControllerProvider:Ljavax/inject/Provider;

    .line 451
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$100(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/activity/ActivityModule;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBaseActivityFactory;->create(Lorg/briarproject/briar/android/activity/ActivityModule;)Lorg/briarproject/briar/android/activity/ActivityModule_ProvideBaseActivityFactory;

    move-result-object v0

    .line 450
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBaseActivityProvider:Ljavax/inject/Provider;

    .line 452
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumSharingManager;

    .line 454
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumSharingManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->forumSharingManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumSharingManager;

    .line 455
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->forumSharingManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumSharingManager;

    .line 456
    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->forumInvitationControllerImplProvider:Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl_Factory;

    .line 464
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$300(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/sharing/SharingModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBaseActivityProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->forumInvitationControllerImplProvider:Lorg/briarproject/briar/android/sharing/ForumInvitationControllerImpl_Factory;

    .line 463
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;->create(Lorg/briarproject/briar/android/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationForumControllerFactory;

    move-result-object v0

    .line 462
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideInvitationForumControllerProvider:Ljavax/inject/Provider;

    .line 467
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogSharingManager;

    .line 469
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogSharingManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->blogSharingManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogSharingManager;

    .line 470
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->blogSharingManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogSharingManager;

    .line 471
    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->blogInvitationControllerImplProvider:Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;

    .line 479
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$300(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/sharing/SharingModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBaseActivityProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->blogInvitationControllerImplProvider:Lorg/briarproject/briar/android/sharing/BlogInvitationControllerImpl_Factory;

    .line 478
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationBlogControllerFactory;->create(Lorg/briarproject/briar/android/sharing/SharingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/SharingModule_ProvideInvitationBlogControllerFactory;

    move-result-object v0

    .line 477
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideInvitationBlogControllerProvider:Ljavax/inject/Provider;

    .line 482
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_cryptoExecutor;

    .line 484
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_cryptoExecutor;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->cryptoExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_cryptoExecutor;

    .line 485
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_contactManager;

    .line 487
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_contactManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->contactManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_contactManager;

    .line 488
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_identityManager;

    .line 490
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_identityManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->identityManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_identityManager;

    .line 491
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupFactory;

    .line 493
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupFactory;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->privateGroupFactoryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupFactory;

    .line 494
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupMessageFactory;

    .line 496
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupMessageFactory;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupMessageFactoryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupMessageFactory;

    .line 497
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupManager;

    .line 499
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->privateGroupManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupManager;

    .line 500
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationFactory;

    .line 502
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationFactory;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupInvitationFactoryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationFactory;

    .line 503
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationManager;

    .line 505
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupInvitationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationManager;

    .line 506
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_clock;

    .line 507
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_clock;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->clockProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_clock;

    .line 508
    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->cryptoExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_cryptoExecutor;

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v5, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->contactManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_contactManager;

    iget-object v6, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->identityManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_identityManager;

    iget-object v7, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->privateGroupFactoryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupFactory;

    iget-object v8, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupMessageFactoryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupMessageFactory;

    iget-object v9, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->privateGroupManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupManager;

    iget-object v10, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupInvitationFactoryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationFactory;

    iget-object v11, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupInvitationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationManager;

    iget-object v12, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->clockProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_clock;

    .line 509
    invoke-static/range {v2 .. v12}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->createGroupControllerImplProvider:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl_Factory;

    .line 524
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$400(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->createGroupControllerImplProvider:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupControllerImpl_Factory;

    .line 523
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule_ProvideCreateGroupControllerFactory;->create(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/creation/CreateGroupModule_ProvideCreateGroupControllerFactory;

    move-result-object v0

    .line 522
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideCreateGroupControllerProvider:Ljavax/inject/Provider;

    .line 525
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_connectionRegistry;

    .line 527
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_connectionRegistry;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->connectionRegistryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_connectionRegistry;

    .line 528
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->connectionRegistryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_connectionRegistry;

    .line 529
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->sharingControllerImplProvider:Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;

    .line 533
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$500(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/blog/BlogModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->sharingControllerImplProvider:Lorg/briarproject/briar/android/controller/SharingControllerImpl_Factory;

    .line 532
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;->create(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/blog/BlogModule_ProvideSharingControllerFactory;

    move-result-object v0

    .line 531
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideSharingControllerProvider:Ljavax/inject/Provider;

    .line 534
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_messageTracker;

    .line 536
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_messageTracker;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->messageTrackerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_messageTracker;

    .line 537
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_androidNotificationManager;

    .line 539
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_androidNotificationManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidNotificationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_androidNotificationManager;

    .line 540
    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->identityManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_identityManager;

    iget-object v5, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->cryptoExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_cryptoExecutor;

    iget-object v6, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->privateGroupManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupManager;

    iget-object v7, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupMessageFactoryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupMessageFactory;

    iget-object v8, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    iget-object v9, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->messageTrackerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_messageTracker;

    iget-object v10, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->clockProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_clock;

    iget-object v11, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidNotificationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_androidNotificationManager;

    .line 541
    invoke-static/range {v2 .. v11}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupControllerImplProvider:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;

    .line 555
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$600(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBaseActivityProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupControllerImplProvider:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl_Factory;

    .line 554
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;->create(Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/conversation/GroupConversationModule_ProvideGroupControllerFactory;

    move-result-object v0

    .line 553
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideGroupControllerProvider:Ljavax/inject/Provider;

    .line 558
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupInvitationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationManager;

    .line 559
    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupInvitationControllerImplProvider:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl_Factory;

    .line 567
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$700(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupInvitationControllerImplProvider:Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationControllerImpl_Factory;

    .line 566
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;->create(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationModule_ProvideInvitationGroupControllerFactory;

    move-result-object v0

    .line 565
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideInvitationGroupControllerProvider:Ljavax/inject/Provider;

    .line 568
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->connectionRegistryProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_connectionRegistry;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->privateGroupManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupManager;

    .line 569
    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupMemberListControllerImplProvider:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl_Factory;

    .line 577
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$800(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupMemberListControllerImplProvider:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListControllerImpl_Factory;

    .line 576
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;->create(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberModule_ProvideGroupMemberListControllerFactory;

    move-result-object v0

    .line 575
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideGroupMemberListControllerProvider:Ljavax/inject/Provider;

    .line 578
    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->privateGroupManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupManager;

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupInvitationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationManager;

    iget-object v5, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->contactManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_contactManager;

    iget-object v6, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->settingsManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_settingsManager;

    .line 579
    invoke-static/range {v1 .. v6}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->revealContactsControllerImplProvider:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;

    .line 589
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$900(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->revealContactsControllerImplProvider:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsControllerImpl_Factory;

    .line 588
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;->create(Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/reveal/GroupRevealModule_ProvideRevealContactsControllerFactory;

    move-result-object v0

    .line 587
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideRevealContactsControllerProvider:Ljavax/inject/Provider;

    .line 590
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_conversationManager;

    .line 592
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_conversationManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->conversationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_conversationManager;

    .line 593
    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->contactManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_contactManager;

    iget-object v5, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->conversationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_conversationManager;

    iget-object v6, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->forumSharingManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumSharingManager;

    iget-object v7, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->clockProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_clock;

    .line 594
    invoke-static/range {v2 .. v7}, Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->shareForumControllerImplProvider:Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;

    .line 604
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$300(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/sharing/SharingModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->shareForumControllerImplProvider:Lorg/briarproject/briar/android/sharing/ShareForumControllerImpl_Factory;

    .line 603
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideShareForumControllerFactory;->create(Lorg/briarproject/briar/android/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/SharingModule_ProvideShareForumControllerFactory;

    move-result-object v0

    .line 602
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideShareForumControllerProvider:Ljavax/inject/Provider;

    .line 605
    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->contactManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_contactManager;

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->conversationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_conversationManager;

    iget-object v5, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->blogSharingManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogSharingManager;

    iget-object v6, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->clockProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_clock;

    .line 606
    invoke-static/range {v1 .. v6}, Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->shareBlogControllerImplProvider:Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl_Factory;

    .line 616
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$300(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/sharing/SharingModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->shareBlogControllerImplProvider:Lorg/briarproject/briar/android/sharing/ShareBlogControllerImpl_Factory;

    .line 615
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/sharing/SharingModule_ProvideShareBlogControllerFactory;->create(Lorg/briarproject/briar/android/sharing/SharingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/sharing/SharingModule_ProvideShareBlogControllerFactory;

    move-result-object v0

    .line 614
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideShareBlogControllerProvider:Ljavax/inject/Provider;

    .line 617
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumManager;

    .line 618
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->forumManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumManager;

    .line 619
    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->identityManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_identityManager;

    iget-object v5, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->cryptoExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_cryptoExecutor;

    iget-object v6, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->forumManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumManager;

    iget-object v7, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->forumSharingManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_forumSharingManager;

    iget-object v8, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    iget-object v9, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->clockProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_clock;

    iget-object v10, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->messageTrackerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_messageTracker;

    iget-object v11, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidNotificationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_androidNotificationManager;

    .line 620
    invoke-static/range {v2 .. v11}, Lorg/briarproject/briar/android/forum/ForumControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/forum/ForumControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->forumControllerImplProvider:Lorg/briarproject/briar/android/forum/ForumControllerImpl_Factory;

    .line 634
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$1000(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/forum/ForumModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBaseActivityProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->forumControllerImplProvider:Lorg/briarproject/briar/android/forum/ForumControllerImpl_Factory;

    .line 633
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;->create(Lorg/briarproject/briar/android/forum/ForumModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/forum/ForumModule_ProvideForumControllerFactory;

    move-result-object v0

    .line 632
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideForumControllerProvider:Ljavax/inject/Provider;

    .line 635
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogManager;

    .line 636
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogManager;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->blogManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogManager;

    .line 637
    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    iget-object v5, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidNotificationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_androidNotificationManager;

    iget-object v6, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->identityManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_identityManager;

    iget-object v7, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->blogManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogManager;

    iget-object v8, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->blogSharingManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogSharingManager;

    .line 638
    invoke-static/range {v2 .. v8}, Lorg/briarproject/briar/android/blog/BlogControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/blog/BlogControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->blogControllerImplProvider:Lorg/briarproject/briar/android/blog/BlogControllerImpl_Factory;

    .line 649
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$500(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/blog/BlogModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBaseActivityProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->blogControllerImplProvider:Lorg/briarproject/briar/android/blog/BlogControllerImpl_Factory;

    .line 648
    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/blog/BlogModule_ProvideBlogControllerFactory;->create(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/blog/BlogModule_ProvideBlogControllerFactory;

    move-result-object v0

    .line 647
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBlogControllerProvider:Ljavax/inject/Provider;

    .line 650
    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidNotificationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_androidNotificationManager;

    iget-object v5, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->identityManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_identityManager;

    iget-object v6, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->blogManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_blogManager;

    .line 651
    invoke-static/range {v1 .. v6}, Lorg/briarproject/briar/android/blog/FeedControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/blog/FeedControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->feedControllerImplProvider:Lorg/briarproject/briar/android/blog/FeedControllerImpl_Factory;

    .line 661
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$500(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/blog/BlogModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->feedControllerImplProvider:Lorg/briarproject/briar/android/blog/FeedControllerImpl_Factory;

    .line 660
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;->create(Lorg/briarproject/briar/android/blog/BlogModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/blog/BlogModule_ProvideFeedControllerFactory;

    move-result-object v0

    .line 659
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideFeedControllerProvider:Ljavax/inject/Provider;

    .line 662
    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->databaseExecutorProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_databaseExecutor;

    iget-object v2, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->lifecycleManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_lifecycleManager;

    iget-object v3, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->privateGroupManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_privateGroupManager;

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupInvitationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_groupInvitationManager;

    iget-object v5, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->contactManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_contactManager;

    iget-object v6, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidNotificationManagerProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_androidNotificationManager;

    iget-object v7, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->eventBusProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_eventBus;

    .line 663
    invoke-static/range {v1 .. v7}, Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupListControllerImplProvider:Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;

    .line 674
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$1100(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/privategroup/list/GroupListModule;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->groupListControllerImplProvider:Lorg/briarproject/briar/android/privategroup/list/GroupListControllerImpl_Factory;

    .line 673
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;->create(Lorg/briarproject/briar/android/privategroup/list/GroupListModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/android/privategroup/list/GroupListModule_ProvideGroupListControllerFactory;

    move-result-object v0

    .line 672
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideGroupListControllerProvider:Ljavax/inject/Provider;

    .line 675
    new-instance v0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_keyAgreementTask;

    .line 677
    invoke-static {p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;->access$200(Lorg/briarproject/briar/android/activity/DaggerActivityComponent$Builder;)Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_keyAgreementTask;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->keyAgreementTaskProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_keyAgreementTask;

    return-void
.end method

.method private injectAliasDialogFragment(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;)Lorg/briarproject/briar/android/conversation/AliasDialogFragment;
    .locals 2

    .line 2043
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 2046
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->viewModelFactory()Landroid/arch/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2045
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ViewModelProvider$Factory;

    .line 2043
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment_MembersInjector;->injectViewModelFactory(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object p1
.end method

.method private injectAuthorNameFragment(Lorg/briarproject/briar/android/login/AuthorNameFragment;)Lorg/briarproject/briar/android/login/AuthorNameFragment;
    .locals 1

    .line 1822
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideSetupControllerProvider:Ljavax/inject/Provider;

    .line 1823
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/login/SetupController;

    .line 1822
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/SetupFragment_MembersInjector;->injectSetupController(Ljava/lang/Object;Lorg/briarproject/briar/android/login/SetupController;)V

    return-object p1
.end method

.method private injectBlogActivity(Lorg/briarproject/briar/android/blog/BlogActivity;)Lorg/briarproject/briar/android/blog/BlogActivity;
    .locals 2

    .line 1576
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1579
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1578
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1576
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1581
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1582
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1581
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1583
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1584
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1587
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1586
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1584
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1589
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBlogControllerProvider:Ljavax/inject/Provider;

    .line 1590
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/blog/BlogController;

    .line 1589
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/BlogActivity_MembersInjector;->injectBlogController(Lorg/briarproject/briar/android/blog/BlogActivity;Lorg/briarproject/briar/android/blog/BlogController;)V

    return-object p1
.end method

.method private injectBlogFragment(Lorg/briarproject/briar/android/blog/BlogFragment;)Lorg/briarproject/briar/android/blog/BlogFragment;
    .locals 1

    .line 1632
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBlogControllerProvider:Ljavax/inject/Provider;

    .line 1633
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/blog/BlogController;

    .line 1632
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;->injectBlogController(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/blog/BlogController;)V

    .line 1634
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideSharingControllerProvider:Ljavax/inject/Provider;

    .line 1635
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/SharingController;

    .line 1634
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/BlogFragment_MembersInjector;->injectSharingController(Lorg/briarproject/briar/android/blog/BlogFragment;Lorg/briarproject/briar/android/controller/SharingController;)V

    return-object p1
.end method

.method private injectBlogInvitationActivity(Lorg/briarproject/briar/android/sharing/BlogInvitationActivity;)Lorg/briarproject/briar/android/sharing/BlogInvitationActivity;
    .locals 2

    .line 1305
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1308
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1307
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1305
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1310
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1311
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1310
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1312
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1313
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1316
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1315
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1313
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1318
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideInvitationBlogControllerProvider:Ljavax/inject/Provider;

    .line 1319
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/sharing/BlogInvitationController;

    .line 1318
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/sharing/BlogInvitationActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/sharing/BlogInvitationActivity;Lorg/briarproject/briar/android/sharing/BlogInvitationController;)V

    return-object p1
.end method

.method private injectBlogPostFragment(Lorg/briarproject/briar/android/blog/BlogPostFragment;)Lorg/briarproject/briar/android/blog/BlogPostFragment;
    .locals 1

    .line 1640
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBlogControllerProvider:Ljavax/inject/Provider;

    .line 1641
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/blog/BlogController;

    .line 1640
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/BlogPostFragment_MembersInjector;->injectBlogController(Lorg/briarproject/briar/android/blog/BlogPostFragment;Lorg/briarproject/briar/android/blog/BlogController;)V

    return-object p1
.end method

.method private injectBlogSharingStatusActivity(Lorg/briarproject/briar/android/sharing/BlogSharingStatusActivity;)Lorg/briarproject/briar/android/sharing/BlogSharingStatusActivity;
    .locals 2

    .line 1528
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1531
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1530
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1528
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1533
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1534
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1533
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1535
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1536
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1539
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1538
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1536
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1541
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1544
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->connectionRegistry()Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1543
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 1541
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity_MembersInjector;->injectConnectionRegistry(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    .line 1546
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1549
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->blogSharingManager()Lorg/briarproject/briar/api/blog/BlogSharingManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1548
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogSharingManager;

    .line 1546
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/sharing/BlogSharingStatusActivity_MembersInjector;->injectBlogSharingManager(Lorg/briarproject/briar/android/sharing/BlogSharingStatusActivity;Lorg/briarproject/briar/api/blog/BlogSharingManager;)V

    return-object p1
.end method

.method private injectChangePasswordActivity(Lorg/briarproject/briar/android/login/ChangePasswordActivity;)Lorg/briarproject/briar/android/login/ChangePasswordActivity;
    .locals 2

    .line 1714
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1717
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1716
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1714
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1719
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1720
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1719
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1721
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1722
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1725
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1724
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1722
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1727
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->providePasswordControllerProvider:Ljavax/inject/Provider;

    .line 1728
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/login/PasswordController;

    .line 1727
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/ChangePasswordActivity_MembersInjector;->injectPasswordController(Lorg/briarproject/briar/android/login/ChangePasswordActivity;Lorg/briarproject/briar/android/login/PasswordController;)V

    return-object p1
.end method

.method private injectContactChooserFragment(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;)Lorg/briarproject/briar/android/introduction/ContactChooserFragment;
    .locals 2

    .line 1948
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1951
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->contactManager()Lorg/briarproject/bramble/api/contact/ContactManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1950
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 1948
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->injectContactManager(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Lorg/briarproject/bramble/api/contact/ContactManager;)V

    .line 1953
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1956
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->conversationManager()Lorg/briarproject/briar/api/conversation/ConversationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1955
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 1953
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->injectConversationManager(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Lorg/briarproject/briar/api/conversation/ConversationManager;)V

    .line 1958
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1961
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->connectionRegistry()Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1960
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 1958
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->injectConnectionRegistry(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    return-object p1
.end method

.method private injectContactExchangeActivity(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;)Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;
    .locals 2

    .line 1145
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1148
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1147
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1145
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1150
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1151
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1150
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1152
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1153
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1156
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1155
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1153
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1158
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1161
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->eventBus()Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1160
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    .line 1158
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 1163
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1166
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->contactExchangeTask()Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1165
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactExchangeTask;

    .line 1163
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->injectContactExchangeTask(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/contact/ContactExchangeTask;)V

    .line 1168
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1171
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->identityManager()Lorg/briarproject/bramble/api/identity/IdentityManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1170
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 1168
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity_MembersInjector;->injectIdentityManager(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;Lorg/briarproject/bramble/api/identity/IdentityManager;)V

    return-object p1
.end method

.method private injectContactExchangeErrorFragment(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;)Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;
    .locals 2

    .line 2034
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 2037
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->androidExecutor()Lorg/briarproject/bramble/api/system/AndroidExecutor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2036
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    .line 2034
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment_MembersInjector;->injectAndroidExecutor(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V

    return-object p1
.end method

.method private injectContactListFragment(Lorg/briarproject/briar/android/contact/ContactListFragment;)Lorg/briarproject/briar/android/contact/ContactListFragment;
    .locals 2

    .line 1840
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1843
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->connectionRegistry()Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1842
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 1840
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->injectConnectionRegistry(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    .line 1845
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1848
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->eventBus()Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1847
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    .line 1845
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 1850
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1853
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->androidNotificationManager()Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1852
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 1850
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 1855
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1858
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->contactManager()Lorg/briarproject/bramble/api/contact/ContactManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1857
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 1855
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->injectContactManager(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactManager;)V

    .line 1860
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1863
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->conversationManager()Lorg/briarproject/briar/api/conversation/ConversationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1862
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 1860
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->injectConversationManager(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/briar/api/conversation/ConversationManager;)V

    return-object p1
.end method

.method private injectConversationActivity(Lorg/briarproject/briar/android/conversation/ConversationActivity;)Lorg/briarproject/briar/android/conversation/ConversationActivity;
    .locals 2

    .line 1199
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1202
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1201
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1199
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1204
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1205
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1204
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1206
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1207
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1210
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1209
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1207
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1212
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1215
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->androidNotificationManager()Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1214
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 1212
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 1217
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1220
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->connectionRegistry()Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1219
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 1217
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectConnectionRegistry(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    .line 1222
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1225
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->cryptoExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1224
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 1222
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectCryptoExecutor(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/util/concurrent/Executor;)V

    .line 1227
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1230
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->contactManager()Lorg/briarproject/bramble/api/contact/ContactManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1229
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 1227
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectContactManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/contact/ContactManager;)V

    .line 1232
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1235
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->messagingManager()Lorg/briarproject/briar/api/messaging/MessagingManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1234
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/messaging/MessagingManager;

    .line 1232
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectMessagingManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/messaging/MessagingManager;)V

    .line 1237
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1240
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->conversationManager()Lorg/briarproject/briar/api/conversation/ConversationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1239
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/conversation/ConversationManager;

    .line 1237
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectConversationManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/conversation/ConversationManager;)V

    .line 1242
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1245
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->eventBus()Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1244
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    .line 1242
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 1247
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1250
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->settingsManager()Lorg/briarproject/bramble/api/settings/SettingsManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1249
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 1247
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectSettingsManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/settings/SettingsManager;)V

    .line 1252
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1255
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->privateMessageFactory()Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1254
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    .line 1252
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectPrivateMessageFactory(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;)V

    .line 1257
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1260
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->introductionManager()Lorg/briarproject/briar/api/introduction/IntroductionManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1259
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/introduction/IntroductionManager;

    .line 1257
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectIntroductionManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/introduction/IntroductionManager;)V

    .line 1262
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1265
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->forumSharingManager()Lorg/briarproject/briar/api/forum/ForumSharingManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1264
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumSharingManager;

    .line 1262
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectForumSharingManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/forum/ForumSharingManager;)V

    .line 1267
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1270
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->blogSharingManager()Lorg/briarproject/briar/api/blog/BlogSharingManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1269
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogSharingManager;

    .line 1267
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectBlogSharingManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/blog/BlogSharingManager;)V

    .line 1272
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1275
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->groupInvitationManager()Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1274
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    .line 1272
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectGroupInvitationManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;)V

    .line 1277
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1280
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->viewModelFactory()Landroid/arch/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1279
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ViewModelProvider$Factory;

    .line 1277
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectViewModelFactory(Lorg/briarproject/briar/android/conversation/ConversationActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object p1
.end method

.method private injectCreateForumActivity(Lorg/briarproject/briar/android/forum/CreateForumActivity;)Lorg/briarproject/briar/android/forum/CreateForumActivity;
    .locals 2

    .line 1439
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1442
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1441
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1439
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1444
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1445
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1444
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1446
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1447
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1450
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1449
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1447
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1452
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1455
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->forumManager()Lorg/briarproject/briar/api/forum/ForumManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1454
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumManager;

    .line 1452
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/forum/CreateForumActivity_MembersInjector;->injectForumManager(Lorg/briarproject/briar/android/forum/CreateForumActivity;Lorg/briarproject/briar/api/forum/ForumManager;)V

    return-object p1
.end method

.method private injectCreateGroupActivity(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;)Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;
    .locals 2

    .line 1324
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1327
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1326
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1324
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1329
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1330
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1329
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1331
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1332
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1335
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1334
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1332
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1337
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideCreateGroupControllerProvider:Ljavax/inject/Provider;

    .line 1338
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;

    .line 1337
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;)V

    return-object p1
.end method

.method private injectDozeFragment(Lorg/briarproject/briar/android/login/DozeFragment;)Lorg/briarproject/briar/android/login/DozeFragment;
    .locals 1

    .line 1834
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideSetupControllerProvider:Ljavax/inject/Provider;

    .line 1835
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/login/SetupController;

    .line 1834
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/SetupFragment_MembersInjector;->injectSetupController(Ljava/lang/Object;Lorg/briarproject/briar/android/login/SetupController;)V

    return-object p1
.end method

.method private injectFeedFragment(Lorg/briarproject/briar/android/blog/FeedFragment;)Lorg/briarproject/briar/android/blog/FeedFragment;
    .locals 1

    .line 1911
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideFeedControllerProvider:Ljavax/inject/Provider;

    .line 1912
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/blog/FeedController;

    .line 1911
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/FeedFragment_MembersInjector;->injectFeedController(Lorg/briarproject/briar/android/blog/FeedFragment;Lorg/briarproject/briar/android/blog/FeedController;)V

    return-object p1
.end method

.method private injectFeedPostFragment(Lorg/briarproject/briar/android/blog/FeedPostFragment;)Lorg/briarproject/briar/android/blog/FeedPostFragment;
    .locals 1

    .line 1646
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideFeedControllerProvider:Ljavax/inject/Provider;

    .line 1647
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/blog/FeedController;

    .line 1646
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/FeedPostFragment_MembersInjector;->injectFeedController(Lorg/briarproject/briar/android/blog/FeedPostFragment;Lorg/briarproject/briar/android/blog/FeedController;)V

    return-object p1
.end method

.method private injectForumActivity(Lorg/briarproject/briar/android/forum/ForumActivity;)Lorg/briarproject/briar/android/forum/ForumActivity;
    .locals 2

    .line 1555
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1558
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1557
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1555
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1560
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1561
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1560
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1562
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1563
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1566
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1565
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1563
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1568
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideSharingControllerProvider:Ljavax/inject/Provider;

    .line 1569
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/SharingController;

    .line 1568
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity_MembersInjector;->injectSharingController(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/controller/SharingController;)V

    .line 1570
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideForumControllerProvider:Ljavax/inject/Provider;

    .line 1571
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1570
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/forum/ForumActivity_MembersInjector;->injectForumController(Lorg/briarproject/briar/android/forum/ForumActivity;Ljava/lang/Object;)V

    return-object p1
.end method

.method private injectForumInvitationActivity(Lorg/briarproject/briar/android/sharing/ForumInvitationActivity;)Lorg/briarproject/briar/android/sharing/ForumInvitationActivity;
    .locals 2

    .line 1286
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1289
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1288
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1286
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1291
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1292
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1291
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1293
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1294
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1297
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1296
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1294
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1299
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideInvitationForumControllerProvider:Ljavax/inject/Provider;

    .line 1300
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/sharing/ForumInvitationController;

    .line 1299
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/sharing/ForumInvitationActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/sharing/ForumInvitationActivity;Lorg/briarproject/briar/android/sharing/ForumInvitationController;)V

    return-object p1
.end method

.method private injectForumListFragment(Lorg/briarproject/briar/android/forum/ForumListFragment;)Lorg/briarproject/briar/android/forum/ForumListFragment;
    .locals 2

    .line 1887
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1890
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->eventBus()Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1889
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    .line 1887
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/fragment/BaseEventFragment;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 1892
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1895
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->androidNotificationManager()Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1894
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 1892
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 1897
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1900
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->forumManager()Lorg/briarproject/briar/api/forum/ForumManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1899
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumManager;

    .line 1897
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->injectForumManager(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/briar/api/forum/ForumManager;)V

    .line 1902
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1905
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->forumSharingManager()Lorg/briarproject/briar/api/forum/ForumSharingManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1904
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumSharingManager;

    .line 1902
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/forum/ForumListFragment_MembersInjector;->injectForumSharingManager(Lorg/briarproject/briar/android/forum/ForumListFragment;Lorg/briarproject/briar/api/forum/ForumSharingManager;)V

    return-object p1
.end method

.method private injectForumSharingStatusActivity(Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;)Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;
    .locals 2

    .line 1500
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1503
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1502
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1500
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1505
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1506
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1505
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1507
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1508
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1511
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1510
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1508
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1513
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1516
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->connectionRegistry()Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1515
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    .line 1513
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity_MembersInjector;->injectConnectionRegistry(Ljava/lang/Object;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    .line 1518
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1521
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->forumSharingManager()Lorg/briarproject/briar/api/forum/ForumSharingManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1520
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumSharingManager;

    .line 1518
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity_MembersInjector;->injectForumSharingManager(Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;Lorg/briarproject/briar/api/forum/ForumSharingManager;)V

    return-object p1
.end method

.method private injectGroupActivity(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;
    .locals 2

    .line 1343
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1346
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1345
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1343
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1348
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1349
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1348
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1350
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1351
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1354
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1353
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1351
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1356
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideSharingControllerProvider:Ljavax/inject/Provider;

    .line 1357
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/SharingController;

    .line 1356
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/threaded/ThreadListActivity_MembersInjector;->injectSharingController(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/controller/SharingController;)V

    .line 1358
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideGroupControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/privategroup/conversation/GroupController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;Lorg/briarproject/briar/android/privategroup/conversation/GroupController;)V

    return-object p1
.end method

.method private injectGroupInvitationActivity(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;
    .locals 2

    .line 1382
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1385
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1384
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1382
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1387
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1388
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1387
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1389
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1390
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1393
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1392
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1390
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1395
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideInvitationGroupControllerProvider:Ljavax/inject/Provider;

    .line 1396
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1395
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;Ljava/lang/Object;)V

    return-object p1
.end method

.method private injectGroupInviteActivity(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;)Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;
    .locals 2

    .line 1363
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1366
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1365
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1363
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1368
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1369
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1368
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1370
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1371
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1374
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1373
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1371
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1376
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideCreateGroupControllerProvider:Ljavax/inject/Provider;

    .line 1377
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;

    .line 1376
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;)V

    return-object p1
.end method

.method private injectGroupInviteFragment(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;)Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;
    .locals 1

    .line 1875
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideCreateGroupControllerProvider:Ljavax/inject/Provider;

    .line 1876
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;

    .line 1875
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment_MembersInjector;->injectController(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;Lorg/briarproject/briar/android/privategroup/creation/CreateGroupController;)V

    return-object p1
.end method

.method private injectGroupListFragment(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;
    .locals 1

    .line 1869
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideGroupListControllerProvider:Ljavax/inject/Provider;

    .line 1870
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1869
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment_MembersInjector;->injectController(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Ljava/lang/Object;)V

    return-object p1
.end method

.method private injectGroupMemberListActivity(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;
    .locals 2

    .line 1401
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1404
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1403
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1401
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1406
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1407
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1406
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1408
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1409
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1412
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1411
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1409
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1414
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideGroupMemberListControllerProvider:Ljavax/inject/Provider;

    .line 1415
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;

    .line 1414
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListController;)V

    return-object p1
.end method

.method private injectIntroductionActivity(Lorg/briarproject/briar/android/introduction/IntroductionActivity;)Lorg/briarproject/briar/android/introduction/IntroductionActivity;
    .locals 2

    .line 1733
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1736
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1735
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1733
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1738
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1739
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1738
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1740
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1741
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1744
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1743
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1741
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    return-object p1
.end method

.method private injectIntroductionMessageFragment(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;)Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;
    .locals 2

    .line 1980
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1983
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->contactManager()Lorg/briarproject/bramble/api/contact/ContactManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1982
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 1980
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;->injectContactManager(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/bramble/api/contact/ContactManager;)V

    .line 1985
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1988
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->introductionManager()Lorg/briarproject/briar/api/introduction/IntroductionManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1987
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/introduction/IntroductionManager;

    .line 1985
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment_MembersInjector;->injectIntroductionManager(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;Lorg/briarproject/briar/api/introduction/IntroductionManager;)V

    return-object p1
.end method

.method private injectKeyAgreementActivity(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;)Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;
    .locals 2

    .line 1177
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1180
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1179
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1177
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1182
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1183
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1182
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1184
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1185
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1188
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1187
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1185
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1190
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1193
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->eventBus()Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1192
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    .line 1190
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-object p1
.end method

.method private injectKeyAgreementFragment(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;
    .locals 2

    .line 1917
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1920
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->eventBus()Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1919
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    .line 1917
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/fragment/BaseEventFragment_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/fragment/BaseEventFragment;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 1922
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->keyAgreementTaskProvider:Lorg/briarproject/briar/android/activity/DaggerActivityComponent$org_briarproject_briar_android_AndroidComponent_keyAgreementTask;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->injectKeyAgreementTaskProvider(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Ljavax/inject/Provider;)V

    .line 1924
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1927
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->payloadEncoder()Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1926
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;

    .line 1924
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->injectPayloadEncoder(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/PayloadEncoder;)V

    .line 1929
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1932
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->payloadParser()Lorg/briarproject/bramble/api/keyagreement/PayloadParser;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1931
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/keyagreement/PayloadParser;

    .line 1929
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->injectPayloadParser(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/keyagreement/PayloadParser;)V

    .line 1934
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1937
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1936
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 1934
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->injectIoExecutor(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Ljava/util/concurrent/Executor;)V

    .line 1939
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1942
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->eventBus()Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1941
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    .line 1939
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-object p1
.end method

.method private injectNavDrawerActivity(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;
    .locals 2

    .line 1053
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1056
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1055
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1053
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1058
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1059
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1058
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1060
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1061
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1064
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1063
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1061
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1066
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideNavDrawerControllerProvider:Ljavax/inject/Provider;

    .line 1067
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController;

    .line 1066
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/briar/android/navdrawer/NavDrawerController;)V

    .line 1068
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1071
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lifecycleManager()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1070
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 1068
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity_MembersInjector;->injectLifecycleManager(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    return-object p1
.end method

.method private injectOpenDatabaseActivity(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)Lorg/briarproject/briar/android/login/OpenDatabaseActivity;
    .locals 2

    .line 1026
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1029
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1028
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1026
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1031
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1032
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1031
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1033
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1034
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1037
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1036
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1034
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1039
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1042
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lifecycleManager()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1041
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    .line 1039
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->injectLifecycleManager(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;)V

    .line 1044
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1047
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->eventBus()Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1046
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    .line 1044
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/OpenDatabaseActivity_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;Lorg/briarproject/bramble/api/event/EventBus;)V

    return-object p1
.end method

.method private injectPanicPreferencesActivity(Lorg/briarproject/briar/android/panic/PanicPreferencesActivity;)Lorg/briarproject/briar/android/panic/PanicPreferencesActivity;
    .locals 2

    .line 1128
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1131
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1130
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1128
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1133
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1134
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1133
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1135
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1136
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1139
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1138
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1136
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    return-object p1
.end method

.method private injectPanicResponderActivity(Lorg/briarproject/briar/android/panic/PanicResponderActivity;)Lorg/briarproject/briar/android/panic/PanicResponderActivity;
    .locals 2

    .line 1100
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1103
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1102
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1100
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1105
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1106
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1105
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1107
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1108
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1111
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1110
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1108
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1113
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1116
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->accountManager()Lorg/briarproject/bramble/api/account/AccountManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1115
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    .line 1113
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/panic/PanicResponderActivity_MembersInjector;->injectAccountManager(Lorg/briarproject/briar/android/panic/PanicResponderActivity;Lorg/briarproject/bramble/api/account/AccountManager;)V

    .line 1118
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1121
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->androidExecutor()Lorg/briarproject/bramble/api/system/AndroidExecutor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1120
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    .line 1118
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/panic/PanicResponderActivity_MembersInjector;->injectAndroidExecutor(Lorg/briarproject/briar/android/panic/PanicResponderActivity;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V

    return-object p1
.end method

.method private injectPasswordActivity(Lorg/briarproject/briar/android/login/PasswordActivity;)Lorg/briarproject/briar/android/login/PasswordActivity;
    .locals 2

    .line 1077
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1080
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1079
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1077
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1082
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1085
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->accountManager()Lorg/briarproject/bramble/api/account/AccountManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1084
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    .line 1082
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->injectAccountManager(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/bramble/api/account/AccountManager;)V

    .line 1087
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1090
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->androidNotificationManager()Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1089
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 1087
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 1092
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->providePasswordControllerProvider:Ljavax/inject/Provider;

    .line 1093
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/login/PasswordController;

    .line 1092
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->injectPasswordController(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/briar/android/login/PasswordController;)V

    .line 1094
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1095
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1094
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/PasswordActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    return-object p1
.end method

.method private injectPasswordFragment(Lorg/briarproject/briar/android/login/PasswordFragment;)Lorg/briarproject/briar/android/login/PasswordFragment;
    .locals 1

    .line 1828
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideSetupControllerProvider:Ljavax/inject/Provider;

    .line 1829
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/login/SetupController;

    .line 1828
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/SetupFragment_MembersInjector;->injectSetupController(Ljava/lang/Object;Lorg/briarproject/briar/android/login/SetupController;)V

    return-object p1
.end method

.method private injectReblogActivity(Lorg/briarproject/briar/android/blog/ReblogActivity;)Lorg/briarproject/briar/android/blog/ReblogActivity;
    .locals 2

    .line 1658
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1661
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1660
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1658
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1663
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1664
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1663
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1665
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1666
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1669
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1668
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1666
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    return-object p1
.end method

.method private injectReblogFragment(Lorg/briarproject/briar/android/blog/ReblogFragment;)Lorg/briarproject/briar/android/blog/ReblogFragment;
    .locals 1

    .line 1652
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideFeedControllerProvider:Ljavax/inject/Provider;

    .line 1653
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/blog/FeedController;

    .line 1652
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/ReblogFragment_MembersInjector;->injectFeedController(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/briar/android/blog/FeedController;)V

    return-object p1
.end method

.method private injectRevealContactsActivity(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;
    .locals 2

    .line 1420
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1423
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1422
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1420
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1425
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1426
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1425
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1427
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1428
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1431
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1430
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1428
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1433
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideRevealContactsControllerProvider:Ljavax/inject/Provider;

    .line 1434
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;

    .line 1433
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;)V

    return-object p1
.end method

.method private injectRevealContactsFragment(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;
    .locals 1

    .line 1881
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideRevealContactsControllerProvider:Ljavax/inject/Provider;

    .line 1882
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;

    .line 1881
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment_MembersInjector;->injectController(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsController;)V

    return-object p1
.end method

.method private injectRssFeedImportActivity(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)Lorg/briarproject/briar/android/blog/RssFeedImportActivity;
    .locals 2

    .line 1750
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1753
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1752
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1750
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1755
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1756
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1755
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1757
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1758
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1761
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1760
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1758
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1763
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1766
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->ioExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1765
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 1763
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity_MembersInjector;->injectIoExecutor(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;Ljava/util/concurrent/Executor;)V

    .line 1768
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1771
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->feedManager()Lorg/briarproject/briar/api/feed/FeedManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1770
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/feed/FeedManager;

    .line 1768
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/RssFeedImportActivity_MembersInjector;->injectFeedManager(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;Lorg/briarproject/briar/api/feed/FeedManager;)V

    return-object p1
.end method

.method private injectRssFeedManageActivity(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;)Lorg/briarproject/briar/android/blog/RssFeedManageActivity;
    .locals 2

    .line 1777
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1780
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1779
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1777
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1782
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1783
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1782
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1784
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1785
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1788
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1787
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1785
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1790
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1793
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->feedManager()Lorg/briarproject/briar/api/feed/FeedManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1792
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/feed/FeedManager;

    .line 1790
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/RssFeedManageActivity_MembersInjector;->injectFeedManager(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;Lorg/briarproject/briar/api/feed/FeedManager;)V

    return-object p1
.end method

.method private injectScreenFilterDialogFragment(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;)Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;
    .locals 2

    .line 2024
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 2027
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2026
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 2024
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    return-object p1
.end method

.method private injectSettingsActivity(Lorg/briarproject/briar/android/settings/SettingsActivity;)Lorg/briarproject/briar/android/settings/SettingsActivity;
    .locals 2

    .line 1675
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1678
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1677
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1675
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1680
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1681
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1680
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1682
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1683
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1686
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1685
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1683
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    return-object p1
.end method

.method private injectSettingsFragment(Lorg/briarproject/briar/android/settings/SettingsFragment;)Lorg/briarproject/briar/android/settings/SettingsFragment;
    .locals 2

    .line 1994
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1997
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->settingsManager()Lorg/briarproject/bramble/api/settings/SettingsManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1996
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/settings/SettingsManager;

    .line 1994
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->injectSettingsManager(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/settings/SettingsManager;)V

    .line 1999
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 2002
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->eventBus()Lorg/briarproject/bramble/api/event/EventBus;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2001
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    .line 1999
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 2004
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 2007
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->locationUtils()Lorg/briarproject/bramble/api/system/LocationUtils;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2006
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/LocationUtils;

    .line 2004
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->injectLocationUtils(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/system/LocationUtils;)V

    .line 2009
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 2012
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->circumventionProvider()Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2011
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    .line 2009
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->injectCircumventionProvider(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;)V

    .line 2014
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 2017
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->androidExecutor()Lorg/briarproject/bramble/api/system/AndroidExecutor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 2016
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    .line 2014
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment_MembersInjector;->injectAndroidExecutor(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V

    return-object p1
.end method

.method private injectSetupActivity(Lorg/briarproject/briar/android/login/SetupActivity;)Lorg/briarproject/briar/android/login/SetupActivity;
    .locals 2

    .line 1010
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1013
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1012
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1010
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1015
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1018
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->accountManager()Lorg/briarproject/bramble/api/account/AccountManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1017
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    .line 1015
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;->injectAccountManager(Lorg/briarproject/briar/android/login/SetupActivity;Lorg/briarproject/bramble/api/account/AccountManager;)V

    .line 1020
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideSetupControllerProvider:Ljavax/inject/Provider;

    .line 1021
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/login/SetupController;

    .line 1020
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/SetupActivity_MembersInjector;->injectSetupController(Lorg/briarproject/briar/android/login/SetupActivity;Lorg/briarproject/briar/android/login/SetupController;)V

    return-object p1
.end method

.method private injectShareBlogActivity(Lorg/briarproject/briar/android/sharing/ShareBlogActivity;)Lorg/briarproject/briar/android/sharing/ShareBlogActivity;
    .locals 2

    .line 1480
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1483
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1482
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1480
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1485
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1486
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1485
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1487
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1488
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1491
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1490
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1488
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1493
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideShareBlogControllerProvider:Ljavax/inject/Provider;

    .line 1494
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/sharing/ShareBlogController;

    .line 1493
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/sharing/ShareBlogActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/sharing/ShareBlogActivity;Lorg/briarproject/briar/android/sharing/ShareBlogController;)V

    return-object p1
.end method

.method private injectShareBlogFragment(Lorg/briarproject/briar/android/sharing/ShareBlogFragment;)Lorg/briarproject/briar/android/sharing/ShareBlogFragment;
    .locals 1

    .line 1973
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideShareBlogControllerProvider:Ljavax/inject/Provider;

    .line 1974
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/sharing/ShareBlogController;

    .line 1973
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/sharing/ShareBlogFragment_MembersInjector;->injectController(Lorg/briarproject/briar/android/sharing/ShareBlogFragment;Lorg/briarproject/briar/android/sharing/ShareBlogController;)V

    return-object p1
.end method

.method private injectShareForumActivity(Lorg/briarproject/briar/android/sharing/ShareForumActivity;)Lorg/briarproject/briar/android/sharing/ShareForumActivity;
    .locals 2

    .line 1461
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1464
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1463
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1461
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1466
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1467
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1466
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1468
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1469
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1472
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1471
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1469
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1474
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideShareForumControllerProvider:Ljavax/inject/Provider;

    .line 1475
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/sharing/ShareForumController;

    .line 1474
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/sharing/ShareForumActivity_MembersInjector;->injectController(Lorg/briarproject/briar/android/sharing/ShareForumActivity;Lorg/briarproject/briar/android/sharing/ShareForumController;)V

    return-object p1
.end method

.method private injectShareForumFragment(Lorg/briarproject/briar/android/sharing/ShareForumFragment;)Lorg/briarproject/briar/android/sharing/ShareForumFragment;
    .locals 1

    .line 1967
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideShareForumControllerProvider:Ljavax/inject/Provider;

    .line 1968
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/sharing/ShareForumController;

    .line 1967
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/sharing/ShareForumFragment_MembersInjector;->injectController(Lorg/briarproject/briar/android/sharing/ShareForumFragment;Lorg/briarproject/briar/android/sharing/ShareForumController;)V

    return-object p1
.end method

.method private injectSplashScreenActivity(Lorg/briarproject/briar/android/splash/SplashScreenActivity;)Lorg/briarproject/briar/android/splash/SplashScreenActivity;
    .locals 2

    .line 986
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 989
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 988
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 986
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 991
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 994
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->accountManager()Lorg/briarproject/bramble/api/account/AccountManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 993
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/account/AccountManager;

    .line 991
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->injectAccountManager(Lorg/briarproject/briar/android/splash/SplashScreenActivity;Lorg/briarproject/bramble/api/account/AccountManager;)V

    .line 996
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 999
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 998
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 996
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/splash/SplashScreenActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1001
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1004
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->androidExecutor()Lorg/briarproject/bramble/api/system/AndroidExecutor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1003
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/system/AndroidExecutor;

    .line 1001
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/splash/SplashScreenActivity_MembersInjector;->injectAndroidExecutor(Lorg/briarproject/briar/android/splash/SplashScreenActivity;Lorg/briarproject/bramble/api/system/AndroidExecutor;)V

    return-object p1
.end method

.method private injectStartupFailureActivity(Lorg/briarproject/briar/android/StartupFailureActivity;)Lorg/briarproject/briar/android/StartupFailureActivity;
    .locals 2

    .line 1799
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1802
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1801
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1799
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    return-object p1
.end method

.method private injectTestDataActivity(Lorg/briarproject/briar/android/test/TestDataActivity;)Lorg/briarproject/briar/android/test/TestDataActivity;
    .locals 2

    .line 1692
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1695
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1694
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1692
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1697
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1698
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1697
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1699
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1700
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1703
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1702
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1700
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1705
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1708
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->testDataCreator()Lorg/briarproject/briar/api/test/TestDataCreator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1707
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/test/TestDataCreator;

    .line 1705
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/test/TestDataActivity_MembersInjector;->injectTestDataCreator(Lorg/briarproject/briar/android/test/TestDataActivity;Lorg/briarproject/briar/api/test/TestDataCreator;)V

    return-object p1
.end method

.method private injectUnlockActivity(Lorg/briarproject/briar/android/login/UnlockActivity;)Lorg/briarproject/briar/android/login/UnlockActivity;
    .locals 2

    .line 1808
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1811
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1810
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1808
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1813
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1816
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1815
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1813
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/login/UnlockActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/login/UnlockActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    return-object p1
.end method

.method private injectWriteBlogPostActivity(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;
    .locals 2

    .line 1595
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1598
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->screenFilterMonitor()Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1597
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 1595
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 1600
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideBriarControllerProvider:Ljavax/inject/Provider;

    .line 1601
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    .line 1600
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 1602
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideDBControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 1603
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1606
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->lockManager()Lorg/briarproject/briar/api/android/LockManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1605
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    .line 1603
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 1608
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1611
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->androidNotificationManager()Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1610
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    .line 1608
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 1613
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1616
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->identityManager()Lorg/briarproject/bramble/api/identity/IdentityManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1615
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 1613
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->injectIdentityManager(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/bramble/api/identity/IdentityManager;)V

    .line 1618
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1621
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->blogPostFactory()Lorg/briarproject/briar/api/blog/BlogPostFactory;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1620
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogPostFactory;

    .line 1618
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->injectBlogPostFactory(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/briar/api/blog/BlogPostFactory;)V

    .line 1623
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->androidComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 1626
    invoke-interface {v0}, Lorg/briarproject/briar/android/AndroidComponent;->blogManager()Lorg/briarproject/briar/api/blog/BlogManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 1625
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogManager;

    .line 1623
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/blog/WriteBlogPostActivity_MembersInjector;->injectBlogManager(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;Lorg/briarproject/briar/api/blog/BlogManager;)V

    return-object p1
.end method


# virtual methods
.method public activity()Landroid/app/Activity;
    .locals 1

    .line 682
    iget-object v0, p0, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->provideActivityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public inject(Lorg/briarproject/briar/android/StartupFailureActivity;)V
    .locals 0

    .line 872
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectStartupFailureActivity(Lorg/briarproject/briar/android/StartupFailureActivity;)Lorg/briarproject/briar/android/StartupFailureActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/blog/BlogActivity;)V
    .locals 0

    .line 807
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectBlogActivity(Lorg/briarproject/briar/android/blog/BlogActivity;)Lorg/briarproject/briar/android/blog/BlogActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/blog/BlogFragment;)V
    .locals 0

    .line 817
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectBlogFragment(Lorg/briarproject/briar/android/blog/BlogFragment;)Lorg/briarproject/briar/android/blog/BlogFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/blog/BlogPostFragment;)V
    .locals 0

    .line 822
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectBlogPostFragment(Lorg/briarproject/briar/android/blog/BlogPostFragment;)Lorg/briarproject/briar/android/blog/BlogPostFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/blog/FeedFragment;)V
    .locals 0

    .line 928
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectFeedFragment(Lorg/briarproject/briar/android/blog/FeedFragment;)Lorg/briarproject/briar/android/blog/FeedFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/blog/FeedPostFragment;)V
    .locals 0

    .line 827
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectFeedPostFragment(Lorg/briarproject/briar/android/blog/FeedPostFragment;)Lorg/briarproject/briar/android/blog/FeedPostFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/blog/ReblogActivity;)V
    .locals 0

    .line 837
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectReblogActivity(Lorg/briarproject/briar/android/blog/ReblogActivity;)Lorg/briarproject/briar/android/blog/ReblogActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/blog/ReblogFragment;)V
    .locals 0

    .line 832
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectReblogFragment(Lorg/briarproject/briar/android/blog/ReblogFragment;)Lorg/briarproject/briar/android/blog/ReblogFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)V
    .locals 0

    .line 862
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectRssFeedImportActivity(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)Lorg/briarproject/briar/android/blog/RssFeedImportActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;)V
    .locals 0

    .line 867
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectRssFeedManageActivity(Lorg/briarproject/briar/android/blog/RssFeedManageActivity;)Lorg/briarproject/briar/android/blog/RssFeedManageActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)V
    .locals 0

    .line 812
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectWriteBlogPostActivity(Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;)Lorg/briarproject/briar/android/blog/WriteBlogPostActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/contact/ContactListFragment;)V
    .locals 0

    .line 897
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectContactListFragment(Lorg/briarproject/briar/android/contact/ContactListFragment;)Lorg/briarproject/briar/android/contact/ContactListFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;)V
    .locals 0

    .line 982
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectAliasDialogFragment(Lorg/briarproject/briar/android/conversation/AliasDialogFragment;)Lorg/briarproject/briar/android/conversation/AliasDialogFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V
    .locals 0

    .line 732
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectConversationActivity(Lorg/briarproject/briar/android/conversation/ConversationActivity;)Lorg/briarproject/briar/android/conversation/ConversationActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/forum/CreateForumActivity;)V
    .locals 0

    .line 777
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectCreateForumActivity(Lorg/briarproject/briar/android/forum/CreateForumActivity;)Lorg/briarproject/briar/android/forum/CreateForumActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/forum/ForumActivity;)V
    .locals 0

    .line 802
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectForumActivity(Lorg/briarproject/briar/android/forum/ForumActivity;)Lorg/briarproject/briar/android/forum/ForumActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/forum/ForumListFragment;)V
    .locals 0

    .line 923
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectForumListFragment(Lorg/briarproject/briar/android/forum/ForumListFragment;)Lorg/briarproject/briar/android/forum/ForumListFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;)V
    .locals 0

    .line 972
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectScreenFilterDialogFragment(Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;)Lorg/briarproject/briar/android/fragment/ScreenFilterDialogFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;)V
    .locals 0

    .line 941
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectContactChooserFragment(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;)Lorg/briarproject/briar/android/introduction/ContactChooserFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/introduction/IntroductionActivity;)V
    .locals 0

    .line 857
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectIntroductionActivity(Lorg/briarproject/briar/android/introduction/IntroductionActivity;)Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;)V
    .locals 0

    .line 962
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectIntroductionMessageFragment(Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;)Lorg/briarproject/briar/android/introduction/IntroductionMessageFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;)V
    .locals 0

    .line 722
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectContactExchangeActivity(Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;)Lorg/briarproject/briar/android/keyagreement/ContactExchangeActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;)V
    .locals 0

    .line 977
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectContactExchangeErrorFragment(Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;)Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/keyagreement/IntroFragment;)V
    .locals 0

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;)V
    .locals 0

    .line 727
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectKeyAgreementActivity(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;)Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)V
    .locals 0

    .line 936
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectKeyAgreementFragment(Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;)Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/login/AuthorNameFragment;)V
    .locals 0

    .line 882
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectAuthorNameFragment(Lorg/briarproject/briar/android/login/AuthorNameFragment;)Lorg/briarproject/briar/android/login/AuthorNameFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/login/ChangePasswordActivity;)V
    .locals 0

    .line 852
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectChangePasswordActivity(Lorg/briarproject/briar/android/login/ChangePasswordActivity;)Lorg/briarproject/briar/android/login/ChangePasswordActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/login/DozeFragment;)V
    .locals 0

    .line 892
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectDozeFragment(Lorg/briarproject/briar/android/login/DozeFragment;)Lorg/briarproject/briar/android/login/DozeFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)V
    .locals 0

    .line 697
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectOpenDatabaseActivity(Lorg/briarproject/briar/android/login/OpenDatabaseActivity;)Lorg/briarproject/briar/android/login/OpenDatabaseActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/login/PasswordActivity;)V
    .locals 0

    .line 707
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectPasswordActivity(Lorg/briarproject/briar/android/login/PasswordActivity;)Lorg/briarproject/briar/android/login/PasswordActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/login/PasswordFragment;)V
    .locals 0

    .line 887
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectPasswordFragment(Lorg/briarproject/briar/android/login/PasswordFragment;)Lorg/briarproject/briar/android/login/PasswordFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/login/SetupActivity;)V
    .locals 0

    .line 692
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectSetupActivity(Lorg/briarproject/briar/android/login/SetupActivity;)Lorg/briarproject/briar/android/login/SetupActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/login/UnlockActivity;)V
    .locals 0

    .line 877
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectUnlockActivity(Lorg/briarproject/briar/android/login/UnlockActivity;)Lorg/briarproject/briar/android/login/UnlockActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)V
    .locals 0

    .line 702
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectNavDrawerActivity(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/panic/PanicPreferencesActivity;)V
    .locals 0

    .line 717
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectPanicPreferencesActivity(Lorg/briarproject/briar/android/panic/PanicPreferencesActivity;)Lorg/briarproject/briar/android/panic/PanicPreferencesActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/panic/PanicResponderActivity;)V
    .locals 0

    .line 712
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectPanicResponderActivity(Lorg/briarproject/briar/android/panic/PanicResponderActivity;)Lorg/briarproject/briar/android/panic/PanicResponderActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)V
    .locals 0

    .line 752
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectGroupActivity(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;)V
    .locals 0

    .line 747
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectCreateGroupActivity(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;)Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupFragment;)V
    .locals 0

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupMessageFragment;)V
    .locals 0

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;)V
    .locals 0

    .line 757
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectGroupInviteActivity(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;)Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;)V
    .locals 0

    .line 913
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectGroupInviteFragment(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;)Lorg/briarproject/briar/android/privategroup/creation/GroupInviteFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;)V
    .locals 0

    .line 762
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectGroupInvitationActivity(Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;)Lorg/briarproject/briar/android/privategroup/invitation/GroupInvitationActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)V
    .locals 0

    .line 908
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectGroupListFragment(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;)Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;)V
    .locals 0

    .line 767
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectGroupMemberListActivity(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;)Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;)V
    .locals 0

    .line 772
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectRevealContactsActivity(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;)V
    .locals 0

    .line 918
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectRevealContactsFragment(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;)Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/settings/SettingsActivity;)V
    .locals 0

    .line 842
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectSettingsActivity(Lorg/briarproject/briar/android/settings/SettingsActivity;)Lorg/briarproject/briar/android/settings/SettingsActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/settings/SettingsFragment;)V
    .locals 0

    .line 967
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectSettingsFragment(Lorg/briarproject/briar/android/settings/SettingsFragment;)Lorg/briarproject/briar/android/settings/SettingsFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/sharing/BlogInvitationActivity;)V
    .locals 0

    .line 742
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectBlogInvitationActivity(Lorg/briarproject/briar/android/sharing/BlogInvitationActivity;)Lorg/briarproject/briar/android/sharing/BlogInvitationActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/sharing/BlogSharingStatusActivity;)V
    .locals 0

    .line 797
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectBlogSharingStatusActivity(Lorg/briarproject/briar/android/sharing/BlogSharingStatusActivity;)Lorg/briarproject/briar/android/sharing/BlogSharingStatusActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/sharing/ForumInvitationActivity;)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectForumInvitationActivity(Lorg/briarproject/briar/android/sharing/ForumInvitationActivity;)Lorg/briarproject/briar/android/sharing/ForumInvitationActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;)V
    .locals 0

    .line 792
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectForumSharingStatusActivity(Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;)Lorg/briarproject/briar/android/sharing/ForumSharingStatusActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/sharing/ShareBlogActivity;)V
    .locals 0

    .line 787
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectShareBlogActivity(Lorg/briarproject/briar/android/sharing/ShareBlogActivity;)Lorg/briarproject/briar/android/sharing/ShareBlogActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/sharing/ShareBlogFragment;)V
    .locals 0

    .line 954
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectShareBlogFragment(Lorg/briarproject/briar/android/sharing/ShareBlogFragment;)Lorg/briarproject/briar/android/sharing/ShareBlogFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/sharing/ShareBlogMessageFragment;)V
    .locals 0

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/sharing/ShareForumActivity;)V
    .locals 0

    .line 782
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectShareForumActivity(Lorg/briarproject/briar/android/sharing/ShareForumActivity;)Lorg/briarproject/briar/android/sharing/ShareForumActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/sharing/ShareForumFragment;)V
    .locals 0

    .line 946
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectShareForumFragment(Lorg/briarproject/briar/android/sharing/ShareForumFragment;)Lorg/briarproject/briar/android/sharing/ShareForumFragment;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/sharing/ShareForumMessageFragment;)V
    .locals 0

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/splash/SplashScreenActivity;)V
    .locals 0

    .line 687
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectSplashScreenActivity(Lorg/briarproject/briar/android/splash/SplashScreenActivity;)Lorg/briarproject/briar/android/splash/SplashScreenActivity;

    return-void
.end method

.method public inject(Lorg/briarproject/briar/android/test/TestDataActivity;)V
    .locals 0

    .line 847
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/activity/DaggerActivityComponent;->injectTestDataActivity(Lorg/briarproject/briar/android/test/TestDataActivity;)Lorg/briarproject/briar/android/test/TestDataActivity;

    return-void
.end method
