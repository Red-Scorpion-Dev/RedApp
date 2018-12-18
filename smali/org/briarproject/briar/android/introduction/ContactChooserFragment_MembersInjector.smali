.class public final Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;
.super Ljava/lang/Object;
.source "ContactChooserFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/introduction/ContactChooserFragment;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->contactManagerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->conversationManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->connectionRegistryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/introduction/ContactChooserFragment;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectConnectionRegistry(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    return-void
.end method

.method public static injectContactManager(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Lorg/briarproject/bramble/api/contact/ContactManager;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    return-void
.end method

.method public static injectConversationManager(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Lorg/briarproject/briar/api/conversation/ConversationManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;->conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lorg/briarproject/briar/android/introduction/ContactChooserFragment;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->contactManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->injectContactManager(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Lorg/briarproject/bramble/api/contact/ContactManager;)V

    .line 42
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->conversationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/conversation/ConversationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->injectConversationManager(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Lorg/briarproject/briar/api/conversation/ConversationManager;)V

    .line 43
    iget-object v0, p0, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->connectionRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/introduction/ContactChooserFragment_MembersInjector;->injectConnectionRegistry(Lorg/briarproject/briar/android/introduction/ContactChooserFragment;Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;)V

    return-void
.end method
