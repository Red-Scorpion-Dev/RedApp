.class final Lorg/h2/mvstore/db/MVTableEngine$1;
.super Ljava/lang/Object;
.source "MVTableEngine.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/mvstore/db/MVTableEngine;->init(Lorg/h2/engine/Database;)Lorg/h2/mvstore/db/MVTableEngine$Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$db:Lorg/h2/engine/Database;


# direct methods
.method constructor <init>(Lorg/h2/engine/Database;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/h2/mvstore/db/MVTableEngine$1;->val$db:Lorg/h2/engine/Database;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lorg/h2/mvstore/db/MVTableEngine$1;->val$db:Lorg/h2/engine/Database;

    invoke-static {p2}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->setBackgroundException(Lorg/h2/message/DbException;)V

    return-void
.end method
