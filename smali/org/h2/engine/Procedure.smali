.class public Lorg/h2/engine/Procedure;
.super Ljava/lang/Object;
.source "Procedure.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final prepared:Lorg/h2/command/Prepared;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/h2/command/Prepared;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/h2/engine/Procedure;->name:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lorg/h2/engine/Procedure;->prepared:Lorg/h2/command/Prepared;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/h2/engine/Procedure;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrepared()Lorg/h2/command/Prepared;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/h2/engine/Procedure;->prepared:Lorg/h2/command/Prepared;

    return-object v0
.end method
