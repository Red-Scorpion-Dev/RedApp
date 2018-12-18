.class Lorg/h2/command/Parser$2;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Lorg/h2/table/TableFilter$TableFilterVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/command/Parser;->parseJoinTableFilter(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/command/Parser;

.field final synthetic val$command:Lorg/h2/command/dml/Select;


# direct methods
.method constructor <init>(Lorg/h2/command/Parser;Lorg/h2/command/dml/Select;)V
    .locals 0

    .line 1947
    iput-object p1, p0, Lorg/h2/command/Parser$2;->this$0:Lorg/h2/command/Parser;

    iput-object p2, p0, Lorg/h2/command/Parser$2;->val$command:Lorg/h2/command/dml/Select;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/h2/table/TableFilter;)V
    .locals 2

    .line 1950
    iget-object v0, p0, Lorg/h2/command/Parser$2;->val$command:Lorg/h2/command/dml/Select;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/h2/command/dml/Select;->addTableFilter(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method
