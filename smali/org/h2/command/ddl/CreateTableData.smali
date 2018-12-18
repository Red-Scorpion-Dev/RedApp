.class public Lorg/h2/command/ddl/CreateTableData;
.super Ljava/lang/Object;
.source "CreateTableData.java"


# instance fields
.field public columns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field public create:Z

.field public globalTemporary:Z

.field public id:I

.field public isHidden:Z

.field public persistData:Z

.field public persistIndexes:Z

.field public schema:Lorg/h2/schema/Schema;

.field public session:Lorg/h2/engine/Session;

.field public tableEngine:Ljava/lang/String;

.field public tableEngineParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tableName:Ljava/lang/String;

.field public temporary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    return-void
.end method
