.class public final Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;
.super Ljava/lang/Object;
.source "ForumFactoryImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/forum/ForumFactoryImpl;",
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

.field private final groupFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/GroupFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final randomProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/security/SecureRandom;",
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
            "Lorg/briarproject/bramble/api/sync/GroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/security/SecureRandom;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;->groupFactoryProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;->randomProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/GroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/security/SecureRandom;",
            ">;)",
            "Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newForumFactoryImpl(Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Ljava/security/SecureRandom;)Lorg/briarproject/briar/forum/ForumFactoryImpl;
    .locals 1

    .line 52
    new-instance v0, Lorg/briarproject/briar/forum/ForumFactoryImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/forum/ForumFactoryImpl;-><init>(Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumFactoryImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/sync/GroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/security/SecureRandom;",
            ">;)",
            "Lorg/briarproject/briar/forum/ForumFactoryImpl;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/briarproject/briar/forum/ForumFactoryImpl;

    .line 40
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/sync/GroupFactory;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/SecureRandom;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/forum/ForumFactoryImpl;-><init>(Lorg/briarproject/bramble/api/sync/GroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Ljava/security/SecureRandom;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;->get()Lorg/briarproject/briar/forum/ForumFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/forum/ForumFactoryImpl;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;->groupFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;->randomProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/forum/ForumFactoryImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/forum/ForumFactoryImpl;

    move-result-object v0

    return-object v0
.end method
