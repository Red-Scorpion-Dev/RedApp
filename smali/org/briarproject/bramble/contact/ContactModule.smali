.class public Lorg/briarproject/bramble/contact/ContactModule;
.super Ljava/lang/Object;
.source "ContactModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/contact/ContactModule$EagerSingletons;
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
.method getContactManager(Lorg/briarproject/bramble/contact/ContactManagerImpl;)Lorg/briarproject/bramble/api/contact/ContactManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideContactExchangeTask(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;)Lorg/briarproject/bramble/api/contact/ContactExchangeTask;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
