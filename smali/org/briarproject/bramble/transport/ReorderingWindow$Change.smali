.class Lorg/briarproject/bramble/transport/ReorderingWindow$Change;
.super Ljava/lang/Object;
.source "ReorderingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/transport/ReorderingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Change"
.end annotation


# instance fields
.field private final added:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/briarproject/bramble/transport/ReorderingWindow$Change;->added:Ljava/util/List;

    .line 92
    iput-object p2, p0, Lorg/briarproject/bramble/transport/ReorderingWindow$Change;->removed:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getAdded()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/briarproject/bramble/transport/ReorderingWindow$Change;->added:Ljava/util/List;

    return-object v0
.end method

.method getRemoved()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/briarproject/bramble/transport/ReorderingWindow$Change;->removed:Ljava/util/List;

    return-object v0
.end method
