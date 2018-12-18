.class public Lorg/h2/command/ddl/PrepareProcedure;
.super Lorg/h2/command/ddl/DefineCommand;
.source "PrepareProcedure.java"


# instance fields
.field private prepared:Lorg/h2/command/Prepared;

.field private procedureName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public checkParameters()V
    .locals 0

    return-void
.end method

.method public getParameters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method public setPrepared(Lorg/h2/command/Prepared;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/h2/command/ddl/PrepareProcedure;->prepared:Lorg/h2/command/Prepared;

    return-void
.end method

.method public setProcedureName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/h2/command/ddl/PrepareProcedure;->procedureName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 3

    .line 36
    new-instance v0, Lorg/h2/engine/Procedure;

    iget-object v1, p0, Lorg/h2/command/ddl/PrepareProcedure;->procedureName:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/command/ddl/PrepareProcedure;->prepared:Lorg/h2/command/Prepared;

    invoke-direct {v0, v1, v2}, Lorg/h2/engine/Procedure;-><init>(Ljava/lang/String;Lorg/h2/command/Prepared;)V

    .line 37
    iget-object v1, p0, Lorg/h2/command/ddl/PrepareProcedure;->prepared:Lorg/h2/command/Prepared;

    iget-object v2, p0, Lorg/h2/command/ddl/PrepareProcedure;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/h2/command/Prepared;->setParameterList(Ljava/util/ArrayList;)V

    .line 38
    iget-object v1, p0, Lorg/h2/command/ddl/PrepareProcedure;->prepared:Lorg/h2/command/Prepared;

    iget-boolean v2, p0, Lorg/h2/command/ddl/PrepareProcedure;->prepareAlways:Z

    invoke-virtual {v1, v2}, Lorg/h2/command/Prepared;->setPrepareAlways(Z)V

    .line 39
    iget-object v1, p0, Lorg/h2/command/ddl/PrepareProcedure;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v1}, Lorg/h2/command/Prepared;->prepare()V

    .line 40
    iget-object v1, p0, Lorg/h2/command/ddl/PrepareProcedure;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0}, Lorg/h2/engine/Session;->addProcedure(Lorg/h2/engine/Procedure;)V

    const/4 v0, 0x0

    return v0
.end method
