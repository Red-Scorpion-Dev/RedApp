.class public Lorg/briarproject/bramble/account/BriarAccountModule;
.super Ljava/lang/Object;
.source "BriarAccountModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideAccountManager(Lorg/briarproject/bramble/account/BriarAccountManager;)Lorg/briarproject/bramble/api/account/AccountManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
