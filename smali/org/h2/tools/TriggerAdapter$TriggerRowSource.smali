.class Lorg/h2/tools/TriggerAdapter$TriggerRowSource;
.super Ljava/lang/Object;
.source "TriggerAdapter.java"

# interfaces
.implements Lorg/h2/tools/SimpleRowSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/tools/TriggerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TriggerRowSource"
.end annotation


# instance fields
.field private row:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public readRow()[Ljava/lang/Object;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/h2/tools/TriggerAdapter$TriggerRowSource;->row:[Ljava/lang/Object;

    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method setRow([Ljava/lang/Object;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/h2/tools/TriggerAdapter$TriggerRowSource;->row:[Ljava/lang/Object;

    return-void
.end method
