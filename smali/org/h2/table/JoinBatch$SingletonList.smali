.class final Lorg/h2/table/JoinBatch$SingletonList;
.super Ljava/util/AbstractList;
.source "JoinBatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingletonList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 741
    const-class v0, Lorg/h2/table/JoinBatch;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 741
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 747
    iget-object p1, p0, Lorg/h2/table/JoinBatch$SingletonList;->element:Ljava/lang/Object;

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 753
    iput-object p2, p0, Lorg/h2/table/JoinBatch$SingletonList;->element:Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
