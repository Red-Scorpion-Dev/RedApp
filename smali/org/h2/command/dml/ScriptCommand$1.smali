.class Lorg/h2/command/dml/ScriptCommand$1;
.super Ljava/lang/Object;
.source "ScriptCommand.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/command/dml/ScriptCommand;->query(I)Lorg/h2/result/ResultInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/h2/table/Table;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/command/dml/ScriptCommand;


# direct methods
.method constructor <init>(Lorg/h2/command/dml/ScriptCommand;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand$1;->this$0:Lorg/h2/command/dml/ScriptCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 206
    check-cast p1, Lorg/h2/table/Table;

    check-cast p2, Lorg/h2/table/Table;

    invoke-virtual {p0, p1, p2}, Lorg/h2/command/dml/ScriptCommand$1;->compare(Lorg/h2/table/Table;Lorg/h2/table/Table;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/h2/table/Table;Lorg/h2/table/Table;)I
    .locals 0

    .line 209
    invoke-virtual {p1}, Lorg/h2/table/Table;->getId()I

    move-result p1

    invoke-virtual {p2}, Lorg/h2/table/Table;->getId()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
