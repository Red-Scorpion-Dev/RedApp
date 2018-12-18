.class public Lorg/h2/mvstore/Page$PageReference;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageReference"
.end annotation


# instance fields
.field final count:J

.field final page:Lorg/h2/mvstore/Page;

.field final pos:J


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/Page;JJ)V
    .locals 0

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    iput-object p1, p0, Lorg/h2/mvstore/Page$PageReference;->page:Lorg/h2/mvstore/Page;

    .line 960
    iput-wide p2, p0, Lorg/h2/mvstore/Page$PageReference;->pos:J

    .line 961
    iput-wide p4, p0, Lorg/h2/mvstore/Page$PageReference;->count:J

    return-void
.end method
