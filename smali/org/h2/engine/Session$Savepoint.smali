.class public Lorg/h2/engine/Session$Savepoint;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/engine/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Savepoint"
.end annotation


# instance fields
.field logIndex:I

.field transactionSavepoint:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
