.class public final Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;
.super Ljava/lang/Object;
.source "ForumMessageParserImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/sharing/ForumMessageParserImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final forumFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumFactory;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;->forumFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumFactory;",
            ">;)",
            "Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newForumMessageParserImpl(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/forum/ForumFactory;)Lorg/briarproject/briar/sharing/ForumMessageParserImpl;
    .locals 1

    .line 41
    new-instance v0, Lorg/briarproject/briar/sharing/ForumMessageParserImpl;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/sharing/ForumMessageParserImpl;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/forum/ForumFactory;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumMessageParserImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumFactory;",
            ">;)",
            "Lorg/briarproject/briar/sharing/ForumMessageParserImpl;"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/briarproject/briar/sharing/ForumMessageParserImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/api/forum/ForumFactory;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/sharing/ForumMessageParserImpl;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/forum/ForumFactory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;->get()Lorg/briarproject/briar/sharing/ForumMessageParserImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/sharing/ForumMessageParserImpl;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;->forumFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lorg/briarproject/briar/sharing/ForumMessageParserImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumMessageParserImpl;

    move-result-object v0

    return-object v0
.end method
