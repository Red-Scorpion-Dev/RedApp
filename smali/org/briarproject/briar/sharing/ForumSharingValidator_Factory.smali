.class public final Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;
.super Ljava/lang/Object;
.source "ForumSharingValidator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/sharing/ForumSharingValidator;",
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

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
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

.field private final messageEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
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
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumFactory;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->messageEncoderProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->metadataEncoderProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p5, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->forumFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumFactory;",
            ">;)",
            "Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;"
        }
    .end annotation

    .line 69
    new-instance v6, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newForumSharingValidator(Ljava/lang/Object;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/forum/ForumFactory;)Lorg/briarproject/briar/sharing/ForumSharingValidator;
    .locals 7

    .line 83
    new-instance v6, Lorg/briarproject/briar/sharing/ForumSharingValidator;

    move-object v1, p0

    check-cast v1, Lorg/briarproject/briar/sharing/MessageEncoder;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/sharing/ForumSharingValidator;-><init>(Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/forum/ForumFactory;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumSharingValidator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumFactory;",
            ">;)",
            "Lorg/briarproject/briar/sharing/ForumSharingValidator;"
        }
    .end annotation

    .line 55
    new-instance v6, Lorg/briarproject/briar/sharing/ForumSharingValidator;

    .line 56
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/briarproject/briar/sharing/MessageEncoder;

    .line 57
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 58
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/briarproject/bramble/api/data/MetadataEncoder;

    .line 59
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lorg/briarproject/bramble/api/system/Clock;

    .line 60
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lorg/briarproject/briar/api/forum/ForumFactory;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/sharing/ForumSharingValidator;-><init>(Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/forum/ForumFactory;)V

    return-object v6
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->get()Lorg/briarproject/briar/sharing/ForumSharingValidator;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/sharing/ForumSharingValidator;
    .locals 5

    .line 41
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->messageEncoderProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->metadataEncoderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->clockProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->forumFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/briarproject/briar/sharing/ForumSharingValidator_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumSharingValidator;

    move-result-object v0

    return-object v0
.end method
