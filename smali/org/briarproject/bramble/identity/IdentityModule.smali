.class public Lorg/briarproject/bramble/identity/IdentityModule;
.super Ljava/lang/Object;
.source "IdentityModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/identity/IdentityModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideAuthorFactory(Lorg/briarproject/bramble/identity/AuthorFactoryImpl;)Lorg/briarproject/bramble/api/identity/AuthorFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideIdentityManager(Lorg/briarproject/bramble/identity/IdentityManagerImpl;)Lorg/briarproject/bramble/api/identity/IdentityManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
