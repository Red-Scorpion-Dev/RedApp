.class public Lorg/h2/engine/Session$TimeoutValue;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/engine/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeoutValue"
.end annotation


# instance fields
.field final created:J

.field final value:Lorg/h2/value/Value;


# direct methods
.method constructor <init>(Lorg/h2/value/Value;)V
    .locals 2

    .line 1684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session$TimeoutValue;->created:J

    .line 1685
    iput-object p1, p0, Lorg/h2/engine/Session$TimeoutValue;->value:Lorg/h2/value/Value;

    return-void
.end method
