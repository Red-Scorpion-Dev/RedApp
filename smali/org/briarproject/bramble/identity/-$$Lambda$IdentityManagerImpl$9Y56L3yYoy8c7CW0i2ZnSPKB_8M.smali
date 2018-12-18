.class public final synthetic Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$9Y56L3yYoy8c7CW0i2ZnSPKB_8M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/identity/IdentityManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/identity/LocalAuthor;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/identity/IdentityManagerImpl;Lorg/briarproject/bramble/api/identity/LocalAuthor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$9Y56L3yYoy8c7CW0i2ZnSPKB_8M;->f$0:Lorg/briarproject/bramble/identity/IdentityManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$9Y56L3yYoy8c7CW0i2ZnSPKB_8M;->f$1:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$9Y56L3yYoy8c7CW0i2ZnSPKB_8M;->f$0:Lorg/briarproject/bramble/identity/IdentityManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$9Y56L3yYoy8c7CW0i2ZnSPKB_8M;->f$1:Lorg/briarproject/bramble/api/identity/LocalAuthor;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->lambda$storeLocalAuthor$0(Lorg/briarproject/bramble/identity/IdentityManagerImpl;Lorg/briarproject/bramble/api/identity/LocalAuthor;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
