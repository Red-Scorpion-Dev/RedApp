.class Lorg/h2/command/dml/ScriptCommand$2;
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
        "Lorg/h2/schema/SchemaObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/command/dml/ScriptCommand;


# direct methods
.method constructor <init>(Lorg/h2/command/dml/ScriptCommand;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand$2;->this$0:Lorg/h2/command/dml/ScriptCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 320
    check-cast p1, Lorg/h2/schema/SchemaObject;

    check-cast p2, Lorg/h2/schema/SchemaObject;

    invoke-virtual {p0, p1, p2}, Lorg/h2/command/dml/ScriptCommand$2;->compare(Lorg/h2/schema/SchemaObject;Lorg/h2/schema/SchemaObject;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/h2/schema/SchemaObject;Lorg/h2/schema/SchemaObject;)I
    .locals 0

    .line 323
    check-cast p1, Lorg/h2/constraint/Constraint;

    check-cast p2, Lorg/h2/constraint/Constraint;

    invoke-virtual {p1, p2}, Lorg/h2/constraint/Constraint;->compareTo(Lorg/h2/constraint/Constraint;)I

    move-result p1

    return p1
.end method
