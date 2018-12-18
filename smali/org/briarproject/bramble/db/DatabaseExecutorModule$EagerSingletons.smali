.class public Lorg/briarproject/bramble/db/DatabaseExecutorModule$EagerSingletons;
.super Ljava/lang/Object;
.source "DatabaseExecutorModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/db/DatabaseExecutorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field executorService:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
