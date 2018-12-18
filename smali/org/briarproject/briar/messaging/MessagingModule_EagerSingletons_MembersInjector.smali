.class public final Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;
.super Ljava/lang/Object;
.source "MessagingModule_EagerSingletons_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;",
        ">;"
    }
.end annotation


# instance fields
.field private final conversationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
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

.field private final privateMessageValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/messaging/PrivateMessageValidator;",
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
            "Lorg/briarproject/briar/api/messaging/MessagingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/messaging/PrivateMessageValidator;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->messagingManagerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->conversationManagerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->privateMessageValidatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/MessagingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/messaging/PrivateMessageValidator;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectConversationManager(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;Lorg/briarproject/briar/api/conversation/ConversationManager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;->conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

    return-void
.end method

.method public static injectMessagingManager(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;Lorg/briarproject/briar/api/messaging/MessagingManager;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;->messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

    return-void
.end method

.method public static injectPrivateMessageValidator(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lorg/briarproject/briar/messaging/PrivateMessageValidator;

    iput-object p1, p0, Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;->privateMessageValidator:Lorg/briarproject/briar/messaging/PrivateMessageValidator;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->injectMembers(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->messagingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/messaging/MessagingManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->injectMessagingManager(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;Lorg/briarproject/briar/api/messaging/MessagingManager;)V

    .line 41
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->conversationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/briar/api/conversation/ConversationManager;

    invoke-static {p1, v0}, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->injectConversationManager(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;Lorg/briarproject/briar/api/conversation/ConversationManager;)V

    .line 42
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->privateMessageValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/briarproject/briar/messaging/MessagingModule_EagerSingletons_MembersInjector;->injectPrivateMessageValidator(Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;Ljava/lang/Object;)V

    return-void
.end method
