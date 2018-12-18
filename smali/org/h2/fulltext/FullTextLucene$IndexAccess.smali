.class Lorg/h2/fulltext/FullTextLucene$IndexAccess;
.super Ljava/lang/Object;
.source "FullTextLucene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/fulltext/FullTextLucene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexAccess"
.end annotation


# instance fields
.field reader:Lorg/apache/lucene/index/IndexReader;

.field searcher:Lorg/apache/lucene/search/IndexSearcher;

.field writer:Lorg/apache/lucene/index/IndexWriter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
