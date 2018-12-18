.class public Lorg/briarproject/bramble/system/SystemModule$EagerSingletons;
.super Ljava/lang/Object;
.source "SystemModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/system/SystemModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation runtime Lorg/briarproject/bramble/api/system/Scheduler;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
