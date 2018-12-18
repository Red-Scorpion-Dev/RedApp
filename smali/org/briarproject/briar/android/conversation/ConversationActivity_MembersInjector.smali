.class public final Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;
.super Ljava/lang/Object;
.source "ConversationActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/conversation/ConversationActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final blogSharingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final briarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final contactManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;"
        }
    .end annotation
.end field

.field private final conversationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final dbControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final forumSharingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final groupInvitationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final introductionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/introduction/IntroductionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final messagingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/MessagingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final privateMessageFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final screenFilterMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/arch/lifecycle/ViewModelProvider$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/MessagingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/introduction/IntroductionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/arch/lifecycle/ViewModelProvider$Factory;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 88
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 89
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 90
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 91
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 92
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 93
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->connectionRegistryProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 94
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->cryptoExecutorProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 95
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->contactManagerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 96
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->messagingManagerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 97
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->conversationManagerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 98
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 99
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->settingsManagerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 100
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->privateMessageFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 101
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->introductionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 102
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->forumSharingManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 103
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->blogSharingManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 104
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->groupInvitationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 105
    iput-object v1, v0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->viewModelFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/ScreenFilterMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/BriarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/android/controller/DbController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/LockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/MessagingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/settings/SettingsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/introduction/IntroductionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumSharingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogSharingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/arch/lifecycle/ViewModelProvider$Factory;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/conversation/ConversationActivity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    .line 127
    new-instance v19, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v19
.end method

.method public static injectBlogSharingManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/blog/BlogSharingManager;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

    return-void
.end method

.method public static injectConnectionRegistry(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    return-void
.end method

.method public static injectContactManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/contact/ContactManager;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    return-void
.end method

.method public static injectConversationManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/conversation/ConversationManager;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

    return-void
.end method

.method public static injectCryptoExecutor(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->cryptoExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static injectEventBus(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-void
.end method

.method public static injectForumSharingManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/forum/ForumSharingManager;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;

    return-void
.end method

.method public static injectGroupInvitationManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    return-void
.end method

.method public static injectIntroductionManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/introduction/IntroductionManager;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->introductionManager:Lorg/briarproject/briar/api/introduction/IntroductionManager;

    return-void
.end method

.method public static injectMessagingManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/messaging/MessagingManager;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

    return-void
.end method

.method public static injectNotificationManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    return-void
.end method

.method public static injectPrivateMessageFactory(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->privateMessageFactory:Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    return-void
.end method

.method public static injectSettingsManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/settings/SettingsManager;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    return-void
.end method

.method public static injectViewModelFactory(Lorg/briarproject/briar/android/conversation/ConversationActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModelFactory:Landroid/arch/lifecycle/ViewModelProvider$Factory;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationActivity;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->screenFilterMonitorProvider:Ljavax/inject/Provider;

    .line 151
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/ScreenFilterMonitor;

    .line 150
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BaseActivity_MembersInjector;->injectScreenFilterMonitor(Lorg/briarproject/briar/android/activity/BaseActivity;Lorg/briarproject/briar/api/android/ScreenFilterMonitor;)V

    .line 152
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->briarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/BriarController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectBriarController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/BriarController;)V

    .line 153
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->dbControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/android/controller/DbController;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectDbController(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/controller/DbController;)V

    .line 154
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->lockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/LockManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity_MembersInjector;->injectLockManager(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/api/android/LockManager;)V

    .line 155
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 156
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->connectionRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectConnectionRegistry(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    .line 157
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->cryptoExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectCryptoExecutor(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/util/concurrent/Executor;)V

    .line 158
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->contactManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectContactManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/contact/ContactManager;)V

    .line 159
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->messagingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/messaging/MessagingManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectMessagingManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/messaging/MessagingManager;)V

    .line 160
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->conversationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/conversation/ConversationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectConversationManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/conversation/ConversationManager;)V

    .line 161
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 162
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->settingsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/settings/SettingsManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectSettingsManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/settings/SettingsManager;)V

    .line 163
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->privateMessageFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectPrivateMessageFactory(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;)V

    .line 164
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->introductionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/introduction/IntroductionManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectIntroductionManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/introduction/IntroductionManager;)V

    .line 165
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->forumSharingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/forum/ForumSharingManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectForumSharingManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/forum/ForumSharingManager;)V

    .line 166
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->blogSharingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/blog/BlogSharingManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectBlogSharingManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/blog/BlogSharingManager;)V

    .line 167
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->groupInvitationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectGroupInvitationManager(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;)V

    .line 168
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->viewModelFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ViewModelProvider$Factory;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity_MembersInjector;->injectViewModelFactory(Lorg/briarproject/briar/android/conversation/ConversationActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-void
.end method
