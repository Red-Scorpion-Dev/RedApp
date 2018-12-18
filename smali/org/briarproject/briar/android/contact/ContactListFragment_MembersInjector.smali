.class public final Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;
.super Ljava/lang/Object;
.source "ContactListFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/contact/ContactListFragment;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->connectionRegistryProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->contactManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->conversationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/android/AndroidNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/contact/ContactListFragment;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v6, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectConnectionRegistry(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    return-void
.end method

.method public static injectContactManager(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    return-void
.end method

.method public static injectConversationManager(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/briar/api/conversation/ConversationManager;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

    return-void
.end method

.method public static injectEventBus(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/event/EventBus;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    return-void
.end method

.method public static injectNotificationManager(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/briarproject/briar/android/contact/ContactListFragment;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lorg/briarproject/briar/android/contact/ContactListFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/contact/ContactListFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/contact/ContactListFragment;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->connectionRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->injectConnectionRegistry(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->injectEventBus(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/event/EventBus;)V

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->injectNotificationManager(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/briar/api/android/AndroidNotificationManager;)V

    .line 60
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->contactManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->injectContactManager(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/bramble/api/contact/ContactManager;)V

    .line 61
    iget-object v0, p0, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->conversationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/conversation/ConversationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/contact/ContactListFragment_MembersInjector;->injectConversationManager(Lorg/briarproject/briar/android/contact/ContactListFragment;Lorg/briarproject/briar/api/conversation/ConversationManager;)V

    return-void
.end method
