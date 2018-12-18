.class public Lorg/h2/command/ddl/DeallocateProcedure;
.super Lorg/h2/command/ddl/DefineCommand;
.source "DeallocateProcedure.java"


# instance fields
.field private procedureName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public setProcedureName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/h2/command/ddl/DeallocateProcedure;->procedureName:Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/h2/command/ddl/DeallocateProcedure;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/command/ddl/DeallocateProcedure;->procedureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->removeProcedure(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
