.class public Lorg/briarproject/bramble/lifecycle/LifecycleModule$EagerSingletons;
.super Ljava/lang/Object;
.source "LifecycleModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/lifecycle/LifecycleModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field executor:Ljava/util/concurrent/Executor;
    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
