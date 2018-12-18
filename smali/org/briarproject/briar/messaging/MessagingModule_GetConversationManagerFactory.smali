.class public final Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;
.super Ljava/lang/Object;
.source "MessagingModule_GetConversationManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/api/conversation/ConversationManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final conversationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/messaging/ConversationManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/briar/messaging/MessagingModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/messaging/MessagingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/messaging/ConversationManagerImpl;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;->module:Lorg/briarproject/briar/messaging/MessagingModule;

    .line 22
    iput-object p2, p0, Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;->conversationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/messaging/MessagingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/messaging/ConversationManagerImpl;",
            ">;)",
            "Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;-><init>(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/conversation/ConversationManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/messaging/MessagingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/messaging/ConversationManagerImpl;",
            ">;)",
            "Lorg/briarproject/briar/api/conversation/ConversationManager;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;->proxyGetConversationManager(Lorg/briarproject/briar/messaging/MessagingModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/conversation/ConversationManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetConversationManager(Lorg/briarproject/briar/messaging/MessagingModule;Ljava/lang/Object;)Lorg/briarproject/briar/api/conversation/ConversationManager;
    .locals 0

    .line 42
    check-cast p1, Lorg/briarproject/briar/messaging/ConversationManagerImpl;

    .line 43
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/messaging/MessagingModule;->getConversationManager(Lorg/briarproject/briar/messaging/ConversationManagerImpl;)Lorg/briarproject/briar/api/conversation/ConversationManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 42
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/conversation/ConversationManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;->get()Lorg/briarproject/briar/api/conversation/ConversationManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/api/conversation/ConversationManager;
    .locals 2

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;->module:Lorg/briarproject/briar/messaging/MessagingModule;

    iget-object v1, p0, Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;->conversationManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/messaging/MessagingModule_GetConversationManagerFactory;->provideInstance(Lorg/briarproject/briar/messaging/MessagingModule;Ljavax/inject/Provider;)Lorg/briarproject/briar/api/conversation/ConversationManager;

    move-result-object v0

    return-object v0
.end method
