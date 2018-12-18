.class public Lorg/h2/command/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AT:I = 0xc

.field private static final BIGGER:I = 0x8

.field private static final BIGGER_EQUAL:I = 0x7

.field private static final CHAR_DOLLAR_QUOTED_STRING:I = 0x9

.field private static final CHAR_DOT:I = 0x8

.field private static final CHAR_END:I = 0x1

.field private static final CHAR_NAME:I = 0x4

.field private static final CHAR_QUOTED:I = 0x3

.field private static final CHAR_SPECIAL_1:I = 0x5

.field private static final CHAR_SPECIAL_2:I = 0x6

.field private static final CHAR_STRING:I = 0x7

.field private static final CHAR_VALUE:I = 0x2

.field private static final CLOSE:I = 0x11

.field private static final CURRENT_DATE:I = 0x16

.field private static final CURRENT_TIME:I = 0x17

.field private static final CURRENT_TIMESTAMP:I = 0x15

.field private static final END:I = 0x4

.field private static final EQUAL:I = 0x6

.field private static final FALSE:I = 0x14

.field private static final IDENTIFIER:I = 0x2

.field private static final KEYWORD:I = 0x1

.field private static final MINUS:I = 0xd

.field private static final NOT_EQUAL:I = 0xb

.field private static final NULL:I = 0x12

.field private static final OPEN:I = 0x10

.field private static final PARAMETER:I = 0x3

.field private static final PLUS:I = 0xe

.field private static final ROWNUM:I = 0x18

.field private static final SMALLER:I = 0x9

.field private static final SMALLER_EQUAL:I = 0xa

.field private static final SPATIAL_INTERSECTS:I = 0x19

.field private static final STRING_CONCAT:I = 0xf

.field private static final TABLE_FILTER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/h2/table/TableFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRUE:I = 0x13

.field private static final VALUE:I = 0x5


# instance fields
.field private characterTypes:[I

.field private createView:Lorg/h2/command/ddl/CreateView;

.field private currentPrepared:Lorg/h2/command/Prepared;

.field private currentSelect:Lorg/h2/command/dml/Select;

.field private currentToken:Ljava/lang/String;

.field private currentTokenQuoted:Z

.field private currentTokenType:I

.field private currentValue:Lorg/h2/value/Value;

.field private final database:Lorg/h2/engine/Database;

.field private expectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final identifiersToUpper:Z

.field private indexedParameterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private lastParseIndex:I

.field private orderInFrom:I

.field private originalSQL:Ljava/lang/String;

.field private parameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private parseIndex:I

.field private recompileAlways:Z

.field private rightsChecked:Z

.field private schemaName:Ljava/lang/String;

.field private final session:Lorg/h2/engine/Session;

.field private sqlCommand:Ljava/lang/String;

.field private sqlCommandChars:[C

.field private suppliedParameterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Lorg/h2/command/Parser$1;

    invoke-direct {v0}, Lorg/h2/command/Parser$1;-><init>()V

    sput-object v0, Lorg/h2/command/Parser;->TABLE_FILTER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    .line 227
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    iput-boolean v0, p0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    .line 228
    iput-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    return-void
.end method

.method private addExpected(Ljava/lang/String;)V
    .locals 1

    .line 3221
    iget-object v0, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3222
    iget-object v0, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addRoleOrRight(Lorg/h2/command/ddl/GrantRevoke;)Z
    .locals 3

    const-string v0, "SELECT"

    .line 4316
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4317
    invoke-virtual {p1, v1}, Lorg/h2/command/ddl/GrantRevoke;->addRight(I)V

    return v1

    :cond_0
    const-string v0, "DELETE"

    .line 4319
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4320
    invoke-virtual {p1, v0}, Lorg/h2/command/ddl/GrantRevoke;->addRight(I)V

    return v1

    :cond_1
    const-string v0, "INSERT"

    .line 4322
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 4323
    invoke-virtual {p1, v0}, Lorg/h2/command/ddl/GrantRevoke;->addRight(I)V

    return v1

    :cond_2
    const-string v0, "UPDATE"

    .line 4325
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    .line 4326
    invoke-virtual {p1, v0}, Lorg/h2/command/ddl/GrantRevoke;->addRight(I)V

    return v1

    :cond_3
    const-string v0, "ALL"

    .line 4328
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    .line 4329
    invoke-virtual {p1, v0}, Lorg/h2/command/ddl/GrantRevoke;->addRight(I)V

    return v1

    :cond_4
    const-string v0, "ALTER"

    .line 4331
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-string v0, "ANY"

    .line 4332
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "SCHEMA"

    .line 4333
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 4334
    invoke-virtual {p1, v0}, Lorg/h2/command/ddl/GrantRevoke;->addRight(I)V

    const/4 v0, 0x0

    .line 4335
    invoke-virtual {p1, v0}, Lorg/h2/command/ddl/GrantRevoke;->addTable(Lorg/h2/table/Table;)V

    return v2

    :cond_5
    const-string v0, "CONNECT"

    .line 4337
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-string v0, "RESOURCE"

    .line 4340
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 4344
    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/command/ddl/GrantRevoke;->addRoleName(Ljava/lang/String;)V

    return v2
.end method

.method private checkLiterals(Z)V
    .locals 1

    .line 3402
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getAllowLiterals()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3403
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllowLiterals()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x16004

    .line 3406
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private checkRunOver(III)V
    .locals 0

    if-ge p1, p2, :cond_0

    return-void

    .line 3692
    :cond_0
    iput p3, p0, Lorg/h2/command/Parser;->parseIndex:I

    .line 3693
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkSchema(Lorg/h2/schema/Schema;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 4859
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x15fe0

    .line 4860
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private columnIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/table/Column;
    .locals 0

    .line 5679
    invoke-direct {p0, p1, p2, p4}, Lorg/h2/command/Parser;->tableIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Z)Lorg/h2/table/Table;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5680
    :cond_0
    invoke-virtual {p1, p3}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;
    .locals 0

    .line 5685
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/command/Parser;->tableIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Z)Lorg/h2/table/Table;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p4, Lorg/h2/command/dml/NoOperation;

    iget-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p4, p1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    :cond_0
    return-object p4
.end method

.method static compareTableFilters(Lorg/h2/table/TableFilter;Lorg/h2/table/TableFilter;)I
    .locals 0

    .line 1937
    invoke-virtual {p0}, Lorg/h2/table/TableFilter;->getOrderInFrom()I

    move-result p0

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getOrderInFrom()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private equalsToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 3212
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 3214
    :cond_2
    iget-boolean v2, p0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-nez v2, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method private findFunctionAlias(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;
    .locals 4

    .line 5392
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->findFunction(Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 5397
    :cond_0
    iget-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getSchemaSearchPath()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5399
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 5400
    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/h2/schema/Schema;->findFunction(Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 659
    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "SESSION"

    .line 661
    invoke-direct {p0, v1, p1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    goto :goto_0

    .line 664
    :cond_1
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/Mode;->sysDummy1:Z

    if-eqz v1, :cond_2

    const-string v1, "SYSIBM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 667
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private findSequence(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/schema/Sequence;
    .locals 4

    .line 5410
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 5415
    :cond_0
    iget-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getSchemaSearchPath()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5417
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 5418
    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/h2/schema/Schema;->findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAggregateType(Ljava/lang/String;)I
    .locals 1

    .line 2448
    iget-boolean v0, p0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-nez v0, :cond_0

    .line 2450
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2452
    :cond_0
    invoke-static {p1}, Lorg/h2/expression/Aggregate;->getAggregateType(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private static getCompareType(I)I
    .locals 1

    const/16 v0, 0x19

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDualTable(Z)Lorg/h2/table/Table;
    .locals 3

    .line 2077
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v1, "PUBLIC"

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 2078
    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    .line 2079
    new-instance v2, Lorg/h2/table/RangeTable;

    invoke-direct {v2, v0, v1, v1, p1}, Lorg/h2/table/RangeTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    return-object v2
.end method

.method private static getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 3910
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return p2

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method private getNested(Lorg/h2/table/TableFilter;)Lorg/h2/table/TableFilter;
    .locals 9

    .line 1634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYSTEM_JOIN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1635
    new-instance v0, Lorg/h2/table/TableFilter;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->getDualTable(Z)Lorg/h2/table/Table;

    move-result-object v4

    iget-boolean v6, p0, Lorg/h2/command/Parser;->rightsChecked:Z

    iget-object v7, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getOrderInFrom()I

    move-result v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1637
    invoke-virtual {v0, p1, v2, v1, v3}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    return-object v0
.end method

.method private static getSaveTokenType(Ljava/lang/String;Z)I
    .locals 5

    const/4 v0, 0x0

    .line 3813
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x17

    const/16 v2, 0x16

    const/16 v3, 0x15

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const-string p1, "WITH"

    .line 3899
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v4

    :cond_0
    const-string p1, "WHERE"

    .line 3902
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_2
    const-string p1, "UNIQUE"

    .line 3894
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v4

    :cond_1
    const-string p1, "UNION"

    .line 3897
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_3
    const-string p1, "TODAY"

    .line 3889
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const-string p1, "TRUE"

    const/16 v0, 0x13

    .line 3892
    invoke-static {p0, p1, v0}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_4
    const-string p1, "SYSTIMESTAMP"

    .line 3880
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    const-string p1, "SYSTIME"

    .line 3882
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const-string p1, "SYSDATE"

    .line 3884
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    const-string p1, "SELECT"

    .line 3887
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_5
    const-string p1, "ROWNUM"

    const/16 v0, 0x18

    .line 3878
    invoke-static {p0, p1, v0}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_6
    const-string p1, "PRIMARY"

    .line 3876
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_7
    const-string v0, "ON"

    .line 3869
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v4

    :cond_6
    if-eqz p1, :cond_7

    const-string p1, "OFFSET"

    .line 3871
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v4

    :cond_7
    const-string p1, "ORDER"

    .line 3874
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_8
    const-string p1, "NOT"

    .line 3862
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v4

    :cond_8
    const-string p1, "NATURAL"

    .line 3864
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v4

    :cond_9
    const-string p1, "NULL"

    const/16 v0, 0x12

    .line 3867
    invoke-static {p0, p1, v0}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_9
    const-string p1, "MINUS"

    .line 3860
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_a
    const-string p1, "LIMIT"

    .line 3855
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v4

    :cond_a
    const-string p1, "LIKE"

    .line 3858
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_b
    const-string p1, "JOIN"

    .line 3853
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_c
    const-string p1, "INNER"

    .line 3846
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v4

    :cond_b
    const-string p1, "INTERSECT"

    .line 3848
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v4

    :cond_c
    const-string p1, "IS"

    .line 3851
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_d
    const-string p1, "HAVING"

    .line 3844
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_e
    const-string p1, "GROUP"

    .line 3842
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_f
    const-string v0, "FROM"

    .line 3831
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v4

    :cond_d
    const-string v0, "FOR"

    .line 3833
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v4

    :cond_e
    const-string v0, "FULL"

    .line 3835
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v4

    :cond_f
    if-eqz p1, :cond_10

    const-string p1, "FETCH"

    .line 3837
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_10
    const-string p1, "FALSE"

    const/16 v0, 0x14

    .line 3840
    invoke-static {p0, p1, v0}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_10
    const-string p1, "EXCEPT"

    .line 3826
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    return v4

    :cond_11
    const-string p1, "EXISTS"

    .line 3829
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_11
    const-string p1, "DISTINCT"

    .line 3824
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_12
    const-string p1, "CURRENT_TIMESTAMP"

    .line 3815
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    return v3

    :cond_12
    const-string p1, "CURRENT_TIME"

    .line 3817
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    return v1

    :cond_13
    const-string p1, "CURRENT_DATE"

    .line 3819
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    return v2

    :cond_14
    const-string p1, "CROSS"

    .line 3822
    invoke-static {p0, p1, v4}, Lorg/h2/command/Parser;->getKeywordOrIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSchema()Lorg/h2/schema/Schema;
    .locals 1

    .line 685
    iget-object v0, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    return-object v0
.end method

.method private getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 677
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const v0, 0x15fdf

    .line 679
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private getSpecialType(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 3698
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3699
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 p1, 0x2f

    if-eq v0, p1, :cond_0

    const/16 p1, 0x5b

    if-eq v0, p1, :cond_0

    const/16 p1, 0x5d

    if-eq v0, p1, :cond_0

    const/16 p1, 0x7b

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0xc

    return p1

    :pswitch_1
    const/16 p1, 0x8

    return p1

    :pswitch_2
    const/4 p1, 0x6

    return p1

    :pswitch_3
    const/16 p1, 0x9

    return p1

    :pswitch_4
    const/16 p1, 0xd

    return p1

    :pswitch_5
    const/16 p1, 0xe

    return p1

    :pswitch_6
    const/16 p1, 0x11

    return p1

    :pswitch_7
    const/16 p1, 0x10

    return p1

    :pswitch_8
    const/4 p1, 0x3

    return p1

    :cond_0
    :pswitch_9
    return v2

    .line 3735
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    const/16 v1, 0x21

    const/16 v3, 0xb

    if-eq v0, v1, :cond_8

    const/16 v1, 0x26

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_a

    const-string v0, "||"

    .line 3764
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0xf

    return p1

    :cond_2
    const-string v0, ">="

    .line 3745
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x7

    return p1

    :cond_3
    const-string v0, "<="

    .line 3750
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0xa

    return p1

    :cond_4
    const-string v0, "<>"

    .line 3752
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v3

    :cond_5
    const-string v0, "::"

    .line 3738
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    const-string v0, ":="

    .line 3740
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v2

    :cond_7
    const-string v0, "&&"

    .line 3769
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0x19

    return p1

    :cond_8
    const-string v0, "!="

    .line 3757
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    :cond_9
    const-string v0, "!~"

    .line 3759
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v2

    .line 3775
    :cond_a
    :goto_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3a
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7d
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private getSyntaxError()Lorg/h2/message/DbException;
    .locals 4

    .line 529
    iget-object v0, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 532
    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 533
    iget-object v1, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ", "

    .line 534
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    .line 537
    :cond_1
    iget-object v1, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v2, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    return-object v0

    .line 530
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object v0

    return-object v0
.end method

.method private getTokenType(Ljava/lang/String;)I
    .locals 1

    .line 3779
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3783
    iget-boolean v0, p0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-nez v0, :cond_0

    .line 3785
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3787
    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    invoke-static {p1, v0}, Lorg/h2/command/Parser;->getSaveTokenType(Ljava/lang/String;Z)I

    move-result p1

    return p1

    .line 3781
    :cond_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 3483
    :goto_0
    iput-object v1, v0, Lorg/h2/command/Parser;->originalSQL:Ljava/lang/String;

    .line 3484
    iput-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    .line 3485
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 3486
    new-array v4, v2, [C

    .line 3487
    new-array v5, v2, [I

    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x0

    .line 3489
    invoke-virtual {v1, v6, v2, v4, v6}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v1, 0x20

    .line 3491
    aput-char v1, v4, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v7, v2, :cond_18

    .line 3495
    aget-char v10, v4, v7

    const/16 v11, 0x5b

    const/16 v12, 0x5d

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/16 v15, 0x22

    const/16 v16, 0x5

    const/4 v6, 0x4

    if-eq v10, v11, :cond_16

    if-eq v10, v12, :cond_15

    const/16 v11, 0xd

    const/16 v12, 0xa

    packed-switch v10, :pswitch_data_0

    packed-switch v10, :pswitch_data_1

    packed-switch v10, :pswitch_data_2

    packed-switch v10, :pswitch_data_3

    goto/16 :goto_10

    .line 3624
    :pswitch_0
    aput-char v15, v4, v7

    .line 3626
    aput v13, v5, v7

    move v6, v7

    :goto_2
    add-int/2addr v6, v3

    .line 3628
    aget-char v8, v4, v6

    const/16 v9, 0x60

    if-eq v8, v9, :cond_1

    .line 3629
    invoke-direct {v0, v6, v2, v7}, Lorg/h2/command/Parser;->checkRunOver(III)V

    .line 3630
    aget-char v8, v4, v6

    .line 3631
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    aput-char v8, v4, v6

    goto :goto_2

    .line 3633
    :cond_1
    aput-char v15, v4, v6

    :goto_3
    move v7, v6

    const/4 v8, 0x1

    goto/16 :goto_13

    :cond_2
    :goto_4
    :pswitch_1
    const/4 v9, 0x4

    goto/16 :goto_15

    :pswitch_2
    add-int/lit8 v6, v7, 0x1

    .line 3499
    aget-char v9, v4, v6

    const/16 v10, 0x2f

    const/16 v13, 0x2a

    if-ne v9, v13, :cond_5

    .line 3502
    aput-char v1, v4, v7

    .line 3503
    aput-char v1, v4, v6

    add-int/lit8 v6, v7, 0x2

    .line 3506
    invoke-direct {v0, v6, v2, v7}, Lorg/h2/command/Parser;->checkRunOver(III)V

    .line 3507
    :goto_5
    aget-char v8, v4, v6

    if-ne v8, v13, :cond_4

    add-int/lit8 v8, v6, 0x1

    aget-char v9, v4, v8

    if-eq v9, v10, :cond_3

    goto :goto_7

    .line 3511
    :cond_3
    aput-char v1, v4, v6

    .line 3512
    aput-char v1, v4, v8

    :goto_6
    move v7, v8

    goto :goto_b

    :cond_4
    :goto_7
    add-int/lit8 v8, v6, 0x1

    .line 3508
    aput-char v1, v4, v6

    .line 3509
    invoke-direct {v0, v8, v2, v7}, Lorg/h2/command/Parser;->checkRunOver(III)V

    move v6, v8

    goto :goto_5

    .line 3514
    :cond_5
    aget-char v6, v4, v6

    if-ne v6, v10, :cond_15

    move v6, v7

    .line 3519
    :goto_8
    aget-char v8, v4, v6

    if-eq v8, v12, :cond_8

    if-eq v8, v11, :cond_8

    add-int/lit8 v8, v2, -0x1

    if-lt v6, v8, :cond_6

    goto :goto_a

    :cond_6
    add-int/lit8 v8, v6, 0x1

    .line 3523
    aput-char v1, v4, v6

    .line 3524
    invoke-direct {v0, v8, v2, v7}, Lorg/h2/command/Parser;->checkRunOver(III)V

    move v6, v8

    goto :goto_8

    :pswitch_3
    const/16 v6, 0x8

    const/16 v9, 0x8

    goto/16 :goto_15

    :pswitch_4
    add-int/lit8 v6, v7, 0x1

    .line 3531
    aget-char v6, v4, v6

    const/16 v9, 0x2d

    if-ne v6, v9, :cond_15

    move v6, v7

    .line 3536
    :goto_9
    aget-char v8, v4, v6

    if-eq v8, v12, :cond_8

    if-eq v8, v11, :cond_8

    add-int/lit8 v8, v2, -0x1

    if-lt v6, v8, :cond_7

    goto :goto_a

    :cond_7
    add-int/lit8 v8, v6, 0x1

    .line 3540
    aput-char v1, v4, v6

    .line 3541
    invoke-direct {v0, v8, v2, v7}, Lorg/h2/command/Parser;->checkRunOver(III)V

    move v6, v8

    goto :goto_9

    :cond_8
    :goto_a
    move v7, v6

    :goto_b
    const/4 v8, 0x1

    :cond_9
    :goto_c
    const/4 v9, 0x0

    goto/16 :goto_15

    :pswitch_5
    const/4 v6, 0x7

    .line 3601
    aput v6, v5, v7

    move v9, v7

    :goto_d
    add-int/2addr v9, v3

    .line 3603
    aget-char v10, v4, v9

    const/16 v11, 0x27

    if-eq v10, v11, :cond_a

    .line 3604
    invoke-direct {v0, v9, v2, v7}, Lorg/h2/command/Parser;->checkRunOver(III)V

    goto :goto_d

    :cond_a
    move v7, v9

    const/4 v9, 0x7

    goto/16 :goto_15

    :pswitch_6
    add-int/lit8 v10, v7, 0x1

    .line 3548
    aget-char v11, v4, v10

    const/16 v12, 0x24

    if-ne v11, v12, :cond_e

    if-eqz v7, :cond_b

    add-int/lit8 v11, v7, -0x1

    aget-char v11, v4, v11

    if-gt v11, v1, :cond_e

    .line 3551
    :cond_b
    aput-char v1, v4, v7

    .line 3552
    aput-char v1, v4, v10

    add-int/lit8 v6, v7, 0x2

    .line 3555
    invoke-direct {v0, v6, v2, v7}, Lorg/h2/command/Parser;->checkRunOver(III)V

    .line 3556
    :goto_e
    aget-char v8, v4, v6

    if-ne v8, v12, :cond_d

    add-int/lit8 v8, v6, 0x1

    aget-char v9, v4, v8

    if-eq v9, v12, :cond_c

    goto :goto_f

    .line 3560
    :cond_c
    aput-char v1, v4, v6

    .line 3561
    aput-char v1, v4, v8

    goto/16 :goto_6

    :cond_d
    :goto_f
    add-int/lit8 v8, v6, 0x1

    const/16 v9, 0x9

    .line 3557
    aput v9, v5, v6

    .line 3558
    invoke-direct {v0, v8, v2, v7}, Lorg/h2/command/Parser;->checkRunOver(III)V

    move v6, v8

    goto :goto_e

    :cond_e
    if-eq v9, v6, :cond_2

    if-ne v9, v14, :cond_15

    goto/16 :goto_4

    .line 3646
    :pswitch_7
    iget-object v9, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v9}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v9

    iget-boolean v9, v9, Lorg/h2/engine/Mode;->supportPoundSymbolForColumnNames:Z

    if-eqz v9, :cond_f

    goto/16 :goto_4

    :cond_f
    :goto_10
    const/16 v9, 0x61

    if-lt v10, v9, :cond_10

    const/16 v9, 0x7a

    if-gt v10, v9, :cond_10

    .line 3652
    iget-boolean v9, v0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-eqz v9, :cond_2

    add-int/lit8 v10, v10, -0x20

    int-to-char v8, v10

    .line 3653
    aput-char v8, v4, v7

    :goto_11
    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_10
    const/16 v9, 0x41

    if-lt v10, v9, :cond_11

    const/16 v9, 0x5a

    if-gt v10, v9, :cond_11

    goto/16 :goto_4

    :cond_11
    const/16 v9, 0x30

    if-lt v10, v9, :cond_12

    const/16 v9, 0x39

    if-gt v10, v9, :cond_12

    const/4 v9, 0x2

    goto :goto_15

    :cond_12
    if-le v10, v1, :cond_9

    .line 3662
    invoke-static {v10}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-eqz v9, :cond_13

    goto/16 :goto_c

    .line 3664
    :cond_13
    invoke-static {v10}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 3666
    iget-boolean v9, v0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-eqz v9, :cond_2

    .line 3667
    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    if-eq v9, v10, :cond_2

    .line 3669
    aput-char v9, v4, v7

    goto :goto_11

    .line 3636
    :pswitch_8
    aput v13, v5, v7

    move v6, v7

    :goto_12
    add-int/2addr v6, v3

    .line 3638
    aget-char v9, v4, v6

    if-eq v9, v15, :cond_14

    .line 3639
    invoke-direct {v0, v6, v2, v7}, Lorg/h2/command/Parser;->checkRunOver(III)V

    goto :goto_12

    :cond_14
    move v7, v6

    :goto_13
    const/4 v9, 0x3

    goto :goto_15

    :pswitch_9
    const/4 v6, 0x6

    const/4 v9, 0x6

    goto :goto_15

    :cond_15
    :pswitch_a
    const/4 v9, 0x5

    goto :goto_15

    .line 3608
    :cond_16
    iget-object v6, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v6}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v6

    iget-boolean v6, v6, Lorg/h2/engine/Mode;->squareBracketQuotedNames:Z

    if-eqz v6, :cond_15

    .line 3610
    aput-char v15, v4, v7

    .line 3612
    aput v13, v5, v7

    move v6, v7

    :goto_14
    add-int/2addr v6, v3

    .line 3614
    aget-char v8, v4, v6

    if-eq v8, v12, :cond_17

    .line 3615
    invoke-direct {v0, v6, v2, v7}, Lorg/h2/command/Parser;->checkRunOver(III)V

    goto :goto_14

    .line 3617
    :cond_17
    aput-char v15, v4, v6

    goto/16 :goto_3

    .line 3678
    :goto_15
    aput v9, v5, v7

    add-int/2addr v7, v3

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 3681
    :cond_18
    iput-object v4, v0, Lorg/h2/command/Parser;->sqlCommandChars:[C

    .line 3682
    aput v3, v5, v2

    .line 3683
    iput-object v5, v0, Lorg/h2/command/Parser;->characterTypes:[I

    if-eqz v8, :cond_19

    .line 3685
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    iput-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    :cond_19
    const/4 v1, 0x0

    .line 3687
    iput v1, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5f
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private isKeyword(Ljava/lang/String;)Z
    .locals 1

    .line 3791
    iget-boolean v0, p0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-nez v0, :cond_0

    .line 3793
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3795
    invoke-static {p1, v0}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public static isKeyword(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 3806
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3809
    :cond_0
    invoke-static {p0, p1}, Lorg/h2/command/Parser;->getSaveTokenType(Ljava/lang/String;Z)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private isSelect()Z
    .locals 2

    .line 997
    iget v0, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    :goto_0
    const-string v1, "("

    .line 998
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SELECT"

    .line 1002
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "FROM"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 1003
    :goto_2
    iput v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    .line 1004
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return v1
.end method

.method private isToken(Ljava/lang/String;)Z
    .locals 3

    .line 3200
    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 3205
    :cond_1
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->addExpected(Ljava/lang/String;)V

    return v2
.end method

.method private parse(Ljava/lang/String;Z)Lorg/h2/command/Prepared;
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->initialize(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 306
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    goto :goto_0

    .line 308
    :cond_0
    iput-object p1, p0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    .line 310
    :goto_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    .line 311
    iput-object p1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    .line 312
    iput-object p1, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    .line 313
    iput-object p1, p0, Lorg/h2/command/Parser;->createView:Lorg/h2/command/ddl/CreateView;

    const/4 p1, 0x0

    .line 314
    iput-boolean p1, p0, Lorg/h2/command/Parser;->recompileAlways:Z

    .line 315
    iget-object p1, p0, Lorg/h2/command/Parser;->suppliedParameterList:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    .line 316
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 317
    invoke-direct {p0}, Lorg/h2/command/Parser;->parsePrepared()Lorg/h2/command/Prepared;

    move-result-object p1

    return-object p1
.end method

.method private parseAction()I
    .locals 1

    .line 5740
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCascadeOrRestrict()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5742
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "NO"

    .line 5744
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACTION"

    .line 5745
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "SET"

    .line 5748
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "NULL"

    .line 5749
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const-string v0, "DEFAULT"

    .line 5752
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method private parseAlter()Lorg/h2/command/Prepared;
    .locals 1

    const-string v0, "TABLE"

    .line 4842
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4843
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterTable()Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "USER"

    .line 4844
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4845
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterUser()Lorg/h2/command/ddl/AlterUser;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "INDEX"

    .line 4846
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4847
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterIndex()Lorg/h2/command/ddl/AlterIndexRename;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "SCHEMA"

    .line 4848
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4849
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterSchema()Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "SEQUENCE"

    .line 4850
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4851
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterSequence()Lorg/h2/command/dml/AlterSequence;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "VIEW"

    .line 4852
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4853
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlterView()Lorg/h2/command/ddl/AlterView;

    move-result-object v0

    return-object v0

    .line 4855
    :cond_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseAlterIndex()Lorg/h2/command/ddl/AlterIndexRename;
    .locals 5

    const/4 v0, 0x0

    .line 4865
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 4866
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 4867
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    .line 4868
    new-instance v3, Lorg/h2/command/ddl/AlterIndexRename;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v3, v4}, Lorg/h2/command/ddl/AlterIndexRename;-><init>(Lorg/h2/engine/Session;)V

    .line 4869
    invoke-virtual {v3, v2}, Lorg/h2/command/ddl/AlterIndexRename;->setOldSchema(Lorg/h2/schema/Schema;)V

    .line 4870
    invoke-virtual {v3, v1}, Lorg/h2/command/ddl/AlterIndexRename;->setOldName(Ljava/lang/String;)V

    .line 4871
    invoke-virtual {v3, v0}, Lorg/h2/command/ddl/AlterIndexRename;->setIfExists(Z)V

    const-string v0, "RENAME"

    .line 4872
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "TO"

    .line 4873
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4874
    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4875
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    .line 4876
    invoke-virtual {v3, v0}, Lorg/h2/command/ddl/AlterIndexRename;->setNewName(Ljava/lang/String;)V

    return-object v3
.end method

.method private parseAlterSchema()Lorg/h2/command/Prepared;
    .locals 5

    const/4 v0, 0x0

    .line 4896
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 4897
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 4898
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    const-string v3, "RENAME"

    .line 4899
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v3, "TO"

    .line 4900
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4901
    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4902
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    .line 4905
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_0
    const v0, 0x15fdf

    .line 4907
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 4909
    :cond_1
    new-instance v0, Lorg/h2/command/ddl/AlterSchemaRename;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/AlterSchemaRename;-><init>(Lorg/h2/engine/Session;)V

    .line 4910
    invoke-virtual {v0, v4}, Lorg/h2/command/ddl/AlterSchemaRename;->setOldSchema(Lorg/h2/schema/Schema;)V

    .line 4911
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    .line 4912
    invoke-virtual {v0, v3}, Lorg/h2/command/ddl/AlterSchemaRename;->setNewName(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseAlterSequence()Lorg/h2/command/dml/AlterSequence;
    .locals 6

    const/4 v0, 0x0

    .line 4917
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v1

    .line 4918
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v2

    .line 4919
    new-instance v3, Lorg/h2/command/dml/AlterSequence;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/h2/command/dml/AlterSequence;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 4920
    invoke-virtual {v3, v2}, Lorg/h2/command/dml/AlterSequence;->setSequenceName(Ljava/lang/String;)V

    .line 4921
    invoke-virtual {v3, v1}, Lorg/h2/command/dml/AlterSequence;->setIfExists(Z)V

    :goto_0
    const-string v1, "RESTART"

    .line 4923
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WITH"

    .line 4924
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4925
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/command/dml/AlterSequence;->setStartWith(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_0
    const-string v1, "INCREMENT"

    .line 4926
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BY"

    .line 4927
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4928
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/command/dml/AlterSequence;->setIncrement(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_1
    const-string v1, "MINVALUE"

    .line 4929
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4930
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/command/dml/AlterSequence;->setMinValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_2
    const-string v1, "NOMINVALUE"

    .line 4931
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4932
    invoke-virtual {v3, v2}, Lorg/h2/command/dml/AlterSequence;->setMinValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_3
    const-string v1, "MAXVALUE"

    .line 4933
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4934
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/command/dml/AlterSequence;->setMaxValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_4
    const-string v1, "NOMAXVALUE"

    .line 4935
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4936
    invoke-virtual {v3, v2}, Lorg/h2/command/dml/AlterSequence;->setMaxValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_5
    const-string v1, "CYCLE"

    .line 4937
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    .line 4938
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/command/dml/AlterSequence;->setCycle(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_6
    const-string v1, "NOCYCLE"

    .line 4939
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4940
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/command/dml/AlterSequence;->setCycle(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "NO"

    .line 4941
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v4, 0x1

    if-eqz v1, :cond_b

    const-string v1, "MINVALUE"

    .line 4942
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4943
    invoke-virtual {v3, v2}, Lorg/h2/command/dml/AlterSequence;->setMinValue(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "MAXVALUE"

    .line 4944
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4945
    invoke-virtual {v3, v2}, Lorg/h2/command/dml/AlterSequence;->setMaxValue(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "CYCLE"

    .line 4946
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4947
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/command/dml/AlterSequence;->setCycle(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "CACHE"

    .line 4948
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4949
    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/command/dml/AlterSequence;->setCacheSize(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "CACHE"

    .line 4953
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4954
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/command/dml/AlterSequence;->setCacheSize(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "NOCACHE"

    .line 4955
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4956
    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/h2/command/dml/AlterSequence;->setCacheSize(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_d
    return-object v3
.end method

.method private parseAlterTable()Lorg/h2/command/Prepared;
    .locals 9

    const/4 v0, 0x0

    .line 5442
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v1

    .line 5443
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v2

    .line 5444
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    const-string v4, "ADD"

    .line 5445
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5446
    invoke-direct {p0, v2, v3, v1}, Lorg/h2/command/Parser;->parseAlterTableAddConstraintIf(Ljava/lang/String;Lorg/h2/schema/Schema;Z)Lorg/h2/command/ddl/DefineCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5451
    :cond_0
    invoke-direct {p0, v2, v3, v1}, Lorg/h2/command/Parser;->parseAlterTableAddColumn(Ljava/lang/String;Lorg/h2/schema/Schema;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v4, "SET"

    .line 5452
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    const-string v4, "REFERENTIAL_INTEGRITY"

    .line 5453
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/16 v4, 0x37

    .line 5455
    invoke-direct {p0}, Lorg/h2/command/Parser;->readBooleanSetting()Z

    move-result v6

    .line 5456
    new-instance v7, Lorg/h2/command/dml/AlterTableSet;

    iget-object v8, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v7, v8, v3, v4, v6}, Lorg/h2/command/dml/AlterTableSet;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;IZ)V

    .line 5458
    invoke-virtual {v7, v2}, Lorg/h2/command/dml/AlterTableSet;->setTableName(Ljava/lang/String;)V

    .line 5459
    invoke-virtual {v7, v1}, Lorg/h2/command/dml/AlterTableSet;->setIfTableExists(Z)V

    const-string v1, "CHECK"

    .line 5460
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5461
    invoke-virtual {v7, v5}, Lorg/h2/command/dml/AlterTableSet;->setCheckExisting(Z)V

    goto :goto_0

    :cond_2
    const-string v1, "NOCHECK"

    .line 5462
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5463
    invoke-virtual {v7, v0}, Lorg/h2/command/dml/AlterTableSet;->setCheckExisting(Z)V

    :cond_3
    :goto_0
    return-object v7

    :cond_4
    const-string v4, "RENAME"

    .line 5466
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "COLUMN"

    .line 5467
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5469
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TO"

    .line 5470
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5471
    new-instance v4, Lorg/h2/command/ddl/AlterTableRenameColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v3}, Lorg/h2/command/ddl/AlterTableRenameColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5473
    invoke-virtual {v4, v2}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setTableName(Ljava/lang/String;)V

    .line 5474
    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setIfTableExists(Z)V

    .line 5475
    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setOldColumnName(Ljava/lang/String;)V

    .line 5476
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 5477
    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setNewColumnName(Ljava/lang/String;)V

    return-object v4

    :cond_5
    const-string v0, "CONSTRAINT"

    .line 5479
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5480
    invoke-virtual {v3}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5481
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    const-string v4, "TO"

    .line 5482
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5483
    new-instance v4, Lorg/h2/command/ddl/AlterTableRenameConstraint;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v3}, Lorg/h2/command/ddl/AlterTableRenameConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5485
    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableRenameConstraint;->setConstraintName(Ljava/lang/String;)V

    .line 5486
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 5487
    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableRenameConstraint;->setNewConstraintName(Ljava/lang/String;)V

    .line 5488
    invoke-direct {p0, v3, v2, v1, v4}, Lorg/h2/command/Parser;->commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v0, "TO"

    .line 5490
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5491
    invoke-virtual {v3}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5492
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    .line 5493
    new-instance v3, Lorg/h2/command/ddl/AlterTableRename;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/h2/command/ddl/AlterTableRename;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5495
    invoke-virtual {v3, v2}, Lorg/h2/command/ddl/AlterTableRename;->setOldTableName(Ljava/lang/String;)V

    .line 5496
    invoke-virtual {v3, v0}, Lorg/h2/command/ddl/AlterTableRename;->setNewTableName(Ljava/lang/String;)V

    .line 5497
    invoke-virtual {v3, v1}, Lorg/h2/command/ddl/AlterTableRename;->setIfTableExists(Z)V

    const-string v0, "HIDDEN"

    .line 5498
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/h2/command/ddl/AlterTableRename;->setHidden(Z)V

    return-object v3

    :cond_7
    const-string v4, "DROP"

    .line 5501
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "CONSTRAINT"

    .line 5502
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5503
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 5504
    invoke-virtual {v3}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5505
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 5506
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    .line 5507
    new-instance v5, Lorg/h2/command/ddl/AlterTableDropConstraint;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    invoke-direct {v5, v6, v7, v0}, Lorg/h2/command/ddl/AlterTableDropConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    .line 5509
    invoke-virtual {v5, v4}, Lorg/h2/command/ddl/AlterTableDropConstraint;->setConstraintName(Ljava/lang/String;)V

    .line 5510
    invoke-direct {p0, v3, v2, v1, v5}, Lorg/h2/command/Parser;->commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_8
    const-string v4, "FOREIGN"

    .line 5511
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "KEY"

    .line 5513
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5514
    invoke-virtual {v3}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5515
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    .line 5516
    new-instance v5, Lorg/h2/command/ddl/AlterTableDropConstraint;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    invoke-direct {v5, v6, v7, v0}, Lorg/h2/command/ddl/AlterTableDropConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    .line 5518
    invoke-virtual {v5, v4}, Lorg/h2/command/ddl/AlterTableDropConstraint;->setConstraintName(Ljava/lang/String;)V

    .line 5519
    invoke-direct {p0, v3, v2, v1, v5}, Lorg/h2/command/Parser;->commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v4, "INDEX"

    .line 5520
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5522
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v0

    .line 5523
    new-instance v4, Lorg/h2/command/ddl/DropIndex;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/h2/command/ddl/DropIndex;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5524
    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/DropIndex;->setIndexName(Ljava/lang/String;)V

    .line 5525
    invoke-direct {p0, v3, v2, v1, v4}, Lorg/h2/command/Parser;->commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_a
    const-string v4, "PRIMARY"

    .line 5526
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v0, "KEY"

    .line 5527
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5528
    invoke-direct {p0, v3, v2, v1}, Lorg/h2/command/Parser;->tableIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Z)Lorg/h2/table/Table;

    move-result-object v0

    if-nez v0, :cond_b

    .line 5530
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    .line 5532
    :cond_b
    invoke-virtual {v0}, Lorg/h2/table/Table;->getPrimaryKey()Lorg/h2/index/Index;

    move-result-object v0

    .line 5533
    new-instance v1, Lorg/h2/command/ddl/DropIndex;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, v3}, Lorg/h2/command/ddl/DropIndex;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5534
    invoke-interface {v0}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DropIndex;->setIndexName(Ljava/lang/String;)V

    return-object v1

    :cond_c
    const-string v4, "COLUMN"

    .line 5537
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 5538
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 5539
    new-instance v4, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    const/16 v5, 0xc

    .line 5541
    invoke-virtual {v4, v5}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    .line 5542
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 5543
    invoke-direct {p0, v3, v2, v1}, Lorg/h2/command/Parser;->tableIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Z)Lorg/h2/table/Table;

    move-result-object v7

    .line 5545
    :cond_d
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v3

    if-nez v7, :cond_e

    .line 5547
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_e
    if-eqz v0, :cond_f

    .line 5549
    invoke-virtual {v7, v3}, Lorg/h2/table/Table;->doesColumnExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 5550
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    .line 5552
    :cond_f
    invoke-virtual {v7, v3}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v3

    .line 5553
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ","

    .line 5554
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 5555
    invoke-virtual {v4, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    .line 5556
    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    .line 5557
    invoke-virtual {v4, v6}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setColumnsToRemove(Ljava/util/ArrayList;)V

    return-object v4

    :cond_10
    const-string v0, "CHANGE"

    .line 5560
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "COLUMN"

    .line 5562
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 5563
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 5564
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 5565
    invoke-direct {p0, v3, v2, v0, v1}, Lorg/h2/command/Parser;->columnIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object v6

    if-nez v6, :cond_11

    goto :goto_1

    .line 5566
    :cond_11
    invoke-virtual {v6}, Lorg/h2/table/Column;->isNullable()Z

    move-result v5

    .line 5569
    :goto_1
    invoke-direct {p0, v4, v5}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    .line 5570
    new-instance v5, Lorg/h2/command/ddl/AlterTableRenameColumn;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v5, v6, v3}, Lorg/h2/command/ddl/AlterTableRenameColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5571
    invoke-virtual {v5, v2}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setTableName(Ljava/lang/String;)V

    .line 5572
    invoke-virtual {v5, v1}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setIfTableExists(Z)V

    .line 5573
    invoke-virtual {v5, v0}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setOldColumnName(Ljava/lang/String;)V

    .line 5574
    invoke-virtual {v5, v4}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setNewColumnName(Ljava/lang/String;)V

    return-object v5

    :cond_12
    const-string v0, "MODIFY"

    .line 5576
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "COLUMN"

    .line 5578
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 5579
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 5580
    invoke-direct {p0, v3, v2, v0, v1}, Lorg/h2/command/Parser;->parseAlterTableAlterColumnType(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v0, "ALTER"

    .line 5581
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "COLUMN"

    .line 5582
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 5583
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 5584
    invoke-direct {p0, v3, v2, v0, v1}, Lorg/h2/command/Parser;->columnIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object v4

    const-string v5, "RENAME"

    .line 5585
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v4, "TO"

    .line 5586
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5587
    new-instance v4, Lorg/h2/command/ddl/AlterTableRenameColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v3}, Lorg/h2/command/ddl/AlterTableRenameColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5589
    invoke-virtual {v4, v2}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setTableName(Ljava/lang/String;)V

    .line 5590
    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setIfTableExists(Z)V

    .line 5591
    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setOldColumnName(Ljava/lang/String;)V

    .line 5592
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 5593
    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableRenameColumn;->setNewColumnName(Ljava/lang/String;)V

    return-object v4

    :cond_14
    const-string v5, "DROP"

    .line 5595
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x9

    const/16 v7, 0xa

    if-eqz v5, :cond_16

    const-string v0, "DEFAULT"

    .line 5597
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5598
    new-instance v0, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v5, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5600
    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    .line 5601
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    .line 5602
    invoke-virtual {v0, v4}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setOldColumn(Lorg/h2/table/Column;)V

    .line 5603
    invoke-virtual {v0, v7}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    const/4 v1, 0x0

    .line 5604
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setDefaultExpression(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_15
    const-string v0, "NOT"

    .line 5607
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "NULL"

    .line 5608
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5609
    new-instance v0, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v5, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5611
    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    .line 5612
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    .line 5613
    invoke-virtual {v0, v4}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setOldColumn(Lorg/h2/table/Column;)V

    .line 5614
    invoke-virtual {v0, v6}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    return-object v0

    :cond_16
    const-string v5, "TYPE"

    .line 5616
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 5618
    invoke-direct {p0, v3, v2, v0, v1}, Lorg/h2/command/Parser;->parseAlterTableAlterColumnType(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;

    move-result-object v0

    return-object v0

    :cond_17
    const-string v5, "SET"

    .line 5620
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "DATA"

    .line 5621
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v4, "TYPE"

    .line 5623
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5624
    invoke-direct {p0, v3, v2, v0, v1}, Lorg/h2/command/Parser;->parseAlterTableAlterColumnType(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;

    move-result-object v0

    return-object v0

    .line 5627
    :cond_18
    new-instance v0, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v5, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5629
    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    .line 5630
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    .line 5631
    invoke-virtual {v0, v4}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setOldColumn(Lorg/h2/table/Column;)V

    const-string v1, "NULL"

    .line 5632
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5633
    invoke-virtual {v0, v6}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    return-object v0

    :cond_19
    const-string v1, "NOT"

    .line 5635
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "NULL"

    .line 5636
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 5637
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    return-object v0

    :cond_1a
    const-string v1, "DEFAULT"

    .line 5639
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5640
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    .line 5641
    invoke-virtual {v0, v7}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    .line 5642
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setDefaultExpression(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_1b
    const-string v5, "RESTART"

    .line 5645
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v0, "WITH"

    .line 5646
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 5647
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    .line 5648
    new-instance v5, Lorg/h2/command/dml/AlterSequence;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v5, v6, v3}, Lorg/h2/command/dml/AlterSequence;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5649
    invoke-virtual {v5, v4}, Lorg/h2/command/dml/AlterSequence;->setColumn(Lorg/h2/table/Column;)V

    .line 5650
    invoke-virtual {v5, v0}, Lorg/h2/command/dml/AlterSequence;->setStartWith(Lorg/h2/expression/Expression;)V

    .line 5651
    invoke-direct {p0, v3, v2, v1, v5}, Lorg/h2/command/Parser;->commandIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;ZLorg/h2/command/Prepared;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v5, "SELECTIVITY"

    .line 5652
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5653
    new-instance v0, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v5, v3}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5655
    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    .line 5656
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    const/16 v1, 0xd

    .line 5657
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    .line 5658
    invoke-virtual {v0, v4}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setOldColumn(Lorg/h2/table/Column;)V

    .line 5659
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setSelectivity(Lorg/h2/expression/Expression;)V

    return-object v0

    .line 5662
    :cond_1d
    invoke-direct {p0, v3, v2, v0, v1}, Lorg/h2/command/Parser;->parseAlterTableAlterColumnType(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;

    move-result-object v0

    return-object v0

    .line 5666
    :cond_1e
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseAlterTableAddColumn(Ljava/lang/String;Lorg/h2/schema/Schema;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;
    .locals 2

    const-string v0, "COLUMN"

    .line 5707
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 5708
    new-instance v0, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    const/4 p2, 0x7

    .line 5710
    invoke-virtual {v0, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    .line 5711
    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    .line 5712
    invoke-virtual {v0, p3}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    .line 5713
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "("

    .line 5714
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 5715
    invoke-virtual {v0, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfNotExists(Z)V

    .line 5717
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object p2

    .line 5718
    invoke-direct {p0, p2, p3}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object p2

    .line 5719
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, ","

    .line 5720
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, ")"

    .line 5721
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5722
    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setNewColumns(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 5724
    :cond_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result p2

    .line 5725
    invoke-virtual {v0, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfNotExists(Z)V

    .line 5726
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object p2

    .line 5727
    invoke-direct {p0, p2, p3}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object p2

    .line 5728
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "BEFORE"

    .line 5729
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5730
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setAddBefore(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p2, "AFTER"

    .line 5731
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5732
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setAddAfter(Ljava/lang/String;)V

    .line 5735
    :cond_3
    :goto_0
    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setNewColumns(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private parseAlterTableAddConstraintIf(Ljava/lang/String;Lorg/h2/schema/Schema;Z)Lorg/h2/command/ddl/DefineCommand;
    .locals 8

    .line 5770
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->indexDefinitionInCreateTable:Z

    const-string v1, "CONSTRAINT"

    .line 5771
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 5772
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    .line 5773
    invoke-virtual {p2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5774
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    .line 5775
    invoke-direct {p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v0

    move-object v1, v4

    move-object v5, v1

    const/4 v0, 0x0

    :goto_0
    const-string v7, "PRIMARY"

    .line 5778
    invoke-direct {p0, v7}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v2, "KEY"

    .line 5779
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5780
    new-instance v2, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v2, v4, p2, v0}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    const/4 p2, 0x6

    .line 5782
    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    .line 5783
    invoke-virtual {v2, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setComment(Ljava/lang/String;)V

    .line 5784
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setConstraintName(Ljava/lang/String;)V

    .line 5785
    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    .line 5786
    invoke-virtual {v2, p3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIfTableExists(Z)V

    const-string p1, "HASH"

    .line 5787
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5788
    invoke-virtual {v2, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setPrimaryKeyHash(Z)V

    :cond_1
    const-string p1, "("

    .line 5790
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5791
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    const-string p1, "INDEX"

    .line 5792
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5793
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object p1

    .line 5794
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p2

    iget-object p3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p2, p3, p1}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndex(Lorg/h2/index/Index;)V

    :cond_2
    return-object v2

    :cond_3
    if-eqz v6, :cond_8

    const-string v6, "INDEX"

    .line 5797
    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "KEY"

    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5800
    :cond_4
    iget v0, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    .line 5801
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5802
    iget-object v1, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/value/DataType;->getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5804
    iput v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    .line 5805
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return-object v4

    .line 5808
    :cond_5
    new-instance v0, Lorg/h2/command/ddl/CreateIndex;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1, p2}, Lorg/h2/command/ddl/CreateIndex;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5809
    invoke-virtual {v0, v5}, Lorg/h2/command/ddl/CreateIndex;->setComment(Ljava/lang/String;)V

    .line 5810
    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/CreateIndex;->setTableName(Ljava/lang/String;)V

    .line 5811
    invoke-virtual {v0, p3}, Lorg/h2/command/ddl/CreateIndex;->setIfTableExists(Z)V

    const-string p1, "("

    .line 5812
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 5813
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/CreateIndex;->setIndexName(Ljava/lang/String;)V

    const-string p1, "("

    .line 5814
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5816
    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/CreateIndex;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    const-string p1, "USING"

    .line 5818
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "BTREE"

    .line 5819
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_7
    return-object v0

    :cond_8
    const-string v6, "CHECK"

    .line 5824
    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 5825
    new-instance v4, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v6, p2, v0}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    const/4 p2, 0x3

    .line 5826
    invoke-virtual {v4, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    .line 5827
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {v4, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setCheckExpression(Lorg/h2/expression/Expression;)V

    goto/16 :goto_1

    :cond_9
    const-string v6, "UNIQUE"

    .line 5828
    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v4, "KEY"

    .line 5829
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const-string v4, "INDEX"

    .line 5830
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 5831
    new-instance v4, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v6, p2, v0}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    const/4 p2, 0x4

    .line 5832
    invoke-virtual {v4, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    const-string p2, "("

    .line 5833
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 5834
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object p2

    const-string v0, "("

    .line 5835
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    move-object v1, p2

    .line 5837
    :cond_a
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object p2

    invoke-virtual {v4, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    const-string p2, "INDEX"

    .line 5838
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 5839
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object p2

    .line 5840
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v6, p2}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object p2

    invoke-virtual {v4, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndex(Lorg/h2/index/Index;)V

    :cond_b
    const-string p2, "USING"

    .line 5843
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "BTREE"

    .line 5844
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    const-string v6, "FOREIGN"

    .line 5846
    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 5847
    new-instance v4, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v6, p2, v0}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    const/4 v0, 0x5

    .line 5848
    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    const-string v0, "KEY"

    .line 5849
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "("

    .line 5850
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5851
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    const-string v0, "INDEX"

    .line 5852
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5853
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v0

    .line 5854
    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p2, v6, v0}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndex(Lorg/h2/index/Index;)V

    :cond_d
    const-string v0, "REFERENCES"

    .line 5856
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5857
    invoke-direct {p0, v4, p2, p1}, Lorg/h2/command/Parser;->parseReferences(Lorg/h2/command/ddl/AlterTableAddConstraint;Lorg/h2/schema/Schema;Ljava/lang/String;)V

    :cond_e
    :goto_1
    const-string p2, "NOCHECK"

    .line 5864
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 5865
    invoke-virtual {v4, v2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setCheckExisting(Z)V

    goto :goto_2

    :cond_f
    const-string p2, "CHECK"

    .line 5867
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 5868
    invoke-virtual {v4, v3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setCheckExisting(Z)V

    .line 5870
    :goto_2
    invoke-virtual {v4, p1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    .line 5871
    invoke-virtual {v4, p3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIfTableExists(Z)V

    .line 5872
    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setConstraintName(Ljava/lang/String;)V

    .line 5873
    invoke-virtual {v4, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setComment(Ljava/lang/String;)V

    return-object v4

    :cond_10
    if-nez v1, :cond_11

    return-object v4

    .line 5860
    :cond_11
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private parseAlterTableAlterColumnType(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/command/ddl/AlterTableAlterColumn;
    .locals 3

    .line 5692
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/h2/command/Parser;->columnIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 5693
    :cond_0
    invoke-virtual {v0}, Lorg/h2/table/Column;->isNullable()Z

    move-result v1

    :goto_0
    invoke-direct {p0, p3, v1}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object p3

    .line 5695
    new-instance v1, Lorg/h2/command/ddl/AlterTableAlterColumn;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, p1}, Lorg/h2/command/ddl/AlterTableAlterColumn;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5697
    invoke-virtual {v1, p2}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setTableName(Ljava/lang/String;)V

    .line 5698
    invoke-virtual {v1, p4}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setIfTableExists(Z)V

    const/16 p1, 0xb

    .line 5699
    invoke-virtual {v1, p1}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setType(I)V

    .line 5700
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setOldColumn(Lorg/h2/table/Column;)V

    .line 5701
    invoke-virtual {v1, p3}, Lorg/h2/command/ddl/AlterTableAlterColumn;->setNewColumn(Lorg/h2/table/Column;)V

    return-object v1
.end method

.method private parseAlterUser()Lorg/h2/command/ddl/AlterUser;
    .locals 3

    .line 4965
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SET"

    .line 4966
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4967
    new-instance v1, Lorg/h2/command/ddl/AlterUser;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/AlterUser;-><init>(Lorg/h2/engine/Session;)V

    const/16 v2, 0x13

    .line 4968
    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/AlterUser;->setType(I)V

    .line 4969
    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Database;->getUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setUser(Lorg/h2/engine/User;)V

    const-string v0, "PASSWORD"

    .line 4970
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4971
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setPassword(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_0
    const-string v0, "SALT"

    .line 4972
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4973
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setSalt(Lorg/h2/expression/Expression;)V

    const-string v0, "HASH"

    .line 4974
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4975
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setHash(Lorg/h2/expression/Expression;)V

    :goto_0
    return-object v1

    .line 4977
    :cond_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    const-string v1, "RENAME"

    .line 4980
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "TO"

    .line 4981
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4982
    new-instance v1, Lorg/h2/command/ddl/AlterUser;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/AlterUser;-><init>(Lorg/h2/engine/Session;)V

    const/16 v2, 0x12

    .line 4983
    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/AlterUser;->setType(I)V

    .line 4984
    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Database;->getUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setUser(Lorg/h2/engine/User;)V

    .line 4985
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 4986
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setNewName(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-string v1, "ADMIN"

    .line 4988
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4989
    new-instance v1, Lorg/h2/command/ddl/AlterUser;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/AlterUser;-><init>(Lorg/h2/engine/Session;)V

    const/16 v2, 0x11

    .line 4990
    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/AlterUser;->setType(I)V

    .line 4991
    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Database;->getUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v0

    .line 4992
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setUser(Lorg/h2/engine/User;)V

    const-string v0, "TRUE"

    .line 4993
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 4994
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setAdmin(Z)V

    goto :goto_1

    :cond_4
    const-string v0, "FALSE"

    .line 4995
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 4996
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/AlterUser;->setAdmin(Z)V

    :goto_1
    return-object v1

    .line 4998
    :cond_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 5002
    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseAlterView()Lorg/h2/command/ddl/AlterView;
    .locals 5

    .line 4881
    new-instance v0, Lorg/h2/command/ddl/AlterView;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/AlterView;-><init>(Lorg/h2/engine/Session;)V

    const/4 v1, 0x0

    .line 4882
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v1

    .line 4883
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterView;->setIfExists(Z)V

    .line 4884
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v2

    .line 4885
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4, v2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v3

    .line 4886
    instance-of v4, v3, Lorg/h2/table/TableView;

    if-nez v4, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fb5

    .line 4887
    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 4889
    :cond_1
    :goto_0
    check-cast v3, Lorg/h2/table/TableView;

    .line 4890
    invoke-virtual {v0, v3}, Lorg/h2/command/ddl/AlterView;->setView(Lorg/h2/table/TableView;)V

    const-string v1, "RECOMPILE"

    .line 4891
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseAnalyze()Lorg/h2/command/Prepared;
    .locals 2

    .line 549
    new-instance v0, Lorg/h2/command/ddl/Analyze;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/Analyze;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "SAMPLE_SIZE"

    .line 550
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    invoke-direct {p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/Analyze;->setTop(I)V

    :cond_0
    return-object v0
.end method

.method private parseAutoIncrement(Lorg/h2/table/Column;)V
    .locals 11

    const-string v0, "("

    .line 4017
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 4018
    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v3

    const-string v0, ","

    .line 4019
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4020
    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v0

    move-wide v1, v0

    :cond_0
    const-string v0, ")"

    .line 4022
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    move-wide v9, v1

    move-wide v7, v3

    goto :goto_0

    :cond_1
    move-wide v7, v1

    move-wide v9, v7

    :goto_0
    const/4 v6, 0x1

    move-object v5, p1

    .line 4024
    invoke-virtual/range {v5 .. v10}, Lorg/h2/table/Column;->setAutoIncrement(ZJJ)V

    return-void
.end method

.method private parseBackup()Lorg/h2/command/Prepared;
    .locals 2

    .line 542
    new-instance v0, Lorg/h2/command/dml/BackupCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/BackupCommand;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "TO"

    .line 543
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/BackupCommand;->setFileName(Lorg/h2/expression/Expression;)V

    return-object v0
.end method

.method private parseBegin()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    const-string v0, "WORK"

    .line 558
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TRANSACTION"

    .line 559
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 561
    :cond_0
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x53

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    return-object v0
.end method

.method private parseCall()Lorg/h2/command/dml/Call;
    .locals 2

    .line 4475
    new-instance v0, Lorg/h2/command/dml/Call;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Call;-><init>(Lorg/h2/engine/Session;)V

    .line 4476
    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    .line 4477
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Call;->setExpression(Lorg/h2/expression/Expression;)V

    return-object v0
.end method

.method private parseCascadeOrRestrict()Ljava/lang/Integer;
    .locals 1

    const-string v0, "CASCADE"

    .line 5757
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5758
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "RESTRICT"

    .line 5759
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5760
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseCheckpoint()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    const-string v0, "SYNC"

    .line 4831
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4832
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x4c

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    goto :goto_0

    .line 4835
    :cond_0
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x49

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    :goto_0
    return-object v0
.end method

.method private parseColumn(Lorg/h2/table/Table;)Lorg/h2/table/Column;
    .locals 2

    .line 874
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 875
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->rowId:Z

    if-eqz v1, :cond_0

    const-string v1, "_ROWID_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    invoke-virtual {p1}, Lorg/h2/table/Table;->getRowIdColumn()Lorg/h2/table/Column;

    move-result-object p1

    return-object p1

    .line 878
    :cond_0
    invoke-virtual {p1, v0}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p1

    return-object p1
.end method

.method private parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;
    .locals 9

    const-string v0, "IDENTITY"

    .line 3920
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "BIGSERIAL"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SERIAL"

    .line 3928
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3929
    new-instance v0, Lorg/h2/table/Column;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v2}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    const-string p1, "SERIAL"

    .line 3930
    invoke-virtual {v0, p1}, Lorg/h2/table/Column;->setOriginalSQL(Ljava/lang/String;)V

    .line 3931
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->parseAutoIncrement(Lorg/h2/table/Column;)V

    .line 3933
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->serialColumnIsNotPK:Z

    if-nez p1, :cond_3

    .line 3934
    invoke-virtual {v0, v1}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    goto :goto_1

    .line 3937
    :cond_1
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v0

    goto :goto_1

    .line 3921
    :cond_2
    :goto_0
    new-instance v0, Lorg/h2/table/Column;

    const/4 v2, 0x5

    invoke-direct {v0, p1, v2}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    const-string p1, "IDENTITY"

    .line 3922
    invoke-virtual {v0, p1}, Lorg/h2/table/Column;->setOriginalSQL(Ljava/lang/String;)V

    .line 3923
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->parseAutoIncrement(Lorg/h2/table/Column;)V

    .line 3925
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->serialColumnIsNotPK:Z

    if-nez p1, :cond_3

    .line 3926
    invoke-virtual {v0, v1}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    :cond_3
    :goto_1
    const-string p1, "NOT"

    .line 3939
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    const/4 v8, 0x0

    if-eqz p1, :cond_4

    const-string p1, "NULL"

    .line 3940
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 3941
    invoke-virtual {v0, v8}, Lorg/h2/table/Column;->setNullable(Z)V

    goto :goto_2

    :cond_4
    const-string p1, "NULL"

    .line 3942
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3943
    invoke-virtual {v0, v1}, Lorg/h2/table/Column;->setNullable(Z)V

    goto :goto_2

    .line 3946
    :cond_5
    invoke-virtual {v0}, Lorg/h2/table/Column;->isNullable()Z

    move-result p1

    and-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/h2/table/Column;->setNullable(Z)V

    :goto_2
    const-string p1, "AS"

    .line 3948
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3952
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p1

    .line 3953
    invoke-virtual {v0, p1}, Lorg/h2/table/Column;->setComputedExpression(Lorg/h2/expression/Expression;)V

    goto/16 :goto_4

    :cond_6
    const-string p1, "DEFAULT"

    .line 3954
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3955
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p1

    .line 3956
    iget-object p2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, p2, p1}, Lorg/h2/table/Column;->setDefaultExpression(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    goto :goto_4

    :cond_7
    const-string p1, "GENERATED"

    .line 3957
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "ALWAYS"

    .line 3958
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "BY"

    .line 3959
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "DEFAULT"

    .line 3960
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_8
    const-string p1, "AS"

    .line 3962
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "IDENTITY"

    .line 3963
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "("

    .line 3965
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v2, 0x1

    if-eqz p1, :cond_a

    const-string p1, "START"

    .line 3966
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "WITH"

    .line 3967
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 3968
    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide p1

    const-string v4, ","

    .line 3969
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const-string v4, "INCREMENT"

    .line 3970
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v2, "BY"

    .line 3971
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 3972
    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v2

    :cond_9
    const-string v4, ")"

    .line 3974
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    move-wide v4, p1

    move-wide v6, v2

    goto :goto_3

    :cond_a
    move-wide v4, v2

    move-wide v6, v4

    .line 3976
    :goto_3
    invoke-virtual {v0, v1}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    const/4 v3, 0x1

    move-object v2, v0

    .line 3977
    invoke-virtual/range {v2 .. v7}, Lorg/h2/table/Column;->setAutoIncrement(ZJJ)V

    :cond_b
    :goto_4
    const-string p1, "NOT"

    .line 3979
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "NULL"

    .line 3980
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 3981
    invoke-virtual {v0, v8}, Lorg/h2/table/Column;->setNullable(Z)V

    goto :goto_5

    :cond_c
    const-string p1, "NULL"

    .line 3983
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :goto_5
    const-string p1, "AUTO_INCREMENT"

    .line 3985
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "BIGSERIAL"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "SERIAL"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_6

    :cond_d
    const-string p1, "IDENTITY"

    .line 3990
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3991
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->parseAutoIncrement(Lorg/h2/table/Column;)V

    .line 3992
    invoke-virtual {v0, v1}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    const-string p1, "NOT"

    .line 3993
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "NULL"

    .line 3994
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_7

    .line 3986
    :cond_e
    :goto_6
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->parseAutoIncrement(Lorg/h2/table/Column;)V

    const-string p1, "NOT"

    .line 3987
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "NULL"

    .line 3988
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_f
    :goto_7
    const-string p1, "NULL_TO_DEFAULT"

    .line 3997
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3998
    invoke-virtual {v0, v1}, Lorg/h2/table/Column;->setConvertNullToDefault(Z)V

    :cond_10
    const-string p1, "SEQUENCE"

    .line 4000
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4001
    invoke-direct {p0}, Lorg/h2/command/Parser;->readSequence()Lorg/h2/schema/Sequence;

    move-result-object p1

    .line 4002
    invoke-virtual {v0, p1}, Lorg/h2/table/Column;->setSequence(Lorg/h2/schema/Sequence;)V

    :cond_11
    const-string p1, "SELECTIVITY"

    .line 4004
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4005
    invoke-direct {p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    move-result p1

    .line 4006
    invoke-virtual {v0, p1}, Lorg/h2/table/Column;->setSelectivity(I)V

    .line 4008
    :cond_12
    invoke-direct {p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 4010
    invoke-virtual {v0, p1}, Lorg/h2/table/Column;->setComment(Ljava/lang/String;)V

    :cond_13
    return-object v0
.end method

.method private parseColumnList()[Ljava/lang/String;
    .locals 2

    .line 849
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 851
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 852
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 854
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private parseColumnList(Lorg/h2/table/Table;)[Lorg/h2/table/Column;
    .locals 4

    .line 858
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 859
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v1

    const-string v2, ")"

    .line 860
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 862
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->parseColumn(Lorg/h2/table/Table;)Lorg/h2/table/Column;

    move-result-object v2

    .line 863
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 867
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const p1, 0xa489

    .line 864
    invoke-virtual {v2}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 870
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/h2/table/Column;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/h2/table/Column;

    return-object p1
.end method

.method private parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;
    .locals 23

    move-object/from16 v0, p0

    .line 4036
    iget-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    const-string v2, "LONG"

    .line 4038
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v2, "RAW"

    .line 4039
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RAW"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "DOUBLE"

    .line 4042
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "PRECISION"

    .line 4043
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRECISION"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, "CHARACTER"

    .line 4046
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "VARYING"

    .line 4047
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " VARYING"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "TIMESTAMP"

    .line 4050
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "WITH"

    .line 4051
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "TIMEZONE"

    .line 4052
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WITH TIMEZONE"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    .line 4064
    :goto_1
    iget-boolean v5, v0, Lorg/h2/command/Parser;->identifiersToUpper:Z

    if-nez v5, :cond_5

    .line 4065
    invoke-static {v1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4067
    :cond_5
    iget-object v5, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v5, v1}, Lorg/h2/engine/Database;->findUserDataType(Ljava/lang/String;)Lorg/h2/engine/UserDataType;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    if-eqz v5, :cond_6

    .line 4069
    invoke-virtual {v5}, Lorg/h2/engine/UserDataType;->getColumn()Lorg/h2/table/Column;

    move-result-object v6

    .line 4070
    invoke-virtual {v6}, Lorg/h2/table/Column;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v1

    .line 4071
    invoke-virtual {v6}, Lorg/h2/table/Column;->getComment()Ljava/lang/String;

    move-result-object v5

    .line 4072
    invoke-virtual {v6}, Lorg/h2/table/Column;->getOriginalSQL()Ljava/lang/String;

    move-result-object v10

    .line 4073
    invoke-virtual {v6}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v11

    .line 4074
    invoke-virtual {v6}, Lorg/h2/table/Column;->getDisplaySize()I

    move-result v13

    .line 4075
    invoke-virtual {v6}, Lorg/h2/table/Column;->getScale()I

    move-result v14

    goto :goto_2

    .line 4077
    :cond_6
    invoke-static {v1}, Lorg/h2/value/DataType;->getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v5

    if-eqz v5, :cond_1b

    move-object v10, v1

    move-object v1, v5

    move-object v5, v6

    move-wide v11, v7

    const/4 v13, -0x1

    const/4 v14, -0x1

    .line 4083
    :goto_2
    iget-object v15, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v15}, Lorg/h2/engine/Database;->getIgnoreCase()Z

    move-result v15

    const/16 v3, 0xd

    if-eqz v15, :cond_7

    iget v15, v1, Lorg/h2/value/DataType;->type:I

    if-ne v15, v3, :cond_7

    const-string v15, "VARCHAR_CASESENSITIVE"

    invoke-direct {v0, v15, v10}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v10, "VARCHAR_IGNORECASE"

    .line 4086
    invoke-static {v10}, Lorg/h2/value/DataType;->getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v1

    :cond_7
    if-eqz v2, :cond_8

    .line 4089
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->read()V

    :cond_8
    cmp-long v2, v11, v7

    if-nez v2, :cond_9

    .line 4091
    iget-wide v11, v1, Lorg/h2/value/DataType;->defaultPrecision:J

    :cond_9
    if-ne v13, v9, :cond_a

    .line 4092
    iget v13, v1, Lorg/h2/value/DataType;->defaultDisplaySize:I

    :cond_a
    if-ne v14, v9, :cond_b

    .line 4094
    iget v2, v1, Lorg/h2/value/DataType;->defaultScale:I

    move v14, v2

    .line 4095
    :cond_b
    iget-boolean v2, v1, Lorg/h2/value/DataType;->supportsPrecision:Z

    if-nez v2, :cond_d

    iget-boolean v2, v1, Lorg/h2/value/DataType;->supportsScale:Z

    if-eqz v2, :cond_c

    goto :goto_3

    :cond_c
    const-string v2, "("

    .line 4133
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4136
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    const-string v2, ")"

    .line 4137
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    :goto_3
    const-string v2, "("

    .line 4096
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "MAX"

    .line 4097
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 4098
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v7

    const-string v2, "K"

    .line 4099
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-wide/16 v16, 0x400

    mul-long v7, v7, v16

    goto :goto_4

    :cond_e
    const-string v2, "M"

    .line 4101
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-wide/32 v16, 0x100000

    mul-long v7, v7, v16

    goto :goto_4

    :cond_f
    const-string v2, "G"

    .line 4103
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-wide/32 v16, 0x40000000

    mul-long v7, v7, v16

    :cond_10
    :goto_4
    const-wide v16, 0x7fffffffffffffffL

    cmp-long v2, v7, v16

    if-lez v2, :cond_11

    move-wide/from16 v7, v16

    .line 4109
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "CHAR"

    .line 4111
    invoke-direct {v0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 4112
    iget-boolean v9, v1, Lorg/h2/value/DataType;->supportsScale:Z

    if-eqz v9, :cond_14

    const-string v9, ","

    .line 4113
    invoke-direct {v0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 4114
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readInt()I

    move-result v9

    .line 4115
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v14, v9

    goto :goto_5

    .line 4119
    :cond_12
    iget v9, v1, Lorg/h2/value/DataType;->type:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_13

    .line 4120
    invoke-static {v7, v8}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v7

    move v14, v7

    move-wide v7, v11

    goto :goto_5

    :cond_13
    const/4 v14, 0x0

    .line 4128
    :cond_14
    :goto_5
    invoke-static {v7, v8}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v9

    .line 4129
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    move-wide v11, v7

    move v13, v9

    :cond_15
    const-string v2, ")"

    .line 4131
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_16
    :goto_6
    move-wide/from16 v19, v11

    move/from16 v22, v13

    const-string v2, "FOR"

    .line 4139
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "BIT"

    .line 4140
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "DATA"

    .line 4141
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4142
    iget v2, v1, Lorg/h2/value/DataType;->type:I

    if-ne v2, v3, :cond_17

    const-string v1, "BINARY"

    .line 4143
    invoke-static {v1}, Lorg/h2/value/DataType;->getTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;

    move-result-object v1

    :cond_17
    const-string v2, "UNSIGNED"

    .line 4147
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 4148
    iget v1, v1, Lorg/h2/value/DataType;->type:I

    int-to-long v2, v14

    cmp-long v7, v2, v19

    if-gtz v7, :cond_1a

    .line 4153
    new-instance v2, Lorg/h2/table/Column;

    move-object/from16 v16, v2

    move-object/from16 v17, p1

    move/from16 v18, v1

    move/from16 v21, v14

    invoke-direct/range {v16 .. v22}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    if-eqz v6, :cond_19

    .line 4156
    invoke-virtual {v6}, Lorg/h2/table/Column;->isNullable()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/h2/table/Column;->setNullable(Z)V

    .line 4157
    iget-object v1, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6}, Lorg/h2/table/Column;->getDefaultExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/h2/table/Column;->setDefaultExpression(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    .line 4159
    invoke-virtual {v6}, Lorg/h2/table/Column;->getSelectivity()I

    move-result v1

    const/16 v3, 0x32

    if-eq v1, v3, :cond_18

    .line 4161
    invoke-virtual {v2, v1}, Lorg/h2/table/Column;->setSelectivity(I)V

    .line 4163
    :cond_18
    iget-object v1, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    move-object/from16 v3, p1

    invoke-virtual {v6, v1, v3}, Lorg/h2/table/Column;->getCheckConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v1

    .line 4165
    iget-object v3, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3, v1}, Lorg/h2/table/Column;->addCheckConstraint(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    .line 4167
    :cond_19
    invoke-virtual {v2, v5}, Lorg/h2/table/Column;->setComment(Ljava/lang/String;)V

    .line 4168
    invoke-virtual {v2, v10}, Lorg/h2/table/Column;->setOriginalSQL(Ljava/lang/String;)V

    return-object v2

    :cond_1a
    const v1, 0x15fc3

    const/4 v2, 0x2

    .line 4150
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_1b
    const v1, 0xc354

    .line 4079
    iget-object v2, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
.end method

.method private parseComment()Lorg/h2/command/Prepared;
    .locals 9

    const-string v0, "ON"

    .line 1296
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "TABLE"

    .line 1298
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_c

    const-string v0, "VIEW"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "COLUMN"

    .line 1300
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_1
    const-string v0, "CONSTANT"

    .line 1303
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    const/4 v0, 0x0

    const/16 v6, 0xb

    goto/16 :goto_2

    :cond_2
    const-string v0, "CONSTRAINT"

    .line 1305
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    const/4 v0, 0x0

    const/4 v6, 0x5

    goto/16 :goto_2

    :cond_3
    const-string v0, "ALIAS"

    .line 1307
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    const/4 v0, 0x0

    const/16 v6, 0x9

    goto :goto_2

    :cond_4
    const-string v0, "INDEX"

    .line 1309
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "ROLE"

    .line 1311
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    const/4 v0, 0x0

    const/4 v6, 0x7

    goto :goto_2

    :cond_6
    const-string v0, "SCHEMA"

    .line 1313
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    const/4 v0, 0x0

    const/16 v6, 0xa

    goto :goto_2

    :cond_7
    const-string v0, "SEQUENCE"

    .line 1315
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v6, 0x3

    goto :goto_2

    :cond_8
    const-string v0, "TRIGGER"

    .line 1317
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    const/4 v6, 0x4

    goto :goto_2

    :cond_9
    const-string v0, "USER"

    .line 1319
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    const/4 v6, 0x2

    goto :goto_2

    :cond_a
    const-string v0, "DOMAIN"

    .line 1321
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    const/4 v0, 0x0

    const/16 v6, 0xc

    goto :goto_2

    .line 1324
    :cond_b
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v6, 0x0

    .line 1326
    :goto_2
    new-instance v7, Lorg/h2/command/ddl/SetComment;

    iget-object v8, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v7, v8}, Lorg/h2/command/ddl/SetComment;-><init>(Lorg/h2/engine/Session;)V

    if-eqz v0, :cond_12

    .line 1332
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1334
    :cond_d
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "."

    .line 1335
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1336
    iget-object v8, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v8}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    .line 1337
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v3, :cond_f

    .line 1338
    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v3, v8}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1342
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1339
    :cond_e
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "database name"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 1344
    :cond_f
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_10

    .line 1345
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    .line 1346
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1348
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_11

    .line 1352
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1353
    invoke-virtual {v7, v4}, Lorg/h2/command/ddl/SetComment;->setColumn(Z)V

    .line 1354
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/h2/command/ddl/SetComment;->setColumnName(Ljava/lang/String;)V

    goto :goto_4

    .line 1349
    :cond_11
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "table.column"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 1356
    :cond_12
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 1358
    :goto_4
    iget-object v0, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/h2/command/ddl/SetComment;->setSchemaName(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v7, v1}, Lorg/h2/command/ddl/SetComment;->setObjectName(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v7, v6}, Lorg/h2/command/ddl/SetComment;->setObjectType(I)V

    const-string v0, "IS"

    .line 1361
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1362
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/h2/command/ddl/SetComment;->setCommentExpression(Lorg/h2/expression/Expression;)V

    return-object v7
.end method

.method private parseCommit()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    const-string v0, "TRANSACTION"

    .line 567
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x4e

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    .line 570
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/TransactionCommand;->setTransactionName(Ljava/lang/String;)V

    return-object v0

    .line 573
    :cond_0
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x47

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    const-string v1, "WORK"

    .line 575
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    return-object v0
.end method

.method private parseCreate()Lorg/h2/command/Prepared;
    .locals 12

    const-string v0, "OR"

    .line 4174
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "REPLACE"

    .line 4175
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "FORCE"

    .line 4178
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "VIEW"

    .line 4179
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4180
    invoke-direct {p0, v3, v0}, Lorg/h2/command/Parser;->parseCreateView(ZZ)Lorg/h2/command/ddl/CreateView;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "ALIAS"

    .line 4181
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4182
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->parseCreateFunctionAlias(Z)Lorg/h2/command/ddl/CreateFunctionAlias;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "SEQUENCE"

    .line 4183
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4184
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateSequence()Lorg/h2/command/ddl/CreateSequence;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "USER"

    .line 4185
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4186
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateUser()Lorg/h2/command/ddl/CreateUser;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "TRIGGER"

    .line 4187
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4188
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->parseCreateTrigger(Z)Lorg/h2/command/ddl/CreateTrigger;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v0, "ROLE"

    .line 4189
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4190
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateRole()Lorg/h2/command/ddl/CreateRole;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v0, "SCHEMA"

    .line 4191
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4192
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateSchema()Lorg/h2/command/ddl/CreateSchema;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "CONSTANT"

    .line 4193
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4194
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateConstant()Lorg/h2/command/ddl/CreateConstant;

    move-result-object v0

    return-object v0

    :cond_8
    const-string v0, "DOMAIN"

    .line 4195
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4196
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateUserDataType()Lorg/h2/command/ddl/CreateUserDataType;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "TYPE"

    .line 4197
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4198
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateUserDataType()Lorg/h2/command/ddl/CreateUserDataType;

    move-result-object v0

    return-object v0

    :cond_a
    const-string v0, "DATATYPE"

    .line 4199
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4200
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreateUserDataType()Lorg/h2/command/ddl/CreateUserDataType;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "AGGREGATE"

    .line 4201
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4202
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->parseCreateAggregate(Z)Lorg/h2/command/ddl/CreateAggregate;

    move-result-object v0

    return-object v0

    :cond_c
    const-string v0, "LINKED"

    .line 4203
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4204
    invoke-direct {p0, v1, v1, v3}, Lorg/h2/command/Parser;->parseCreateLinkedTable(ZZZ)Lorg/h2/command/ddl/CreateLinkedTable;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v0, "MEMORY"

    .line 4208
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    const/4 v4, 0x1

    goto :goto_2

    :cond_e
    const-string v0, "CACHED"

    .line 4210
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_1

    :cond_f
    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x0

    :goto_2
    const-string v5, "LOCAL"

    .line 4213
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v4, "TEMPORARY"

    .line 4214
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v4, "LINKED"

    .line 4215
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4216
    invoke-direct {p0, v2, v1, v3}, Lorg/h2/command/Parser;->parseCreateLinkedTable(ZZZ)Lorg/h2/command/ddl/CreateLinkedTable;

    move-result-object v0

    return-object v0

    :cond_10
    const-string v3, "TABLE"

    .line 4218
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4219
    invoke-direct {p0, v2, v1, v0}, Lorg/h2/command/Parser;->parseCreateTable(ZZZ)Lorg/h2/command/ddl/CreateTable;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v5, "GLOBAL"

    .line 4220
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v1, "TEMPORARY"

    .line 4221
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v1, "LINKED"

    .line 4222
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4223
    invoke-direct {p0, v2, v2, v3}, Lorg/h2/command/Parser;->parseCreateLinkedTable(ZZZ)Lorg/h2/command/ddl/CreateLinkedTable;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v1, "TABLE"

    .line 4225
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4226
    invoke-direct {p0, v2, v2, v0}, Lorg/h2/command/Parser;->parseCreateTable(ZZZ)Lorg/h2/command/ddl/CreateTable;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v5, "TEMP"

    .line 4227
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_22

    const-string v5, "TEMPORARY"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto/16 :goto_6

    :cond_14
    const-string v3, "TABLE"

    .line 4233
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    if-nez v0, :cond_16

    if-nez v4, :cond_16

    .line 4235
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getDefaultTableType()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_3

    :cond_15
    const/4 v0, 0x0

    .line 4237
    :cond_16
    :goto_3
    invoke-direct {p0, v1, v1, v0}, Lorg/h2/command/Parser;->parseCreateTable(ZZZ)Lorg/h2/command/ddl/CreateTable;

    move-result-object v0

    return-object v0

    :cond_17
    const-string v0, "PRIMARY"

    .line 4244
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_19

    const-string v0, "KEY"

    .line 4245
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "HASH"

    .line 4246
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "ON"

    .line 4250
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 4251
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v4

    .line 4252
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4253
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    move v6, v0

    move v1, v4

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v11, v5

    move-object v5, v3

    move-object v3, v11

    goto :goto_4

    :cond_18
    move v6, v0

    move-object v5, v3

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_4

    :cond_19
    const-string v0, "UNIQUE"

    .line 4256
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "HASH"

    .line 4259
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "SPATIAL"

    .line 4262
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "INDEX"

    .line 4265
    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, "ON"

    .line 4266
    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 4267
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v6

    .line 4268
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4269
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    move v1, v6

    move v6, v4

    move v4, v0

    const/4 v0, 0x0

    move v11, v5

    move-object v5, v3

    move-object v3, v7

    move v7, v11

    goto :goto_4

    :cond_1a
    move v6, v4

    move v7, v5

    move v4, v0

    move-object v5, v3

    const/4 v0, 0x0

    :goto_4
    const-string v8, "ON"

    .line 4275
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4276
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v8

    .line 4277
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    .line 4278
    new-instance v3, Lorg/h2/command/ddl/CreateIndex;

    iget-object v9, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Lorg/h2/command/ddl/CreateIndex;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 4279
    invoke-virtual {v3, v1}, Lorg/h2/command/ddl/CreateIndex;->setIfNotExists(Z)V

    .line 4280
    invoke-virtual {v3, v0}, Lorg/h2/command/ddl/CreateIndex;->setPrimaryKey(Z)V

    .line 4281
    invoke-virtual {v3, v8}, Lorg/h2/command/ddl/CreateIndex;->setTableName(Ljava/lang/String;)V

    .line 4282
    invoke-virtual {v3, v4}, Lorg/h2/command/ddl/CreateIndex;->setUnique(Z)V

    .line 4283
    invoke-virtual {v3, v5}, Lorg/h2/command/ddl/CreateIndex;->setIndexName(Ljava/lang/String;)V

    .line 4284
    invoke-direct {p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/h2/command/ddl/CreateIndex;->setComment(Ljava/lang/String;)V

    const-string v0, "("

    .line 4285
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4286
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/h2/command/ddl/CreateIndex;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    const-string v0, "USING"

    .line 4288
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-nez v6, :cond_1f

    if-nez v7, :cond_1e

    const-string v0, "BTREE"

    .line 4295
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_5

    :cond_1b
    const-string v0, "RTREE"

    .line 4297
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v7, 0x1

    goto :goto_5

    :cond_1c
    const-string v0, "HASH"

    .line 4299
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v6, 0x1

    goto :goto_5

    .line 4302
    :cond_1d
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 4293
    :cond_1e
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 4290
    :cond_1f
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 4306
    :cond_20
    :goto_5
    invoke-virtual {v3, v6}, Lorg/h2/command/ddl/CreateIndex;->setHash(Z)V

    .line 4307
    invoke-virtual {v3, v7}, Lorg/h2/command/ddl/CreateIndex;->setSpatial(Z)V

    return-object v3

    .line 4272
    :cond_21
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_22
    :goto_6
    const-string v1, "LINKED"

    .line 4228
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 4229
    invoke-direct {p0, v2, v2, v3}, Lorg/h2/command/Parser;->parseCreateLinkedTable(ZZZ)Lorg/h2/command/ddl/CreateLinkedTable;

    move-result-object v0

    return-object v0

    :cond_23
    const-string v1, "TABLE"

    .line 4231
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4232
    invoke-direct {p0, v2, v2, v0}, Lorg/h2/command/Parser;->parseCreateTable(ZZZ)Lorg/h2/command/ddl/CreateTable;

    move-result-object v0

    return-object v0
.end method

.method private parseCreateAggregate(Z)Lorg/h2/command/ddl/CreateAggregate;
    .locals 3

    .line 4577
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    .line 4578
    new-instance v1, Lorg/h2/command/ddl/CreateAggregate;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/CreateAggregate;-><init>(Lorg/h2/engine/Session;)V

    .line 4579
    invoke-virtual {v1, p1}, Lorg/h2/command/ddl/CreateAggregate;->setForce(Z)V

    .line 4580
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object p1

    .line 4581
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {v2, p1}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->getAggregateType(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 4586
    invoke-virtual {v1, p1}, Lorg/h2/command/ddl/CreateAggregate;->setName(Ljava/lang/String;)V

    .line 4587
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/h2/command/ddl/CreateAggregate;->setSchema(Lorg/h2/schema/Schema;)V

    .line 4588
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/CreateAggregate;->setIfNotExists(Z)V

    const-string p1, "FOR"

    .line 4589
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4590
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/h2/command/ddl/CreateAggregate;->setJavaClassMethod(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const v0, 0x15fdc

    .line 4583
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private parseCreateConstant()Lorg/h2/command/ddl/CreateConstant;
    .locals 6

    .line 4560
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    .line 4561
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 4562
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    .line 4563
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VALUE"

    .line 4567
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4568
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    .line 4569
    new-instance v4, Lorg/h2/command/ddl/CreateConstant;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5, v2}, Lorg/h2/command/ddl/CreateConstant;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 4570
    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/CreateConstant;->setConstantName(Ljava/lang/String;)V

    .line 4571
    invoke-virtual {v4, v3}, Lorg/h2/command/ddl/CreateConstant;->setExpression(Lorg/h2/expression/Expression;)V

    .line 4572
    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/CreateConstant;->setIfNotExists(Z)V

    return-object v4

    :cond_0
    const v0, 0x16002

    .line 4564
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseCreateFunctionAlias(Z)Lorg/h2/command/ddl/CreateFunctionAlias;
    .locals 5

    .line 4702
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    .line 4703
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 4704
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {v2, v1}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->getAggregateType(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 4710
    new-instance v2, Lorg/h2/command/ddl/CreateFunctionAlias;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/CreateFunctionAlias;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 4712
    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setForce(Z)V

    .line 4713
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setAliasName(Ljava/lang/String;)V

    .line 4714
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateFunctionAlias;->setIfNotExists(Z)V

    const-string p1, "DETERMINISTIC"

    .line 4715
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setDeterministic(Z)V

    const-string p1, "NOBUFFER"

    .line 4716
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setBufferResultSetToLocalTemp(Z)V

    const-string p1, "AS"

    .line 4717
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4718
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "FOR"

    .line 4720
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4721
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateFunctionAlias;->setJavaClassMethod(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_1
    const p1, 0x15fdc

    .line 4707
    invoke-static {p1, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private parseCreateLinkedTable(ZZZ)Lorg/h2/command/ddl/CreateLinkedTable;
    .locals 5

    const-string v0, "TABLE"

    .line 5910
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5911
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    .line 5912
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 5913
    new-instance v2, Lorg/h2/command/ddl/CreateLinkedTable;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/CreateLinkedTable;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5914
    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateLinkedTable;->setTemporary(Z)V

    .line 5915
    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateLinkedTable;->setGlobalTemporary(Z)V

    .line 5916
    invoke-virtual {v2, p3}, Lorg/h2/command/ddl/CreateLinkedTable;->setForce(Z)V

    .line 5917
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateLinkedTable;->setIfNotExists(Z)V

    .line 5918
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateLinkedTable;->setTableName(Ljava/lang/String;)V

    .line 5919
    invoke-direct {p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateLinkedTable;->setComment(Ljava/lang/String;)V

    const-string p1, "("

    .line 5920
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5921
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateLinkedTable;->setDriver(Ljava/lang/String;)V

    const-string p1, ","

    .line 5922
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5923
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateLinkedTable;->setUrl(Ljava/lang/String;)V

    const-string p1, ","

    .line 5924
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5925
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateLinkedTable;->setUser(Ljava/lang/String;)V

    const-string p1, ","

    .line 5926
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5927
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateLinkedTable;->setPassword(Ljava/lang/String;)V

    const-string p1, ","

    .line 5928
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5929
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    .line 5930
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5931
    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateLinkedTable;->setOriginalSchema(Ljava/lang/String;)V

    .line 5932
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5934
    :cond_0
    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateLinkedTable;->setOriginalTable(Ljava/lang/String;)V

    const-string p1, ")"

    .line 5935
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "EMIT"

    .line 5936
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const-string p1, "UPDATES"

    .line 5937
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5938
    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateLinkedTable;->setEmitUpdates(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "READONLY"

    .line 5939
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5940
    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateLinkedTable;->setReadOnly(Z)V

    :cond_2
    :goto_0
    return-object v2
.end method

.method private parseCreateRole()Lorg/h2/command/ddl/CreateRole;
    .locals 2

    .line 4482
    new-instance v0, Lorg/h2/command/ddl/CreateRole;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/CreateRole;-><init>(Lorg/h2/engine/Session;)V

    .line 4483
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateRole;->setIfNotExists(Z)V

    .line 4484
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateRole;->setRoleName(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseCreateSchema()Lorg/h2/command/ddl/CreateSchema;
    .locals 2

    .line 4489
    new-instance v0, Lorg/h2/command/ddl/CreateSchema;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/CreateSchema;-><init>(Lorg/h2/engine/Session;)V

    .line 4490
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateSchema;->setIfNotExists(Z)V

    .line 4491
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateSchema;->setSchemaName(Ljava/lang/String;)V

    const-string v1, "AUTHORIZATION"

    .line 4492
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4493
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateSchema;->setAuthorization(Ljava/lang/String;)V

    goto :goto_0

    .line 4495
    :cond_0
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateSchema;->setAuthorization(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private parseCreateSequence()Lorg/h2/command/ddl/CreateSequence;
    .locals 7

    .line 4501
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    .line 4502
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 4503
    new-instance v2, Lorg/h2/command/ddl/CreateSequence;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/CreateSequence;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 4504
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setIfNotExists(Z)V

    .line 4505
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateSequence;->setSequenceName(Ljava/lang/String;)V

    :goto_0
    const-string v0, "START"

    .line 4507
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WITH"

    .line 4508
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 4509
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setStartWith(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_0
    const-string v0, "INCREMENT"

    .line 4510
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BY"

    .line 4511
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 4512
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setIncrement(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_1
    const-string v0, "MINVALUE"

    .line 4513
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4514
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setMinValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_2
    const-string v0, "NOMINVALUE"

    .line 4515
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4516
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateSequence;->setMinValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_3
    const-string v0, "MAXVALUE"

    .line 4517
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4518
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setMaxValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_4
    const-string v0, "NOMAXVALUE"

    .line 4519
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4520
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateSequence;->setMaxValue(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_5
    const-string v0, "CYCLE"

    .line 4521
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 4522
    invoke-virtual {v2, v3}, Lorg/h2/command/ddl/CreateSequence;->setCycle(Z)V

    goto :goto_0

    :cond_6
    const-string v0, "NOCYCLE"

    .line 4523
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 4524
    invoke-virtual {v2, v4}, Lorg/h2/command/ddl/CreateSequence;->setCycle(Z)V

    goto :goto_0

    :cond_7
    const-string v0, "NO"

    .line 4525
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v5, 0x1

    if-eqz v0, :cond_b

    const-string v0, "MINVALUE"

    .line 4526
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4527
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateSequence;->setMinValue(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "MAXVALUE"

    .line 4528
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4529
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateSequence;->setMaxValue(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "CYCLE"

    .line 4530
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4531
    invoke-virtual {v2, v4}, Lorg/h2/command/ddl/CreateSequence;->setCycle(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "CACHE"

    .line 4532
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4533
    invoke-static {v5, v6}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setCacheSize(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "CACHE"

    .line 4537
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4538
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setCacheSize(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "NOCACHE"

    .line 4539
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4540
    invoke-static {v5, v6}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateSequence;->setCacheSize(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "BELONGS_TO_TABLE"

    .line 4541
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4542
    invoke-virtual {v2, v3}, Lorg/h2/command/ddl/CreateSequence;->setBelongsToTable(Z)V

    goto/16 :goto_0

    :cond_e
    return-object v2
.end method

.method private parseCreateTable(ZZZ)Lorg/h2/command/ddl/CreateTable;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 5947
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v3

    .line 5948
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const-string v7, "SESSION"

    .line 5949
    iget-object v8, v0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5952
    iget-object v6, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move/from16 v6, p2

    .line 5955
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    .line 5956
    new-instance v8, Lorg/h2/command/ddl/CreateTable;

    iget-object v9, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v8, v9, v7}, Lorg/h2/command/ddl/CreateTable;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 5957
    invoke-virtual {v8, v2}, Lorg/h2/command/ddl/CreateTable;->setPersistIndexes(Z)V

    .line 5958
    invoke-virtual {v8, v1}, Lorg/h2/command/ddl/CreateTable;->setTemporary(Z)V

    .line 5959
    invoke-virtual {v8, v6}, Lorg/h2/command/ddl/CreateTable;->setGlobalTemporary(Z)V

    .line 5960
    invoke-virtual {v8, v3}, Lorg/h2/command/ddl/CreateTable;->setIfNotExists(Z)V

    .line 5961
    invoke-virtual {v8, v4}, Lorg/h2/command/ddl/CreateTable;->setTableName(Ljava/lang/String;)V

    .line 5962
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/h2/command/ddl/CreateTable;->setComment(Ljava/lang/String;)V

    const-string v3, "("

    .line 5963
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x4

    const/4 v10, 0x1

    if-eqz v3, :cond_a

    const-string v3, ")"

    .line 5964
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 5966
    :goto_1
    invoke-direct {v0, v4, v7, v5}, Lorg/h2/command/Parser;->parseAlterTableAddConstraintIf(Ljava/lang/String;Lorg/h2/schema/Schema;Z)Lorg/h2/command/ddl/DefineCommand;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5969
    invoke-virtual {v8, v3}, Lorg/h2/command/ddl/CreateTable;->addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V

    goto/16 :goto_4

    .line 5971
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 5972
    invoke-direct {v0, v3, v10}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object v11

    .line 5973
    invoke-virtual {v11}, Lorg/h2/table/Column;->isAutoIncrement()Z

    move-result v12

    const/4 v13, 0x6

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Lorg/h2/table/Column;->isPrimaryKey()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 5974
    invoke-virtual {v11, v5}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    .line 5975
    new-array v12, v10, [Lorg/h2/table/IndexColumn;

    new-instance v14, Lorg/h2/table/IndexColumn;

    invoke-direct {v14}, Lorg/h2/table/IndexColumn;-><init>()V

    aput-object v14, v12, v5

    .line 5976
    aget-object v14, v12, v5

    invoke-virtual {v11}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    .line 5977
    new-instance v14, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v15, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v14, v15, v7, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    .line 5979
    invoke-virtual {v14, v13}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    .line 5980
    invoke-virtual {v14, v4}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    .line 5981
    invoke-virtual {v14, v12}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    .line 5982
    invoke-virtual {v8, v14}, Lorg/h2/command/ddl/CreateTable;->addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V

    .line 5984
    :cond_2
    invoke-virtual {v8, v11}, Lorg/h2/command/ddl/CreateTable;->addColumn(Lorg/h2/table/Column;)V

    const/4 v12, 0x0

    const-string v14, "CONSTRAINT"

    .line 5986
    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 5987
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v12

    :cond_3
    const-string v14, "PRIMARY"

    .line 5989
    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "KEY"

    .line 5990
    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v14, "HASH"

    .line 5991
    invoke-direct {v0, v14}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v14

    .line 5992
    new-array v15, v10, [Lorg/h2/table/IndexColumn;

    new-instance v16, Lorg/h2/table/IndexColumn;

    invoke-direct/range {v16 .. v16}, Lorg/h2/table/IndexColumn;-><init>()V

    aput-object v16, v15, v5

    .line 5993
    aget-object v9, v15, v5

    invoke-virtual {v11}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    .line 5994
    new-instance v9, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v10, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v9, v10, v7, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    .line 5996
    invoke-virtual {v9, v14}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setPrimaryKeyHash(Z)V

    .line 5997
    invoke-virtual {v9, v13}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    .line 5998
    invoke-virtual {v9, v4}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    .line 5999
    invoke-virtual {v9, v15}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    .line 6000
    invoke-virtual {v8, v9}, Lorg/h2/command/ddl/CreateTable;->addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V

    const-string v9, "AUTO_INCREMENT"

    .line 6001
    invoke-direct {v0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 6002
    invoke-direct {v0, v11}, Lorg/h2/command/Parser;->parseAutoIncrement(Lorg/h2/table/Column;)V

    goto :goto_2

    :cond_4
    const-string v9, "UNIQUE"

    .line 6004
    invoke-direct {v0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 6005
    new-instance v9, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v10, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v9, v10, v7, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    .line 6007
    invoke-virtual {v9, v12}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setConstraintName(Ljava/lang/String;)V

    .line 6008
    invoke-virtual {v9, v6}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    const/4 v10, 0x1

    .line 6009
    new-array v13, v10, [Lorg/h2/table/IndexColumn;

    new-instance v10, Lorg/h2/table/IndexColumn;

    invoke-direct {v10}, Lorg/h2/table/IndexColumn;-><init>()V

    aput-object v10, v13, v5

    .line 6010
    aget-object v10, v13, v5

    iput-object v3, v10, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    .line 6011
    invoke-virtual {v9, v13}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    .line 6012
    invoke-virtual {v9, v4}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    .line 6013
    invoke-virtual {v8, v9}, Lorg/h2/command/ddl/CreateTable;->addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V

    :cond_5
    :goto_2
    const-string v9, "NOT"

    .line 6015
    invoke-direct {v0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "NULL"

    .line 6016
    invoke-direct {v0, v9}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 6017
    invoke-virtual {v11, v5}, Lorg/h2/table/Column;->setNullable(Z)V

    goto :goto_3

    :cond_6
    const-string v9, "NULL"

    .line 6019
    invoke-direct {v0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :goto_3
    const-string v9, "CHECK"

    .line 6021
    invoke-direct {v0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 6022
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v9

    .line 6023
    iget-object v10, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v11, v10, v9}, Lorg/h2/table/Column;->addCheckConstraint(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    :cond_7
    const-string v9, "REFERENCES"

    .line 6025
    invoke-direct {v0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 6026
    new-instance v9, Lorg/h2/command/ddl/AlterTableAddConstraint;

    iget-object v10, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v9, v10, v7, v5}, Lorg/h2/command/ddl/AlterTableAddConstraint;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;Z)V

    .line 6028
    invoke-virtual {v9, v12}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setConstraintName(Ljava/lang/String;)V

    const/4 v10, 0x5

    .line 6029
    invoke-virtual {v9, v10}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setType(I)V

    const/4 v10, 0x1

    .line 6030
    new-array v11, v10, [Lorg/h2/table/IndexColumn;

    new-instance v10, Lorg/h2/table/IndexColumn;

    invoke-direct {v10}, Lorg/h2/table/IndexColumn;-><init>()V

    aput-object v10, v11, v5

    .line 6031
    aget-object v10, v11, v5

    iput-object v3, v10, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    .line 6032
    invoke-virtual {v9, v11}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setIndexColumns([Lorg/h2/table/IndexColumn;)V

    .line 6033
    invoke-virtual {v9, v4}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setTableName(Ljava/lang/String;)V

    .line 6034
    invoke-direct {v0, v9, v7, v4}, Lorg/h2/command/Parser;->parseReferences(Lorg/h2/command/ddl/AlterTableAddConstraint;Lorg/h2/schema/Schema;Ljava/lang/String;)V

    .line 6035
    invoke-virtual {v8, v9}, Lorg/h2/command/ddl/CreateTable;->addConstraintCommand(Lorg/h2/command/ddl/DefineCommand;)V

    .line 6038
    :cond_8
    :goto_4
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_5
    const-string v3, "COMMENT"

    .line 6042
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "="

    .line 6043
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6045
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    :cond_b
    const-string v3, "ENGINE"

    .line 6048
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "="

    .line 6049
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 6051
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InnoDb"

    .line 6052
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_6

    :cond_c
    const-string v4, "MyISAM"

    .line 6054
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_6

    .line 6055
    :cond_d
    invoke-static {v3}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    .line 6058
    :cond_e
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/h2/command/ddl/CreateTable;->setTableEngine(Ljava/lang/String;)V

    const-string v3, "WITH"

    .line 6059
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 6060
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 6062
    :cond_f
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, ","

    .line 6063
    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 6064
    invoke-virtual {v8, v3}, Lorg/h2/command/ddl/CreateTable;->setTableEngineParams(Ljava/util/ArrayList;)V

    :cond_10
    :goto_6
    const-string v3, "AUTO_INCREMENT"

    .line 6069
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "="

    .line 6070
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 6071
    iget v3, v0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_11

    iget-object v3, v0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v3}, Lorg/h2/value/Value;->getType()I

    move-result v3

    if-ne v3, v6, :cond_11

    .line 6076
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_7

    .line 6073
    :cond_11
    iget-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v2, v0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v3, "integer"

    invoke-static {v1, v2, v3}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_12
    :goto_7
    const-string v3, "DEFAULT"

    .line 6078
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const-string v3, "CHARSET"

    .line 6079
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "="

    .line 6080
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v3, "UTF8"

    .line 6081
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "UTF8MB4"

    .line 6082
    invoke-direct {v0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_13
    if-eqz v1, :cond_18

    const-string v1, "ON"

    .line 6086
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "COMMIT"

    .line 6087
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v1, "DROP"

    .line 6088
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 6089
    invoke-virtual {v8}, Lorg/h2/command/ddl/CreateTable;->setOnCommitDrop()V

    goto :goto_8

    :cond_14
    const-string v1, "DELETE"

    .line 6090
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "ROWS"

    .line 6091
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 6092
    invoke-virtual {v8}, Lorg/h2/command/ddl/CreateTable;->setOnCommitTruncate()V

    goto :goto_8

    :cond_15
    const-string v1, "NOT"

    .line 6094
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "PERSISTENT"

    .line 6095
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 6096
    invoke-virtual {v8, v5}, Lorg/h2/command/ddl/CreateTable;->setPersistData(Z)V

    goto :goto_8

    :cond_16
    const-string v1, "LOGGED"

    .line 6098
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_17
    :goto_8
    const-string v1, "TRANSACTIONAL"

    .line 6101
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    .line 6102
    invoke-virtual {v8, v1}, Lorg/h2/command/ddl/CreateTable;->setTransactional(Z)V

    goto :goto_9

    :cond_18
    if-nez v2, :cond_19

    const-string v1, "NOT"

    .line 6104
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "PERSISTENT"

    .line 6105
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 6106
    invoke-virtual {v8, v5}, Lorg/h2/command/ddl/CreateTable;->setPersistData(Z)V

    :cond_19
    :goto_9
    const-string v1, "HIDDEN"

    .line 6108
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    .line 6109
    invoke-virtual {v8, v1}, Lorg/h2/command/ddl/CreateTable;->setHidden(Z)V

    goto :goto_a

    :cond_1a
    const/4 v1, 0x1

    :goto_a
    const-string v2, "AS"

    .line 6111
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "SORTED"

    .line 6112
    invoke-direct {v0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6113
    invoke-virtual {v8, v1}, Lorg/h2/command/ddl/CreateTable;->setSortedInsertMode(Z)V

    .line 6115
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/h2/command/ddl/CreateTable;->setQuery(Lorg/h2/command/dml/Query;)V

    :cond_1c
    const-string v1, "ROW_FORMAT"

    .line 6118
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "="

    .line 6119
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 6120
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    :cond_1d
    return-object v8
.end method

.method private parseCreateTrigger(Z)Lorg/h2/command/ddl/CreateTrigger;
    .locals 12

    .line 4611
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    const/4 v1, 0x0

    .line 4612
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4613
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    const-string v3, "INSTEAD"

    .line 4615
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const-string v3, "OF"

    .line 4616
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const-string v3, "BEFORE"

    .line 4619
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "AFTER"

    .line 4623
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_2
    const-string v9, "INSERT"

    .line 4630
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    or-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const-string v9, "UPDATE"

    .line 4632
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    or-int/lit8 v7, v7, 0x2

    goto :goto_2

    :cond_4
    const-string v9, "DELETE"

    .line 4634
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    or-int/lit8 v7, v7, 0x4

    goto :goto_2

    :cond_5
    const-string v9, "SELECT"

    .line 4636
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    or-int/lit8 v7, v7, 0x8

    goto :goto_2

    :cond_6
    const-string v8, "ROLLBACK"

    .line 4638
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_2
    const-string v9, ","

    .line 4643
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "ON"

    .line 4644
    invoke-direct {p0, v9}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4645
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v9

    .line 4646
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->checkSchema(Lorg/h2/schema/Schema;)V

    .line 4647
    new-instance v2, Lorg/h2/command/ddl/CreateTrigger;

    iget-object v10, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lorg/h2/command/ddl/CreateTrigger;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 4648
    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateTrigger;->setForce(Z)V

    .line 4649
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateTrigger;->setTriggerName(Ljava/lang/String;)V

    .line 4650
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateTrigger;->setIfNotExists(Z)V

    .line 4651
    invoke-virtual {v2, v3}, Lorg/h2/command/ddl/CreateTrigger;->setInsteadOf(Z)V

    .line 4652
    invoke-virtual {v2, v6}, Lorg/h2/command/ddl/CreateTrigger;->setBefore(Z)V

    .line 4653
    invoke-virtual {v2, v8}, Lorg/h2/command/ddl/CreateTrigger;->setOnRollback(Z)V

    .line 4654
    invoke-virtual {v2, v7}, Lorg/h2/command/ddl/CreateTrigger;->setTypeMask(I)V

    .line 4655
    invoke-virtual {v2, v9}, Lorg/h2/command/ddl/CreateTrigger;->setTableName(Ljava/lang/String;)V

    const-string p1, "FOR"

    .line 4656
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "EACH"

    .line 4657
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "ROW"

    .line 4658
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4659
    invoke-virtual {v2, v5}, Lorg/h2/command/ddl/CreateTrigger;->setRowBased(Z)V

    goto :goto_3

    .line 4661
    :cond_7
    invoke-virtual {v2, v4}, Lorg/h2/command/ddl/CreateTrigger;->setRowBased(Z)V

    :goto_3
    const-string p1, "QUEUE"

    .line 4663
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 4664
    invoke-direct {p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateTrigger;->setQueueSize(I)V

    :cond_8
    const-string p1, "NOWAIT"

    .line 4666
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateTrigger;->setNoWait(Z)V

    const-string p1, "AS"

    .line 4667
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4668
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateTrigger;->setTriggerSource(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string p1, "CALL"

    .line 4670
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4671
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateTrigger;->setTriggerClassName(Ljava/lang/String;)V

    :goto_4
    return-object v2

    .line 4641
    :cond_a
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private parseCreateUser()Lorg/h2/command/ddl/CreateUser;
    .locals 2

    .line 4677
    new-instance v0, Lorg/h2/command/ddl/CreateUser;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/CreateUser;-><init>(Lorg/h2/engine/Session;)V

    .line 4678
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setIfNotExists(Z)V

    .line 4679
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setUserName(Ljava/lang/String;)V

    .line 4680
    invoke-direct {p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setComment(Ljava/lang/String;)V

    const-string v1, "PASSWORD"

    .line 4681
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4682
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setPassword(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_0
    const-string v1, "SALT"

    .line 4683
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4684
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setSalt(Lorg/h2/expression/Expression;)V

    const-string v1, "HASH"

    .line 4685
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4686
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setHash(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_1
    const-string v1, "IDENTIFIED"

    .line 4687
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BY"

    .line 4688
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4690
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setPassword(Lorg/h2/expression/Expression;)V

    :goto_0
    const-string v1, "ADMIN"

    .line 4695
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 4696
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/CreateUser;->setAdmin(Z)V

    :cond_2
    return-object v0

    .line 4693
    :cond_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseCreateUserDataType()Lorg/h2/command/ddl/CreateUserDataType;
    .locals 5

    .line 4595
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    .line 4596
    new-instance v1, Lorg/h2/command/ddl/CreateUserDataType;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/CreateUserDataType;-><init>(Lorg/h2/engine/Session;)V

    .line 4597
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/CreateUserDataType;->setTypeName(Ljava/lang/String;)V

    const-string v2, "AS"

    .line 4598
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "VALUE"

    const/4 v3, 0x1

    .line 4599
    invoke-direct {p0, v2, v3}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object v2

    const-string v3, "CHECK"

    .line 4600
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4601
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    .line 4602
    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v4, v3}, Lorg/h2/table/Column;->addCheckConstraint(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    :cond_0
    const/4 v3, 0x0

    .line 4604
    invoke-virtual {v2, v3}, Lorg/h2/table/Column;->rename(Ljava/lang/String;)V

    .line 4605
    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/CreateUserDataType;->setColumn(Lorg/h2/table/Column;)V

    .line 4606
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/CreateUserDataType;->setIfNotExists(Z)V

    return-object v1
.end method

.method private parseCreateView(ZZ)Lorg/h2/command/ddl/CreateView;
    .locals 5

    .line 4790
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfNotExists()Z

    move-result v0

    .line 4791
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 4792
    new-instance v2, Lorg/h2/command/ddl/CreateView;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/CreateView;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 4793
    iput-object v2, p0, Lorg/h2/command/Parser;->createView:Lorg/h2/command/ddl/CreateView;

    .line 4794
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateView;->setViewName(Ljava/lang/String;)V

    .line 4795
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateView;->setIfNotExists(Z)V

    .line 4796
    invoke-direct {p0}, Lorg/h2/command/Parser;->readCommentIf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/CreateView;->setComment(Ljava/lang/String;)V

    .line 4797
    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateView;->setOrReplace(Z)V

    .line 4798
    invoke-virtual {v2, p1}, Lorg/h2/command/ddl/CreateView;->setForce(Z)V

    const-string p2, "("

    .line 4799
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4800
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseColumnList()[Ljava/lang/String;

    move-result-object p2

    .line 4801
    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateView;->setColumnNames([Ljava/lang/String;)V

    .line 4803
    :cond_0
    iget-object p2, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/util/StringUtils;->fromCacheOrNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "AS"

    .line 4805
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4808
    :try_start_0
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->setParsingView(Z)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 4810
    :try_start_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    .line 4811
    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4813
    :try_start_2
    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v0}, Lorg/h2/engine/Session;->setParsingView(Z)V

    .line 4815
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/CreateView;->setSelect(Lorg/h2/command/dml/Query;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 4813
    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v0}, Lorg/h2/engine/Session;->setParsingView(Z)V

    throw v1
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 4818
    invoke-virtual {v2, p2}, Lorg/h2/command/ddl/CreateView;->setSelectSQL(Ljava/lang/String;)V

    .line 4819
    :goto_0
    iget p1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    .line 4820
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2

    .line 4823
    :cond_2
    throw v0
.end method

.method private parseDeallocate()Lorg/h2/command/ddl/DeallocateProcedure;
    .locals 3

    const-string v0, "PLAN"

    .line 1663
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 1664
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1665
    new-instance v1, Lorg/h2/command/ddl/DeallocateProcedure;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/DeallocateProcedure;-><init>(Lorg/h2/engine/Session;)V

    .line 1666
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DeallocateProcedure;->setProcedureName(Ljava/lang/String;)V

    return-object v1
.end method

.method private parseDelete()Lorg/h2/command/dml/Delete;
    .locals 4

    .line 802
    new-instance v0, Lorg/h2/command/dml/Delete;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Delete;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "TOP"

    .line 804
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 807
    :goto_0
    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    .line 808
    iget v2, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    const-string v3, "FROM"

    .line 809
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const/4 v3, 0x0

    .line 810
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readSimpleTableFilter(I)Lorg/h2/table/TableFilter;

    move-result-object v3

    .line 811
    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Delete;->setTableFilter(Lorg/h2/table/TableFilter;)V

    const-string v3, "WHERE"

    .line 812
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 813
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    .line 814
    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Delete;->setCondition(Lorg/h2/expression/Expression;)V

    :cond_1
    const-string v3, "LIMIT"

    .line 816
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 817
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    .line 819
    :cond_2
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Delete;->setLimit(Lorg/h2/expression/Expression;)V

    const-string v1, "DELETE"

    .line 820
    invoke-direct {p0, v0, v1, v2}, Lorg/h2/command/Parser;->setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V

    return-object v0
.end method

.method private parseDrop()Lorg/h2/command/Prepared;
    .locals 8

    const-string v0, "TABLE"

    .line 1367
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1368
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1369
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v3

    .line 1370
    new-instance v4, Lorg/h2/command/ddl/DropTable;

    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/h2/command/ddl/DropTable;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 1371
    invoke-virtual {v4, v3}, Lorg/h2/command/ddl/DropTable;->setTableName(Ljava/lang/String;)V

    :goto_0
    const-string v3, ","

    .line 1372
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1373
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v3

    .line 1374
    new-instance v5, Lorg/h2/command/ddl/DropTable;

    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/h2/command/ddl/DropTable;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 1375
    invoke-virtual {v5, v3}, Lorg/h2/command/ddl/DropTable;->setTableName(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {v4, v5}, Lorg/h2/command/ddl/DropTable;->addNextDropTable(Lorg/h2/command/ddl/DropTable;)V

    goto :goto_0

    .line 1378
    :cond_0
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1379
    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/DropTable;->setIfExists(Z)V

    const-string v0, "CASCADE"

    .line 1380
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1381
    invoke-virtual {v4, v1}, Lorg/h2/command/ddl/DropTable;->setDropAction(I)V

    const-string v0, "CONSTRAINTS"

    .line 1382
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const-string v0, "RESTRICT"

    .line 1383
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1384
    invoke-virtual {v4, v2}, Lorg/h2/command/ddl/DropTable;->setDropAction(I)V

    goto :goto_1

    :cond_2
    const-string v0, "IGNORE"

    .line 1385
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 1386
    invoke-virtual {v4, v0}, Lorg/h2/command/ddl/DropTable;->setDropAction(I)V

    :cond_3
    :goto_1
    return-object v4

    :cond_4
    const-string v0, "INDEX"

    .line 1389
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1390
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1391
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 1392
    new-instance v2, Lorg/h2/command/ddl/DropIndex;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropIndex;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 1393
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropIndex;->setIndexName(Ljava/lang/String;)V

    .line 1394
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1395
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropIndex;->setIfExists(Z)V

    return-object v2

    :cond_5
    const-string v0, "USER"

    .line 1397
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1398
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1399
    new-instance v1, Lorg/h2/command/ddl/DropUser;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/DropUser;-><init>(Lorg/h2/engine/Session;)V

    .line 1400
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/DropUser;->setUserName(Ljava/lang/String;)V

    .line 1401
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    const-string v2, "CASCADE"

    .line 1402
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 1403
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DropUser;->setIfExists(Z)V

    return-object v1

    :cond_6
    const-string v0, "SEQUENCE"

    .line 1405
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1406
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1407
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 1408
    new-instance v2, Lorg/h2/command/ddl/DropSequence;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropSequence;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 1409
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropSequence;->setSequenceName(Ljava/lang/String;)V

    .line 1410
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1411
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropSequence;->setIfExists(Z)V

    return-object v2

    :cond_7
    const-string v0, "CONSTANT"

    .line 1413
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1414
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1415
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 1416
    new-instance v2, Lorg/h2/command/ddl/DropConstant;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropConstant;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 1417
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropConstant;->setConstantName(Ljava/lang/String;)V

    .line 1418
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1419
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropConstant;->setIfExists(Z)V

    return-object v2

    :cond_8
    const-string v0, "TRIGGER"

    .line 1421
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1422
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1423
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 1424
    new-instance v2, Lorg/h2/command/ddl/DropTrigger;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropTrigger;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 1425
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropTrigger;->setTriggerName(Ljava/lang/String;)V

    .line 1426
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1427
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropTrigger;->setIfExists(Z)V

    return-object v2

    :cond_9
    const-string v0, "VIEW"

    .line 1429
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1430
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1431
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 1432
    new-instance v2, Lorg/h2/command/ddl/DropView;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropView;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 1433
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropView;->setViewName(Ljava/lang/String;)V

    .line 1434
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1435
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropView;->setIfExists(Z)V

    .line 1436
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCascadeOrRestrict()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1438
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropView;->setDropAction(I)V

    :cond_a
    return-object v2

    :cond_b
    const-string v0, "ROLE"

    .line 1441
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1442
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1443
    new-instance v1, Lorg/h2/command/ddl/DropRole;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/DropRole;-><init>(Lorg/h2/engine/Session;)V

    .line 1444
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/DropRole;->setRoleName(Ljava/lang/String;)V

    .line 1445
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1446
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DropRole;->setIfExists(Z)V

    return-object v1

    :cond_c
    const-string v0, "ALIAS"

    .line 1448
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1449
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1450
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v1

    .line 1451
    new-instance v2, Lorg/h2/command/ddl/DropFunctionAlias;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/h2/command/ddl/DropFunctionAlias;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    .line 1453
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/DropFunctionAlias;->setAliasName(Ljava/lang/String;)V

    .line 1454
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1455
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/DropFunctionAlias;->setIfExists(Z)V

    return-object v2

    :cond_d
    const-string v0, "SCHEMA"

    .line 1457
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1458
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1459
    new-instance v1, Lorg/h2/command/ddl/DropSchema;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/DropSchema;-><init>(Lorg/h2/engine/Session;)V

    .line 1460
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/DropSchema;->setSchemaName(Ljava/lang/String;)V

    .line 1461
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1462
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DropSchema;->setIfExists(Z)V

    return-object v1

    :cond_e
    const-string v0, "ALL"

    .line 1464
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "OBJECTS"

    .line 1465
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1466
    new-instance v0, Lorg/h2/command/ddl/DropDatabase;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v2}, Lorg/h2/command/ddl/DropDatabase;-><init>(Lorg/h2/engine/Session;)V

    .line 1467
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/DropDatabase;->setDropAllObjects(Z)V

    const-string v2, "DELETE"

    .line 1468
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "FILES"

    .line 1469
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/DropDatabase;->setDeleteFiles(Z)V

    :cond_f
    return-object v0

    :cond_10
    const-string v0, "DOMAIN"

    .line 1473
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1474
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDropUserDataType()Lorg/h2/command/ddl/DropUserDataType;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, "TYPE"

    .line 1475
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1476
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDropUserDataType()Lorg/h2/command/ddl/DropUserDataType;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v0, "DATATYPE"

    .line 1477
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1478
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDropUserDataType()Lorg/h2/command/ddl/DropUserDataType;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v0, "AGGREGATE"

    .line 1479
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1480
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDropAggregate()Lorg/h2/command/ddl/DropAggregate;

    move-result-object v0

    return-object v0

    .line 1482
    :cond_14
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseDropAggregate()Lorg/h2/command/ddl/DropAggregate;
    .locals 3

    const/4 v0, 0x0

    .line 1495
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1496
    new-instance v1, Lorg/h2/command/ddl/DropAggregate;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/DropAggregate;-><init>(Lorg/h2/engine/Session;)V

    .line 1497
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/DropAggregate;->setName(Ljava/lang/String;)V

    .line 1498
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1499
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DropAggregate;->setIfExists(Z)V

    return-object v1
.end method

.method private parseDropUserDataType()Lorg/h2/command/ddl/DropUserDataType;
    .locals 3

    const/4 v0, 0x0

    .line 1486
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1487
    new-instance v1, Lorg/h2/command/ddl/DropUserDataType;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/DropUserDataType;-><init>(Lorg/h2/engine/Session;)V

    .line 1488
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/command/ddl/DropUserDataType;->setTypeName(Ljava/lang/String;)V

    .line 1489
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIfExists(Z)Z

    move-result v0

    .line 1490
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/DropUserDataType;->setIfExists(Z)V

    return-object v1
.end method

.method private parseEndOfQuery(Lorg/h2/command/dml/Query;)V
    .locals 7

    const-string v0, "ORDER"

    .line 1750
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const-string v0, "BY"

    .line 1751
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1752
    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    .line 1753
    instance-of v2, p1, Lorg/h2/command/dml/Select;

    if-eqz v2, :cond_0

    .line 1754
    move-object v2, p1

    check-cast v2, Lorg/h2/command/dml/Select;

    iput-object v2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    .line 1756
    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    :cond_1
    const-string v3, "="

    .line 1759
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v1

    .line 1762
    new-instance v4, Lorg/h2/command/dml/SelectOrderBy;

    invoke-direct {v4}, Lorg/h2/command/dml/SelectOrderBy;-><init>()V

    .line 1763
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v5

    if-eqz v3, :cond_2

    .line 1764
    instance-of v3, v5, Lorg/h2/expression/ValueExpression;

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_2

    .line 1766
    iput-object v5, v4, Lorg/h2/command/dml/SelectOrderBy;->columnIndexExpr:Lorg/h2/expression/Expression;

    goto :goto_0

    .line 1767
    :cond_2
    instance-of v3, v5, Lorg/h2/expression/Parameter;

    if-eqz v3, :cond_3

    .line 1768
    iput-boolean v1, p0, Lorg/h2/command/Parser;->recompileAlways:Z

    .line 1769
    iput-object v5, v4, Lorg/h2/command/dml/SelectOrderBy;->columnIndexExpr:Lorg/h2/expression/Expression;

    goto :goto_0

    .line 1771
    :cond_3
    iput-object v5, v4, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    :goto_0
    const-string v3, "DESC"

    .line 1773
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1774
    iput-boolean v1, v4, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    goto :goto_1

    :cond_4
    const-string v3, "ASC"

    .line 1776
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :goto_1
    const-string v3, "NULLS"

    .line 1778
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "FIRST"

    .line 1779
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1780
    iput-boolean v1, v4, Lorg/h2/command/dml/SelectOrderBy;->nullsFirst:Z

    goto :goto_2

    :cond_5
    const-string v3, "LAST"

    .line 1782
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1783
    iput-boolean v1, v4, Lorg/h2/command/dml/SelectOrderBy;->nullsLast:Z

    .line 1786
    :cond_6
    :goto_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ","

    .line 1787
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1788
    invoke-virtual {p1, v2}, Lorg/h2/command/dml/Query;->setOrder(Ljava/util/ArrayList;)V

    .line 1789
    iput-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    .line 1791
    :cond_7
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 1793
    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    .line 1794
    iput-object v2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const-string v3, "OFFSET"

    .line 1797
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1798
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/h2/command/dml/Query;->setOffset(Lorg/h2/expression/Expression;)V

    const-string v3, "ROW"

    .line 1799
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "ROWS"

    .line 1800
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :cond_8
    const-string v3, "FETCH"

    .line 1803
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "FIRST"

    .line 1804
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "NEXT"

    .line 1805
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_9
    const-string v3, "ROW"

    .line 1807
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1808
    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/h2/command/dml/Query;->setLimit(Lorg/h2/expression/Expression;)V

    goto :goto_3

    .line 1810
    :cond_a
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v3

    .line 1811
    invoke-virtual {p1, v3}, Lorg/h2/command/dml/Query;->setLimit(Lorg/h2/expression/Expression;)V

    const-string v3, "ROW"

    .line 1812
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "ROWS"

    .line 1813
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_b
    :goto_3
    const-string v3, "ONLY"

    .line 1816
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1819
    :cond_c
    iput-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    :cond_d
    const-string v0, "LIMIT"

    .line 1821
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1822
    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    .line 1824
    iput-object v2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    .line 1825
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    .line 1826
    invoke-virtual {p1, v2}, Lorg/h2/command/dml/Query;->setLimit(Lorg/h2/expression/Expression;)V

    const-string v3, "OFFSET"

    .line 1827
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1828
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    .line 1829
    invoke-virtual {p1, v2}, Lorg/h2/command/dml/Query;->setOffset(Lorg/h2/expression/Expression;)V

    goto :goto_4

    :cond_e
    const-string v3, ","

    .line 1830
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1833
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v3

    .line 1834
    invoke-virtual {p1, v2}, Lorg/h2/command/dml/Query;->setOffset(Lorg/h2/expression/Expression;)V

    .line 1835
    invoke-virtual {p1, v3}, Lorg/h2/command/dml/Query;->setLimit(Lorg/h2/expression/Expression;)V

    :cond_f
    :goto_4
    const-string v2, "SAMPLE_SIZE"

    .line 1837
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1838
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    .line 1839
    invoke-virtual {p1, v2}, Lorg/h2/command/dml/Query;->setSampleSize(Lorg/h2/expression/Expression;)V

    .line 1841
    :cond_10
    iput-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    :cond_11
    const-string v0, "FOR"

    .line 1843
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "UPDATE"

    .line 1844
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "OF"

    .line 1845
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1847
    :cond_12
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    const-string v0, ","

    .line 1848
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_5

    :cond_13
    const-string v0, "NOWAIT"

    .line 1849
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 1852
    :goto_5
    invoke-virtual {p1, v1}, Lorg/h2/command/dml/Query;->setForUpdate(Z)V

    goto :goto_6

    :cond_14
    const-string p1, "READ"

    .line 1853
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    const-string p1, "FETCH"

    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_15
    const-string p1, "ONLY"

    .line 1854
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1857
    :cond_16
    :goto_6
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->isolationLevelInSelectOrInsertStatement:Z

    if-eqz p1, :cond_17

    .line 1858
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIsolationClause()V

    :cond_17
    return-void
.end method

.method private parseExecute()Lorg/h2/command/Prepared;
    .locals 3

    .line 1642
    new-instance v0, Lorg/h2/command/dml/ExecuteProcedure;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/ExecuteProcedure;-><init>(Lorg/h2/engine/Session;)V

    .line 1643
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 1644
    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1}, Lorg/h2/engine/Session;->getProcedure(Ljava/lang/String;)Lorg/h2/engine/Procedure;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1649
    invoke-virtual {v0, v2}, Lorg/h2/command/dml/ExecuteProcedure;->setProcedure(Lorg/h2/engine/Procedure;)V

    const-string v1, "("

    .line 1650
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1652
    :goto_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/command/dml/ExecuteProcedure;->setExpression(ILorg/h2/expression/Expression;)V

    const-string v2, ")"

    .line 1653
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ","

    .line 1656
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const v0, 0x15fdd

    .line 1646
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseExplain()Lorg/h2/command/dml/Explain;
    .locals 2

    .line 1671
    new-instance v0, Lorg/h2/command/dml/Explain;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Explain;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "ANALYZE"

    .line 1672
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1673
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Explain;->setExecuteCommand(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "PLAN"

    .line 1675
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FOR"

    .line 1676
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    const-string v1, "SELECT"

    .line 1679
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "FROM"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "("

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "DELETE"

    .line 1681
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1682
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDelete()Lorg/h2/command/dml/Delete;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Explain;->setCommand(Lorg/h2/command/Prepared;)V

    goto :goto_2

    :cond_3
    const-string v1, "UPDATE"

    .line 1683
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1684
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseUpdate()Lorg/h2/command/dml/Update;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Explain;->setCommand(Lorg/h2/command/Prepared;)V

    goto :goto_2

    :cond_4
    const-string v1, "INSERT"

    .line 1685
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1686
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseInsert()Lorg/h2/command/dml/Insert;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Explain;->setCommand(Lorg/h2/command/Prepared;)V

    goto :goto_2

    :cond_5
    const-string v1, "MERGE"

    .line 1687
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1688
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseMerge()Lorg/h2/command/dml/Merge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Explain;->setCommand(Lorg/h2/command/Prepared;)V

    goto :goto_2

    :cond_6
    const-string v1, "WITH"

    .line 1689
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1690
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseWith()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Explain;->setCommand(Lorg/h2/command/Prepared;)V

    goto :goto_2

    .line 1692
    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 1680
    :cond_8
    :goto_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Explain;->setCommand(Lorg/h2/command/Prepared;)V

    :goto_2
    return-object v0
.end method

.method private parseGrantRevoke(I)Lorg/h2/command/ddl/GrantRevoke;
    .locals 3

    .line 4350
    new-instance v0, Lorg/h2/command/ddl/GrantRevoke;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/GrantRevoke;-><init>(Lorg/h2/engine/Session;)V

    .line 4351
    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/GrantRevoke;->setOperationType(I)V

    .line 4352
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->addRoleOrRight(Lorg/h2/command/ddl/GrantRevoke;)Z

    move-result v1

    :cond_0
    :goto_0
    const-string v2, ","

    .line 4353
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4354
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->addRoleOrRight(Lorg/h2/command/ddl/GrantRevoke;)Z

    .line 4355
    invoke-virtual {v0}, Lorg/h2/command/ddl/GrantRevoke;->isRightMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/h2/command/ddl/GrantRevoke;->isRoleMode()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x15fd8

    .line 4356
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    if-eqz v1, :cond_4

    const-string v1, "ON"

    .line 4361
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SCHEMA"

    .line 4362
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4363
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v1

    .line 4364
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/GrantRevoke;->setSchema(Lorg/h2/schema/Schema;)V

    goto :goto_1

    .line 4367
    :cond_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v1

    .line 4368
    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/GrantRevoke;->addTable(Lorg/h2/table/Table;)V

    const-string v1, ","

    .line 4369
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    :goto_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    const-string p1, "TO"

    .line 4374
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "FROM"

    .line 4376
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4378
    :goto_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/command/ddl/GrantRevoke;->setGranteeName(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseHelp()Lorg/h2/command/Prepared;
    .locals 6

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM INFORMATION_SCHEMA.HELP"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 893
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 894
    :goto_0
    iget v3, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 895
    iget-object v3, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 896
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    if-nez v2, :cond_0

    const-string v4, " WHERE "

    .line 898
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v4, " AND "

    .line 900
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    const-string v4, "UPPER(TOPIC) LIKE ?"

    .line 903
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 906
    :cond_1
    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lorg/h2/command/Parser;->prepare(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/h2/command/Prepared;

    move-result-object v0

    return-object v0
.end method

.method private parseIndexColumnList()[Lorg/h2/table/IndexColumn;
    .locals 3

    .line 825
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 827
    :cond_0
    new-instance v1, Lorg/h2/table/IndexColumn;

    invoke-direct {v1}, Lorg/h2/table/IndexColumn;-><init>()V

    .line 828
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    .line 829
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "ASC"

    .line 830
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "DESC"

    .line 832
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 833
    iput v2, v1, Lorg/h2/table/IndexColumn;->sortType:I

    :cond_2
    :goto_0
    const-string v2, "NULLS"

    .line 835
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "FIRST"

    .line 836
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 837
    iget v2, v1, Lorg/h2/table/IndexColumn;->sortType:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lorg/h2/table/IndexColumn;->sortType:I

    goto :goto_1

    :cond_3
    const-string v2, "LAST"

    .line 839
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 840
    iget v2, v1, Lorg/h2/table/IndexColumn;->sortType:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lorg/h2/table/IndexColumn;->sortType:I

    :cond_4
    :goto_1
    const-string v1, ","

    .line 843
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ")"

    .line 844
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/table/IndexColumn;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/table/IndexColumn;

    return-object v0
.end method

.method private parseInsert()Lorg/h2/command/dml/Insert;
    .locals 6

    .line 1050
    new-instance v0, Lorg/h2/command/dml/Insert;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Insert;-><init>(Lorg/h2/engine/Session;)V

    .line 1051
    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    const-string v1, "INTO"

    .line 1052
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1053
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v1

    .line 1054
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Insert;->setTable(Lorg/h2/table/Table;)V

    const-string v2, "("

    .line 1056
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1057
    invoke-direct {p0}, Lorg/h2/command/Parser;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1058
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Insert;->setQuery(Lorg/h2/command/dml/Query;)V

    const-string v1, ")"

    .line 1059
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object v0

    .line 1062
    :cond_0
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumnList(Lorg/h2/table/Table;)[Lorg/h2/table/Column;

    move-result-object v2

    .line 1063
    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Insert;->setColumns([Lorg/h2/table/Column;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const-string v4, "DIRECT"

    .line 1065
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 1066
    invoke-virtual {v0, v5}, Lorg/h2/command/dml/Insert;->setInsertFromSelect(Z)V

    :cond_2
    const-string v4, "SORTED"

    .line 1068
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1069
    invoke-virtual {v0, v5}, Lorg/h2/command/dml/Insert;->setSortedInsertMode(Z)V

    :cond_3
    const-string v4, "DEFAULT"

    .line 1071
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v2, "VALUES"

    .line 1072
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1073
    new-array v2, v2, [Lorg/h2/expression/Expression;

    .line 1074
    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Insert;->addRow([Lorg/h2/expression/Expression;)V

    goto/16 :goto_3

    :cond_4
    const-string v4, "VALUES"

    .line 1075
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v2, "("

    .line 1076
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1078
    :cond_5
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, ")"

    .line 1079
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_6
    const-string v4, "DEFAULT"

    .line 1081
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1082
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1084
    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    :goto_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1088
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/h2/expression/Expression;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Insert;->addRow([Lorg/h2/expression/Expression;)V

    const-string v2, ","

    .line 1090
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "("

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_9
    const-string v3, "SET"

    .line 1091
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v2, :cond_c

    .line 1095
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1096
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1098
    :cond_a
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumn(Lorg/h2/table/Table;)Lorg/h2/table/Column;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "="

    .line 1099
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v4, "DEFAULT"

    .line 1101
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1102
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getDefault()Lorg/h2/expression/ValueExpression;

    move-result-object v4

    goto :goto_2

    .line 1104
    :cond_b
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    .line 1106
    :goto_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, ","

    .line 1107
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1108
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/h2/table/Column;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/h2/table/Column;

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Insert;->setColumns([Lorg/h2/table/Column;)V

    .line 1109
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/h2/expression/Expression;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Insert;->addRow([Lorg/h2/expression/Expression;)V

    goto :goto_3

    .line 1093
    :cond_c
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 1111
    :cond_d
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Insert;->setQuery(Lorg/h2/command/dml/Query;)V

    .line 1113
    :cond_e
    :goto_3
    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->onDuplicateKeyUpdate:Z

    if-eqz v2, :cond_11

    const-string v2, "ON"

    .line 1114
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "DUPLICATE"

    .line 1115
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "KEY"

    .line 1116
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "UPDATE"

    .line 1117
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1119
    :cond_f
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumn(Lorg/h2/table/Table;)Lorg/h2/table/Column;

    move-result-object v2

    const-string v3, "="

    .line 1120
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v3, "DEFAULT"

    .line 1122
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1123
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getDefault()Lorg/h2/expression/ValueExpression;

    move-result-object v3

    goto :goto_4

    .line 1125
    :cond_10
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    .line 1127
    :goto_4
    invoke-virtual {v0, v2, v3}, Lorg/h2/command/dml/Insert;->addAssignmentForDuplicate(Lorg/h2/table/Column;Lorg/h2/expression/Expression;)V

    const-string v2, ","

    .line 1128
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1131
    :cond_11
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/Mode;->isolationLevelInSelectOrInsertStatement:Z

    if-eqz v1, :cond_12

    .line 1132
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIsolationClause()V

    :cond_12
    return-object v0
.end method

.method private parseIsolationClause()V
    .locals 1

    const-string v0, "WITH"

    .line 1866
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "RR"

    .line 1867
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RS"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CS"

    .line 1878
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UR"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "USE"

    .line 1869
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AND"

    .line 1870
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "KEEP"

    .line 1871
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "SHARE"

    .line 1872
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UPDATE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EXCLUSIVE"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :cond_2
    const-string v0, "LOCKS"

    .line 1876
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private parseJoinTableFilter(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;)V
    .locals 5

    .line 1941
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->isJoinOuter()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object p1

    const/4 v0, 0x1

    .line 1942
    invoke-virtual {p2, p1, v0}, Lorg/h2/command/dml/Select;->addTableFilter(Lorg/h2/table/TableFilter;Z)V

    const/4 v2, 0x0

    .line 1945
    :goto_0
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getNestedJoin()Lorg/h2/table/TableFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1947
    new-instance v4, Lorg/h2/command/Parser$2;

    invoke-direct {v4, p0, p2}, Lorg/h2/command/Parser$2;-><init>(Lorg/h2/command/Parser;Lorg/h2/command/dml/Select;)V

    invoke-virtual {v3, v4}, Lorg/h2/table/TableFilter;->visit(Lorg/h2/table/TableFilter$TableFilterVisitor;)V

    .line 1954
    :cond_0
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 1958
    :cond_1
    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->isJoinOuter()Z

    move-result v4

    or-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 1960
    invoke-virtual {p2, v3, v1}, Lorg/h2/command/dml/Select;->addTableFilter(Lorg/h2/table/TableFilter;Z)V

    goto :goto_1

    .line 1963
    :cond_2
    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->getJoinCondition()Lorg/h2/expression/Expression;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1965
    invoke-virtual {p2, v4}, Lorg/h2/command/dml/Select;->addCondition(Lorg/h2/expression/Expression;)V

    .line 1967
    :cond_3
    invoke-virtual {v3}, Lorg/h2/table/TableFilter;->removeJoinCondition()V

    .line 1968
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->removeJoin()V

    .line 1969
    invoke-virtual {p2, v3, v0}, Lorg/h2/command/dml/Select;->addTableFilter(Lorg/h2/table/TableFilter;Z)V

    :goto_1
    move-object p1, v3

    goto :goto_0
.end method

.method private parseMerge()Lorg/h2/command/dml/Merge;
    .locals 3

    .line 1009
    new-instance v0, Lorg/h2/command/dml/Merge;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Merge;-><init>(Lorg/h2/engine/Session;)V

    .line 1010
    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    const-string v1, "INTO"

    .line 1011
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v1

    .line 1013
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Merge;->setTable(Lorg/h2/table/Table;)V

    const-string v2, "("

    .line 1014
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1015
    invoke-direct {p0}, Lorg/h2/command/Parser;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1016
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Merge;->setQuery(Lorg/h2/command/dml/Query;)V

    const-string v1, ")"

    .line 1017
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object v0

    .line 1020
    :cond_0
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumnList(Lorg/h2/table/Table;)[Lorg/h2/table/Column;

    move-result-object v2

    .line 1021
    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Merge;->setColumns([Lorg/h2/table/Column;)V

    :cond_1
    const-string v2, "KEY"

    .line 1023
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "("

    .line 1024
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1025
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumnList(Lorg/h2/table/Table;)[Lorg/h2/table/Column;

    move-result-object v1

    .line 1026
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Merge;->setKeys([Lorg/h2/table/Column;)V

    :cond_2
    const-string v1, "VALUES"

    .line 1028
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1030
    :cond_3
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "("

    .line 1031
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, ")"

    .line 1032
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    const-string v2, "DEFAULT"

    .line 1034
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 1035
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1037
    :cond_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    :goto_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1041
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/h2/expression/Expression;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Merge;->addRow([Lorg/h2/expression/Expression;)V

    const-string v1, ","

    .line 1042
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 1044
    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Merge;->setQuery(Lorg/h2/command/dml/Query;)V

    :goto_1
    return-object v0
.end method

.method private parsePrepare()Lorg/h2/command/Prepared;
    .locals 5

    const-string v0, "COMMIT"

    .line 615
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x4d

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    .line 618
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/TransactionCommand;->setTransactionName(Ljava/lang/String;)V

    return-object v0

    .line 621
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    .line 622
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 623
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 625
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/h2/command/Parser;->parseColumnForTable(Ljava/lang/String;Z)Lorg/h2/table/Column;

    move-result-object v3

    .line 626
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ")"

    .line 627
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, ","

    .line 630
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v1, "AS"

    .line 633
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 634
    invoke-direct {p0}, Lorg/h2/command/Parser;->parsePrepared()Lorg/h2/command/Prepared;

    move-result-object v1

    .line 635
    new-instance v2, Lorg/h2/command/ddl/PrepareProcedure;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v2, v3}, Lorg/h2/command/ddl/PrepareProcedure;-><init>(Lorg/h2/engine/Session;)V

    .line 636
    invoke-virtual {v2, v0}, Lorg/h2/command/ddl/PrepareProcedure;->setProcedureName(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v2, v1}, Lorg/h2/command/ddl/PrepareProcedure;->setPrepared(Lorg/h2/command/Prepared;)V

    return-object v2
.end method

.method private parsePrepared()Lorg/h2/command/Prepared;
    .locals 7

    .line 321
    iget v0, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    .line 323
    iget-object v1, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 324
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 325
    new-instance v1, Lorg/h2/command/dml/NoOperation;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x0

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    sparse-switch v1, :sswitch_data_0

    .line 488
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :sswitch_0
    const-string v1, "PREPARE"

    .line 424
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 425
    invoke-direct {p0}, Lorg/h2/command/Parser;->parsePrepare()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "MERGE"

    .line 418
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 419
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseMerge()Lorg/h2/command/dml/Merge;

    move-result-object v1

    goto/16 :goto_0

    .line 331
    :sswitch_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    .line 333
    iget-object v1, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Parameter;

    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {v1, v4}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    const-string v1, "="

    .line 334
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v1, "CALL"

    .line 335
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCall()Lorg/h2/command/dml/Call;

    move-result-object v1

    goto/16 :goto_0

    .line 485
    :sswitch_3
    new-instance v1, Lorg/h2/command/dml/NoOperation;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v4}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    goto/16 :goto_0

    .line 339
    :sswitch_4
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "WITH"

    .line 480
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 481
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseWith()Lorg/h2/command/dml/Query;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "VALUES"

    .line 474
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 475
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseValues()Lorg/h2/command/dml/Select;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "UPDATE"

    .line 466
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseUpdate()Lorg/h2/command/dml/Update;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    const-string v1, "USE"

    .line 468
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 469
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseUse()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "TRUNCATE"

    .line 460
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 461
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseTruncate()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "SELECT"

    .line 444
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    const-string v1, "SET"

    .line 446
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 447
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSet()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    const-string v1, "SAVEPOINT"

    .line 448
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 449
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSavepoint()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    const-string v1, "SCRIPT"

    .line 450
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 451
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseScript()Lorg/h2/command/dml/ScriptCommand;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    const-string v1, "SHUTDOWN"

    .line 452
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 453
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseShutdown()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const-string v1, "SHOW"

    .line 454
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 455
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseShow()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_5
    const-string v1, "ROLLBACK"

    .line 430
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 431
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseRollback()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const-string v1, "REVOKE"

    .line 432
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x32

    .line 433
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseGrantRevoke(I)Lorg/h2/command/ddl/GrantRevoke;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    const-string v1, "RUNSCRIPT"

    .line 434
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 435
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseRunScript()Lorg/h2/command/dml/RunScriptCommand;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    const-string v1, "RELEASE"

    .line 436
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 437
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseReleaseSavepoint()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    const-string v1, "REPLACE"

    .line 438
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 439
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseReplace()Lorg/h2/command/dml/Replace;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_6
    const-string v1, "INSERT"

    .line 412
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 413
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseInsert()Lorg/h2/command/dml/Insert;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_7
    const-string v1, "HELP"

    .line 406
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 407
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseHelp()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_8
    const-string v1, "GRANT"

    .line 400
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x31

    .line 401
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseGrantRevoke(I)Lorg/h2/command/ddl/GrantRevoke;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_9
    const-string v1, "FROM"

    .line 394
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 395
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_a
    const-string v1, "EXPLAIN"

    .line 386
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 387
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseExplain()Lorg/h2/command/dml/Explain;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    const-string v1, "EXECUTE"

    .line 388
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 389
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseExecute()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_b
    const-string v1, "DELETE"

    .line 373
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 374
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDelete()Lorg/h2/command/dml/Delete;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    const-string v1, "DROP"

    .line 375
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 376
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDrop()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    const-string v1, "DECLARE"

    .line 377
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 379
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreate()Lorg/h2/command/Prepared;

    move-result-object v1

    goto/16 :goto_0

    :cond_e
    const-string v1, "DEALLOCATE"

    .line 380
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 381
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseDeallocate()Lorg/h2/command/ddl/DeallocateProcedure;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_c
    const-string v1, "COMMIT"

    .line 359
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 360
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCommit()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto/16 :goto_0

    :cond_f
    const-string v1, "CREATE"

    .line 361
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 362
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCreate()Lorg/h2/command/Prepared;

    move-result-object v1

    goto :goto_0

    :cond_10
    const-string v1, "CALL"

    .line 363
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 364
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCall()Lorg/h2/command/dml/Call;

    move-result-object v1

    goto :goto_0

    :cond_11
    const-string v1, "CHECKPOINT"

    .line 365
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 366
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseCheckpoint()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto :goto_0

    :cond_12
    const-string v1, "COMMENT"

    .line 367
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 368
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseComment()Lorg/h2/command/Prepared;

    move-result-object v1

    goto :goto_0

    :pswitch_d
    const-string v1, "BACKUP"

    .line 351
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 352
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseBackup()Lorg/h2/command/Prepared;

    move-result-object v1

    goto :goto_0

    :cond_13
    const-string v1, "BEGIN"

    .line 353
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 354
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseBegin()Lorg/h2/command/dml/TransactionCommand;

    move-result-object v1

    goto :goto_0

    :pswitch_e
    const-string v1, "ALTER"

    .line 343
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 344
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAlter()Lorg/h2/command/Prepared;

    move-result-object v1

    goto :goto_0

    :cond_14
    const-string v1, "ANALYZE"

    .line 345
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 346
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAnalyze()Lorg/h2/command/Prepared;

    move-result-object v1

    goto :goto_0

    :cond_15
    move-object v1, v3

    .line 490
    :goto_0
    iget-object v4, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    if-eqz v4, :cond_18

    .line 491
    iget-object v4, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_17

    .line 493
    iget-object v5, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_16

    .line 494
    iget-object v5, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    new-instance v6, Lorg/h2/expression/Parameter;

    invoke-direct {v6, v2}, Lorg/h2/expression/Parameter;-><init>(I)V

    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 497
    :cond_17
    iget-object v2, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    iput-object v2, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    :cond_18
    const-string v2, "{"

    .line 499
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 501
    :cond_19
    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v4

    long-to-int v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1c

    .line 502
    iget-object v4, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1c

    .line 505
    iget-object v4, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    if-eqz v2, :cond_1b

    const-string v4, ":"

    .line 509
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    .line 511
    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v4

    .line 512
    iget-object v5, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    const-string v2, ","

    .line 513
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "}"

    .line 514
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    .line 516
    invoke-virtual {v4}, Lorg/h2/expression/Parameter;->checkSet()V

    goto :goto_2

    .line 518
    :cond_1a
    iget-object v2, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 507
    :cond_1b
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 503
    :cond_1c
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1d
    :goto_3
    if-eqz v1, :cond_1e

    .line 524
    invoke-direct {p0, v1, v3, v0}, Lorg/h2/command/Parser;->setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V

    return-object v1

    .line 522
    :cond_1e
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_4
        0x3b -> :sswitch_3
        0x3f -> :sswitch_2
        0x4d -> :sswitch_1
        0x50 -> :sswitch_0
        0x6d -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseReferences(Lorg/h2/command/ddl/AlterTableAddConstraint;Lorg/h2/schema/Schema;Ljava/lang/String;)V
    .locals 1

    const-string v0, "("

    .line 5879
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5880
    invoke-virtual {p1, p2, p3}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setRefTableName(Lorg/h2/schema/Schema;Ljava/lang/String;)V

    .line 5881
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setRefIndexColumns([Lorg/h2/table/IndexColumn;)V

    goto :goto_0

    .line 5883
    :cond_0
    invoke-virtual {p2}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5884
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setRefTableName(Lorg/h2/schema/Schema;Ljava/lang/String;)V

    const-string p2, "("

    .line 5885
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5886
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseIndexColumnList()[Lorg/h2/table/IndexColumn;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setRefIndexColumns([Lorg/h2/table/IndexColumn;)V

    :cond_1
    :goto_0
    const-string p2, "INDEX"

    .line 5889
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5890
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object p2

    .line 5891
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p3

    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p3, v0, p2}, Lorg/h2/schema/Schema;->findIndex(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/index/Index;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setRefIndex(Lorg/h2/index/Index;)V

    :cond_2
    :goto_1
    const-string p2, "ON"

    .line 5893
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "DELETE"

    .line 5894
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5895
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAction()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setDeleteAction(I)V

    goto :goto_1

    :cond_3
    const-string p2, "UPDATE"

    .line 5897
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5898
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseAction()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/command/ddl/AlterTableAddConstraint;->setUpdateAction(I)V

    goto :goto_1

    :cond_4
    const-string p1, "NOT"

    .line 5901
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "DEFERRABLE"

    .line 5902
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "DEFERRABLE"

    .line 5904
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :goto_2
    return-void
.end method

.method private parseReleaseSavepoint()Lorg/h2/command/Prepared;
    .locals 2

    .line 649
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "SAVEPOINT"

    .line 650
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 651
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    return-object v0
.end method

.method private parseReplace()Lorg/h2/command/dml/Replace;
    .locals 3

    .line 1141
    new-instance v0, Lorg/h2/command/dml/Replace;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Replace;-><init>(Lorg/h2/engine/Session;)V

    .line 1142
    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    const-string v1, "INTO"

    .line 1143
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1144
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v1

    .line 1145
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Replace;->setTable(Lorg/h2/table/Table;)V

    const-string v2, "("

    .line 1146
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1147
    invoke-direct {p0}, Lorg/h2/command/Parser;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Replace;->setQuery(Lorg/h2/command/dml/Query;)V

    const-string v1, ")"

    .line 1149
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object v0

    .line 1152
    :cond_0
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseColumnList(Lorg/h2/table/Table;)[Lorg/h2/table/Column;

    move-result-object v1

    .line 1153
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Replace;->setColumns([Lorg/h2/table/Column;)V

    :cond_1
    const-string v1, "VALUES"

    .line 1155
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1157
    :cond_2
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "("

    .line 1158
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, ")"

    .line 1159
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    const-string v2, "DEFAULT"

    .line 1161
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 1162
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1164
    :cond_4
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    :goto_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfMore()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1168
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/h2/expression/Expression;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Replace;->addRow([Lorg/h2/expression/Expression;)V

    const-string v1, ","

    .line 1169
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1171
    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Replace;->setQuery(Lorg/h2/command/dml/Query;)V

    :goto_1
    return-object v0
.end method

.method private parseRollback()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    const-string v0, "TRANSACTION"

    .line 595
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x4f

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    .line 598
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/TransactionCommand;->setTransactionName(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "TO"

    .line 601
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SAVEPOINT"

    .line 602
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 603
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    .line 605
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/TransactionCommand;->setSavepointName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "WORK"

    .line 607
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 608
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x48

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    :goto_0
    return-object v0
.end method

.method private parseRunScript()Lorg/h2/command/dml/RunScriptCommand;
    .locals 2

    .line 5287
    new-instance v0, Lorg/h2/command/dml/RunScriptCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "FROM"

    .line 5288
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5289
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;->setFileNameExpr(Lorg/h2/expression/Expression;)V

    const-string v1, "COMPRESSION"

    .line 5290
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5291
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;->setCompressionAlgorithm(Ljava/lang/String;)V

    :cond_0
    const-string v1, "CIPHER"

    .line 5293
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5294
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;->setCipher(Ljava/lang/String;)V

    const-string v1, "PASSWORD"

    .line 5295
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5296
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;->setPassword(Lorg/h2/expression/Expression;)V

    :cond_1
    const-string v1, "CHARSET"

    .line 5299
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5300
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/RunScriptCommand;->setCharset(Ljava/nio/charset/Charset;)V

    :cond_2
    return-object v0
.end method

.method private parseSavepoint()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    .line 642
    new-instance v0, Lorg/h2/command/dml/TransactionCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x4a

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    .line 644
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/TransactionCommand;->setSavepointName(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseScript()Lorg/h2/command/dml/ScriptCommand;
    .locals 8

    .line 5306
    new-instance v0, Lorg/h2/command/dml/ScriptCommand;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/ScriptCommand;-><init>(Lorg/h2/engine/Session;)V

    const-string v1, "SIMPLE"

    .line 5309
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "NODATA"

    .line 5312
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "NOPASSWORDS"

    .line 5315
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "NOSETTINGS"

    .line 5318
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const-string v5, "DROP"

    .line 5321
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "BLOCKSIZE"

    .line 5324
    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5325
    invoke-direct {p0}, Lorg/h2/command/Parser;->readLong()J

    move-result-wide v6

    .line 5326
    invoke-virtual {v0, v6, v7}, Lorg/h2/command/dml/ScriptCommand;->setLobBlockSize(J)V

    .line 5328
    :cond_0
    invoke-virtual {v0, v2}, Lorg/h2/command/dml/ScriptCommand;->setData(Z)V

    .line 5329
    invoke-virtual {v0, v3}, Lorg/h2/command/dml/ScriptCommand;->setPasswords(Z)V

    .line 5330
    invoke-virtual {v0, v4}, Lorg/h2/command/dml/ScriptCommand;->setSettings(Z)V

    .line 5331
    invoke-virtual {v0, v5}, Lorg/h2/command/dml/ScriptCommand;->setDrop(Z)V

    .line 5332
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setSimple(Z)V

    const-string v1, "TO"

    .line 5333
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5334
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setFileNameExpr(Lorg/h2/expression/Expression;)V

    const-string v1, "COMPRESSION"

    .line 5335
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5336
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setCompressionAlgorithm(Ljava/lang/String;)V

    :cond_1
    const-string v1, "CIPHER"

    .line 5338
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5339
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setCipher(Ljava/lang/String;)V

    const-string v1, "PASSWORD"

    .line 5340
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5341
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setPassword(Lorg/h2/expression/Expression;)V

    :cond_2
    const-string v1, "CHARSET"

    .line 5344
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5345
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setCharset(Ljava/nio/charset/Charset;)V

    :cond_3
    const-string v1, "SCHEMA"

    .line 5348
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5349
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 5351
    :cond_4
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, ","

    .line 5352
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5353
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setSchemaNames(Ljava/util/Set;)V

    goto :goto_0

    :cond_5
    const-string v1, "TABLE"

    .line 5354
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5355
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 5357
    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, ","

    .line 5358
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 5359
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/ScriptCommand;->setTables(Ljava/util/Collection;)V

    :cond_7
    :goto_0
    return-object v0
.end method

.method private parseSelect()Lorg/h2/command/dml/Query;
    .locals 5

    .line 1698
    iget-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1699
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectUnion()Lorg/h2/command/dml/Query;

    move-result-object v1

    .line 1700
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1701
    iget-object v3, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_0

    .line 1702
    iget-object v4, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1704
    :cond_0
    invoke-virtual {v1, v2}, Lorg/h2/command/dml/Query;->setParameterList(Ljava/util/ArrayList;)V

    .line 1705
    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->init()V

    return-object v1
.end method

.method private parseSelectSimple()Lorg/h2/command/dml/Select;
    .locals 13

    const-string v0, "SELECT"

    .line 2018
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "FROM"

    .line 2020
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 2025
    :goto_0
    new-instance v3, Lorg/h2/command/dml/Select;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v3, v4}, Lorg/h2/command/dml/Select;-><init>(Lorg/h2/engine/Session;)V

    .line 2026
    iget v4, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    .line 2027
    iget-object v5, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    .line 2028
    iput-object v3, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    .line 2029
    iput-object v3, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    if-eqz v0, :cond_1

    .line 2031
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->parseSelectSimpleFromPart(Lorg/h2/command/dml/Select;)V

    const-string v0, "SELECT"

    .line 2032
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2033
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->parseSelectSimpleSelectPart(Lorg/h2/command/dml/Select;)V

    goto :goto_1

    .line 2035
    :cond_1
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->parseSelectSimpleSelectPart(Lorg/h2/command/dml/Select;)V

    const-string v0, "FROM"

    .line 2036
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2039
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->getDualTable(Z)Lorg/h2/table/Table;

    move-result-object v8

    .line 2040
    new-instance v0, Lorg/h2/table/TableFilter;

    iget-object v7, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v9, 0x0

    iget-boolean v10, p0, Lorg/h2/command/Parser;->rightsChecked:Z

    iget-object v11, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const/4 v12, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;I)V

    .line 2042
    invoke-virtual {v3, v0, v1}, Lorg/h2/command/dml/Select;->addTableFilter(Lorg/h2/table/TableFilter;Z)V

    goto :goto_1

    .line 2044
    :cond_2
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->parseSelectSimpleFromPart(Lorg/h2/command/dml/Select;)V

    :goto_1
    const-string v0, "WHERE"

    .line 2047
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2048
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    .line 2049
    invoke-virtual {v3, v0}, Lorg/h2/command/dml/Select;->addCondition(Lorg/h2/expression/Expression;)V

    .line 2053
    :cond_3
    iput-object v5, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const-string v0, "GROUP"

    .line 2054
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "BY"

    .line 2055
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {v3}, Lorg/h2/command/dml/Select;->setGroupQuery()V

    .line 2057
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2059
    :cond_4
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    .line 2060
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    .line 2061
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2062
    invoke-virtual {v3, v0}, Lorg/h2/command/dml/Select;->setGroupBy(Ljava/util/ArrayList;)V

    .line 2064
    :cond_5
    iput-object v3, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const-string v0, "HAVING"

    .line 2065
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2066
    invoke-virtual {v3}, Lorg/h2/command/dml/Select;->setGroupQuery()V

    .line 2067
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    .line 2068
    invoke-virtual {v3, v0}, Lorg/h2/command/dml/Select;->setHaving(Lorg/h2/expression/Expression;)V

    .line 2070
    :cond_6
    iget-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Lorg/h2/command/dml/Select;->setParameterList(Ljava/util/ArrayList;)V

    .line 2071
    iput-object v5, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const-string v0, "SELECT"

    .line 2072
    invoke-direct {p0, v3, v0, v4}, Lorg/h2/command/Parser;->setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V

    return-object v3

    .line 2023
    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseSelectSimpleFromPart(Lorg/h2/command/dml/Select;)V
    .locals 1

    :cond_0
    const/4 v0, 0x0

    .line 1896
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v0

    .line 1897
    invoke-direct {p0, v0, p1}, Lorg/h2/command/Parser;->parseJoinTableFilter(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;)V

    const-string v0, ","

    .line 1898
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1902
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->isForceJoinOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1903
    invoke-virtual {p1}, Lorg/h2/command/dml/Select;->getTopFilters()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/command/Parser;->sortTableFilters(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private parseSelectSimpleSelectPart(Lorg/h2/command/dml/Select;)V
    .locals 6

    .line 1976
    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const/4 v1, 0x0

    .line 1978
    iput-object v1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const-string v2, "TOP"

    .line 1979
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1984
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    .line 1985
    invoke-virtual {p1, v2}, Lorg/h2/command/dml/Select;->setLimit(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_0
    const-string v2, "LIMIT"

    .line 1986
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1987
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    .line 1988
    invoke-virtual {p1, v2}, Lorg/h2/command/dml/Select;->setOffset(Lorg/h2/expression/Expression;)V

    .line 1989
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    .line 1990
    invoke-virtual {p1, v2}, Lorg/h2/command/dml/Select;->setLimit(Lorg/h2/expression/Expression;)V

    .line 1992
    :cond_1
    :goto_0
    iput-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const-string v0, "DISTINCT"

    .line 1993
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1994
    invoke-virtual {p1, v0}, Lorg/h2/command/dml/Select;->setDistinct(Z)V

    goto :goto_1

    :cond_2
    const-string v0, "ALL"

    .line 1996
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 1998
    :goto_1
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_3
    const-string v2, "*"

    .line 2000
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2001
    new-instance v2, Lorg/h2/expression/Wildcard;

    invoke-direct {v2, v1, v1}, Lorg/h2/expression/Wildcard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2003
    :cond_4
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    const-string v3, "AS"

    .line 2004
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 2005
    :cond_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 2006
    iget-object v4, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v4

    iget-boolean v4, v4, Lorg/h2/engine/DbSettings;->aliasColumnName:Z

    .line 2007
    iget-object v5, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v5}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v5

    iget-boolean v5, v5, Lorg/h2/engine/Mode;->aliasColumnName:Z

    or-int/2addr v4, v5

    .line 2008
    new-instance v5, Lorg/h2/expression/Alias;

    invoke-direct {v5, v2, v3, v4}, Lorg/h2/expression/Alias;-><init>(Lorg/h2/expression/Expression;Ljava/lang/String;Z)V

    move-object v2, v5

    .line 2010
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const-string v2, ","

    .line 2012
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2013
    invoke-virtual {p1, v0}, Lorg/h2/command/dml/Select;->setExpressions(Ljava/util/ArrayList;)V

    return-void
.end method

.method private parseSelectSub()Lorg/h2/command/dml/Query;
    .locals 2

    const-string v0, "("

    .line 1885
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1886
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectUnion()Lorg/h2/command/dml/Query;

    move-result-object v0

    const-string v1, ")"

    .line 1887
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object v0

    .line 1890
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectSimple()Lorg/h2/command/dml/Select;

    move-result-object v0

    return-object v0
.end method

.method private parseSelectUnion()Lorg/h2/command/dml/Query;
    .locals 3

    .line 1710
    iget v0, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    .line 1711
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectSub()Lorg/h2/command/dml/Query;

    move-result-object v1

    const/4 v2, 0x0

    .line 1712
    invoke-direct {p0, v1, v0, v2}, Lorg/h2/command/Parser;->parseSelectUnionExtension(Lorg/h2/command/dml/Query;IZ)Lorg/h2/command/dml/Query;

    move-result-object v0

    return-object v0
.end method

.method private parseSelectUnionExtension(Lorg/h2/command/dml/Query;IZ)Lorg/h2/command/dml/Query;
    .locals 2

    :goto_0
    const-string v0, "UNION"

    .line 1718
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1719
    new-instance v0, Lorg/h2/command/dml/SelectUnion;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1, p1}, Lorg/h2/command/dml/SelectUnion;-><init>(Lorg/h2/engine/Session;Lorg/h2/command/dml/Query;)V

    const-string p1, "ALL"

    .line 1720
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1721
    invoke-virtual {v0, p1}, Lorg/h2/command/dml/SelectUnion;->setUnionType(I)V

    goto :goto_1

    :cond_0
    const-string p1, "DISTINCT"

    .line 1723
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 1724
    invoke-virtual {v0, p1}, Lorg/h2/command/dml/SelectUnion;->setUnionType(I)V

    .line 1726
    :goto_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectSub()Lorg/h2/command/dml/Query;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/SelectUnion;->setRight(Lorg/h2/command/dml/Query;)V

    goto :goto_3

    :cond_1
    const-string v0, "MINUS"

    .line 1728
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "EXCEPT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "INTERSECT"

    .line 1733
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1734
    new-instance v0, Lorg/h2/command/dml/SelectUnion;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1, p1}, Lorg/h2/command/dml/SelectUnion;-><init>(Lorg/h2/engine/Session;Lorg/h2/command/dml/Query;)V

    const/4 p1, 0x3

    .line 1735
    invoke-virtual {v0, p1}, Lorg/h2/command/dml/SelectUnion;->setUnionType(I)V

    .line 1736
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectSub()Lorg/h2/command/dml/Query;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/SelectUnion;->setRight(Lorg/h2/command/dml/Query;)V

    goto :goto_3

    :cond_3
    if-nez p3, :cond_4

    .line 1743
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->parseEndOfQuery(Lorg/h2/command/dml/Query;)V

    :cond_4
    const/4 p3, 0x0

    .line 1745
    invoke-direct {p0, p1, p3, p2}, Lorg/h2/command/Parser;->setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V

    return-object p1

    .line 1729
    :cond_5
    :goto_2
    new-instance v0, Lorg/h2/command/dml/SelectUnion;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1, p1}, Lorg/h2/command/dml/SelectUnion;-><init>(Lorg/h2/engine/Session;Lorg/h2/command/dml/Query;)V

    const/4 p1, 0x2

    .line 1730
    invoke-virtual {v0, p1}, Lorg/h2/command/dml/SelectUnion;->setUnionType(I)V

    .line 1731
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectSub()Lorg/h2/command/dml/Query;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/SelectUnion;->setRight(Lorg/h2/command/dml/Query;)V

    :goto_3
    move-object p1, v0

    goto :goto_0
.end method

.method private parseSet()Lorg/h2/command/Prepared;
    .locals 6

    const-string v0, "@"

    .line 5012
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5013
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5014
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    .line 5015
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5016
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setExpression(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_0
    const-string v0, "AUTOCOMMIT"

    .line 5018
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5019
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5020
    invoke-direct {p0}, Lorg/h2/command/Parser;->readBooleanSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x45

    goto :goto_0

    :cond_1
    const/16 v0, 0x46

    .line 5023
    :goto_0
    new-instance v1, Lorg/h2/command/dml/TransactionCommand;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, v0}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    return-object v1

    :cond_2
    const-string v0, "MVCC"

    .line 5024
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5025
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5026
    invoke-direct {p0}, Lorg/h2/command/Parser;->readBooleanSetting()Z

    move-result v0

    .line 5027
    new-instance v1, Lorg/h2/command/dml/Set;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v3, 0x1f

    invoke-direct {v1, v2, v3}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5028
    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Set;->setInt(I)V

    return-object v1

    :cond_3
    const-string v0, "EXCLUSIVE"

    .line 5030
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5031
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5032
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5033
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setExpression(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_4
    const-string v0, "IGNORECASE"

    .line 5035
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 5036
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5037
    invoke-direct {p0}, Lorg/h2/command/Parser;->readBooleanSetting()Z

    move-result v0

    .line 5038
    new-instance v2, Lorg/h2/command/dml/Set;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v2, v3, v1}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5039
    invoke-virtual {v2, v0}, Lorg/h2/command/dml/Set;->setInt(I)V

    return-object v2

    :cond_5
    const-string v0, "PASSWORD"

    .line 5041
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x13

    if-eqz v0, :cond_6

    .line 5042
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5043
    new-instance v0, Lorg/h2/command/ddl/AlterUser;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/AlterUser;-><init>(Lorg/h2/engine/Session;)V

    .line 5044
    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterUser;->setType(I)V

    .line 5045
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterUser;->setUser(Lorg/h2/engine/User;)V

    .line 5046
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterUser;->setPassword(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_6
    const-string v0, "SALT"

    .line 5048
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5049
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5050
    new-instance v0, Lorg/h2/command/ddl/AlterUser;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/ddl/AlterUser;-><init>(Lorg/h2/engine/Session;)V

    .line 5051
    invoke-virtual {v0, v2}, Lorg/h2/command/ddl/AlterUser;->setType(I)V

    .line 5052
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterUser;->setUser(Lorg/h2/engine/User;)V

    .line 5053
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterUser;->setSalt(Lorg/h2/expression/Expression;)V

    const-string v1, "HASH"

    .line 5054
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5055
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/ddl/AlterUser;->setHash(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_7
    const-string v0, "MODE"

    .line 5057
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5058
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5059
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5060
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0

    :cond_8
    const-string v0, "COMPRESS_LOB"

    .line 5062
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5063
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5064
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5065
    iget v1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    .line 5066
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 5068
    :cond_9
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_a
    const-string v0, "DATABASE"

    .line 5071
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5072
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    const-string v0, "COLLATION"

    .line 5073
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 5074
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSetCollation()Lorg/h2/command/dml/Set;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "COLLATION"

    .line 5075
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5076
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5077
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSetCollation()Lorg/h2/command/dml/Set;

    move-result-object v0

    return-object v0

    :cond_c
    const-string v0, "BINARY_COLLATION"

    .line 5078
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5079
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5080
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSetBinaryCollation()Lorg/h2/command/dml/Set;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v0, "CLUSTER"

    .line 5081
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5082
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5083
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5084
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0

    :cond_e
    const-string v0, "DATABASE_EVENT_LISTENER"

    .line 5086
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5087
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5088
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5089
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0

    :cond_f
    const-string v0, "ALLOW_LITERALS"

    .line 5091
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    .line 5092
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5093
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v5, 0x18

    invoke-direct {v0, v4, v5}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    const-string v4, "NONE"

    .line 5094
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5095
    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_2

    :cond_10
    const-string v3, "ALL"

    .line 5096
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 5097
    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_2

    :cond_11
    const-string v2, "NUMBERS"

    .line 5098
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5099
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_2

    .line 5101
    :cond_12
    invoke-direct {p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    :goto_2
    return-object v0

    :cond_13
    const-string v0, "DEFAULT_TABLE_TYPE"

    .line 5104
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5105
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5106
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v4, 0x7

    invoke-direct {v0, v2, v4}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    const-string v2, "MEMORY"

    .line 5107
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5108
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_3

    :cond_14
    const-string v1, "CACHED"

    .line 5109
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5110
    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_3

    .line 5112
    :cond_15
    invoke-direct {p0}, Lorg/h2/command/Parser;->readPositiveInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    :goto_3
    return-object v0

    :cond_16
    const-string v0, "CREATE"

    .line 5115
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5116
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5118
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5119
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_17
    const-string v0, "HSQLDB.DEFAULT_TABLE_TYPE"

    .line 5120
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5121
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5122
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5123
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_18
    const-string v0, "PAGE_STORE"

    .line 5124
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5125
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5126
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5127
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_19
    const-string v0, "CACHE_TYPE"

    .line 5128
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5129
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5130
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5131
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1a
    const-string v0, "FILE_LOCK"

    .line 5132
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5133
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5134
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5135
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1b
    const-string v0, "DB_CLOSE_ON_EXIT"

    .line 5136
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5137
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5138
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5139
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1c
    const-string v0, "AUTO_SERVER"

    .line 5140
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5141
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5142
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5143
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1d
    const-string v0, "AUTO_SERVER_PORT"

    .line 5144
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5145
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5146
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5147
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1e
    const-string v0, "AUTO_RECONNECT"

    .line 5148
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5149
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5150
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5151
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_1f
    const-string v0, "ASSERT"

    .line 5152
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5153
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5154
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5155
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_20
    const-string v0, "ACCESS_MODE_DATA"

    .line 5156
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5157
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5158
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5159
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_21
    const-string v0, "OPEN_NEW"

    .line 5160
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5161
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5162
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5163
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_22
    const-string v0, "JMX"

    .line 5164
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5165
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5166
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5167
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_23
    const-string v0, "PAGE_SIZE"

    .line 5168
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 5169
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5170
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5171
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_24
    const-string v0, "RECOVER"

    .line 5172
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 5173
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5174
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5175
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_25
    const-string v0, "NAMES"

    .line 5176
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5178
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5179
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5180
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_26
    const-string v0, "SCHEMA"

    .line 5181
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5182
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5183
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5184
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0

    :cond_27
    const-string v0, "DATESTYLE"

    .line 5186
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5188
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    const-string v0, "ISO"

    .line 5189
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 5190
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO"

    .line 5191
    invoke-direct {p0, v0, v1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_4

    .line 5192
    :cond_28
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 5195
    :cond_29
    :goto_4
    new-instance v0, Lorg/h2/command/dml/NoOperation;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/NoOperation;-><init>(Lorg/h2/engine/Session;)V

    return-object v0

    :cond_2a
    const-string v0, "SEARCH_PATH"

    .line 5196
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1c

    if-nez v0, :cond_30

    invoke-static {v1}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_5

    :cond_2b
    const-string v0, "JAVA_OBJECT_SERIALIZER"

    .line 5209
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 5210
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5211
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSetJavaObjectSerializer()Lorg/h2/command/dml/Set;

    move-result-object v0

    return-object v0

    :cond_2c
    const-string v0, "LOGSIZE"

    .line 5213
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 5215
    invoke-static {v2}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    :cond_2d
    const-string v0, "FOREIGN_KEY_CHECKS"

    .line 5217
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x1e

    .line 5219
    invoke-static {v0}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 5222
    :cond_2e
    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/command/dml/SetTypes;->getType(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2f

    .line 5226
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 5227
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5228
    new-instance v1, Lorg/h2/command/dml/Set;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, v0}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5229
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Set;->setExpression(Lorg/h2/expression/Expression;)V

    return-object v1

    .line 5224
    :cond_2f
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 5198
    :cond_30
    :goto_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5199
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v2, v1}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5200
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 5201
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    const-string v2, ","

    .line 5202
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 5203
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 5205
    :cond_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 5206
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5207
    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Set;->setStringArray([Ljava/lang/String;)V

    return-object v0
.end method

.method private parseSetBinaryCollation()Lorg/h2/command/dml/Set;
    .locals 3

    .line 5269
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5270
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 5271
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    const-string v2, "UNSIGNED"

    .line 5272
    invoke-direct {p0, v1, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SIGNED"

    invoke-direct {p0, v1, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BINARY_COLLATION"

    .line 5276
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private parseSetCollation()Lorg/h2/command/dml/Set;
    .locals 3

    .line 5242
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5243
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 5244
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    const-string v2, "OFF"

    .line 5245
    invoke-direct {p0, v1, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 5248
    :cond_0
    invoke-static {v1}, Lorg/h2/value/CompareMode;->getCollator(Ljava/lang/String;)Ljava/text/Collator;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v1, "STRENGTH"

    .line 5252
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "PRIMARY"

    .line 5253
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5254
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_0

    :cond_1
    const-string v1, "SECONDARY"

    .line 5255
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 5256
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_0

    :cond_2
    const-string v1, "TERTIARY"

    .line 5257
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 5258
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_0

    :cond_3
    const-string v1, "IDENTICAL"

    .line 5259
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    .line 5260
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    goto :goto_0

    .line 5263
    :cond_4
    invoke-virtual {v2}, Ljava/text/Collator;->getStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setInt(I)V

    :cond_5
    :goto_0
    return-object v0

    :cond_6
    const-string v0, "collation"

    .line 5250
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private parseSetJavaObjectSerializer()Lorg/h2/command/dml/Set;
    .locals 3

    .line 5280
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5281
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5282
    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseShow()Lorg/h2/command/Prepared;
    .locals 5

    .line 910
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "CLIENT_ENCODING"

    .line 912
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\'UNICODE\' AS CLIENT_ENCODING FROM DUAL"

    .line 914
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    const-string v2, "DEFAULT_TRANSACTION_ISOLATION"

    .line 915
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\'read committed\' AS DEFAULT_TRANSACTION_ISOLATION FROM DUAL"

    .line 917
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    const-string v2, "TRANSACTION"

    .line 919
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ISOLATION"

    .line 921
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "LEVEL"

    .line 922
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v2, "\'read committed\' AS TRANSACTION_ISOLATION FROM DUAL"

    .line 923
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    const-string v2, "DATESTYLE"

    .line 925
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\'ISO\' AS DATESTYLE FROM DUAL"

    .line 927
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    const-string v2, "SERVER_VERSION"

    .line 928
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\'8.1.4\' AS SERVER_VERSION FROM DUAL"

    .line 930
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    const-string v2, "SERVER_ENCODING"

    .line 931
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "\'UTF8\' AS SERVER_ENCODING FROM DUAL"

    .line 933
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v2, "TABLES"

    .line 934
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "PUBLIC"

    const-string v3, "FROM"

    .line 937
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 938
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    :cond_6
    const-string v3, "TABLE_NAME, TABLE_SCHEMA FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA=? ORDER BY TABLE_NAME"

    .line 940
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-static {v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v2, "COLUMNS"

    .line 944
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "FROM"

    .line 946
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 947
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v2

    .line 948
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v3

    .line 949
    invoke-static {v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "FROM"

    .line 950
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 951
    invoke-direct {p0}, Lorg/h2/command/Parser;->readUniqueIdentifier()Ljava/lang/String;

    move-result-object v3

    :cond_8
    const-string v2, "C.COLUMN_NAME FIELD, C.TYPE_NAME || \'(\' || C.NUMERIC_PRECISION || \')\' TYPE, C.IS_NULLABLE \"NULL\", CASE (SELECT MAX(I.INDEX_TYPE_NAME) FROM INFORMATION_SCHEMA.INDEXES I WHERE I.TABLE_SCHEMA=C.TABLE_SCHEMA AND I.TABLE_NAME=C.TABLE_NAME AND I.COLUMN_NAME=C.COLUMN_NAME)WHEN \'PRIMARY KEY\' THEN \'PRI\' WHEN \'UNIQUE INDEX\' THEN \'UNI\' ELSE \'\' END KEY, IFNULL(COLUMN_DEFAULT, \'NULL\') DEFAULT FROM INFORMATION_SCHEMA.COLUMNS C WHERE C.TABLE_NAME=? AND C.TABLE_SCHEMA=? ORDER BY C.ORDINAL_POSITION"

    .line 953
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-static {v3}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    const-string v2, "DATABASES"

    .line 968
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SCHEMAS"

    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string v2, "SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA"

    .line 970
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    :cond_b
    :goto_0
    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getAllowLiterals()Z

    move-result v2

    .line 976
    :try_start_0
    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/h2/engine/Session;->setAllowLiterals(Z)V

    .line 977
    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lorg/h2/command/Parser;->prepare(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/h2/command/Prepared;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->setAllowLiterals(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->setAllowLiterals(Z)V

    throw v0
.end method

.method private parseShutdown()Lorg/h2/command/dml/TransactionCommand;
    .locals 3

    const-string v0, "IMMEDIATELY"

    .line 581
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x51

    goto :goto_0

    :cond_0
    const-string v0, "COMPACT"

    .line 583
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x52

    goto :goto_0

    :cond_1
    const-string v0, "DEFRAG"

    .line 585
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x54

    goto :goto_0

    :cond_2
    const-string v0, "SCRIPT"

    .line 588
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const/16 v0, 0x50

    .line 590
    :goto_0
    new-instance v1, Lorg/h2/command/dml/TransactionCommand;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2, v0}, Lorg/h2/command/dml/TransactionCommand;-><init>(Lorg/h2/engine/Session;I)V

    return-object v1
.end method

.method private parseSimpleOrderList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;"
        }
    .end annotation

    .line 2393
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2395
    :cond_0
    new-instance v1, Lorg/h2/command/dml/SelectOrderBy;

    invoke-direct {v1}, Lorg/h2/command/dml/SelectOrderBy;-><init>()V

    .line 2396
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    .line 2397
    iput-object v2, v1, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    const-string v2, "DESC"

    .line 2398
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 2399
    iput-boolean v2, v1, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    goto :goto_0

    :cond_1
    const-string v2, "ASC"

    .line 2401
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 2403
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    .line 2404
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method private parseTruncate()Lorg/h2/command/Prepared;
    .locals 3

    const-string v0, "TABLE"

    .line 1279
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1280
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v0

    .line 1281
    new-instance v1, Lorg/h2/command/ddl/TruncateTable;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v2}, Lorg/h2/command/ddl/TruncateTable;-><init>(Lorg/h2/engine/Session;)V

    .line 1282
    invoke-virtual {v1, v0}, Lorg/h2/command/ddl/TruncateTable;->setTable(Lorg/h2/table/Table;)V

    return-object v1
.end method

.method private parseUpdate()Lorg/h2/command/dml/Update;
    .locals 11

    .line 727
    new-instance v0, Lorg/h2/command/dml/Update;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Update;-><init>(Lorg/h2/engine/Session;)V

    .line 728
    iput-object v0, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    .line 729
    iget v1, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    const/4 v2, 0x0

    .line 730
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readSimpleTableFilter(I)Lorg/h2/table/TableFilter;

    move-result-object v3

    .line 731
    invoke-virtual {v0, v3}, Lorg/h2/command/dml/Update;->setTableFilter(Lorg/h2/table/TableFilter;)V

    const-string v4, "SET"

    .line 732
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v4, "("

    .line 733
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 734
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 736
    :cond_0
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readTableColumn(Lorg/h2/table/TableFilter;)Lorg/h2/table/Column;

    move-result-object v5

    .line 737
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, ","

    .line 738
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v3, ")"

    .line 739
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v3, "="

    .line 740
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 741
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    .line 742
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 744
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Column;

    invoke-virtual {v0, v2, v3}, Lorg/h2/command/dml/Update;->setAssignment(Lorg/h2/table/Column;Lorg/h2/expression/Expression;)V

    goto :goto_2

    .line 746
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_4

    .line 747
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/table/Column;

    .line 748
    iget-object v9, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v10, "ARRAY_GET"

    invoke-static {v9, v10}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v9

    .line 749
    invoke-virtual {v9, v2, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    add-int/lit8 v7, v7, 0x1

    .line 750
    invoke-static {v7}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v10

    invoke-static {v10}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 751
    invoke-virtual {v9}, Lorg/h2/expression/Function;->doneWithParameters()V

    .line 752
    invoke-virtual {v0, v8, v9}, Lorg/h2/command/dml/Update;->setAssignment(Lorg/h2/table/Column;Lorg/h2/expression/Expression;)V

    goto :goto_0

    .line 757
    :cond_2
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readTableColumn(Lorg/h2/table/TableFilter;)Lorg/h2/table/Column;

    move-result-object v2

    const-string v4, "="

    .line 758
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v4, "DEFAULT"

    .line 760
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 761
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getDefault()Lorg/h2/expression/ValueExpression;

    move-result-object v4

    goto :goto_1

    .line 763
    :cond_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    .line 765
    :goto_1
    invoke-virtual {v0, v2, v4}, Lorg/h2/command/dml/Update;->setAssignment(Lorg/h2/table/Column;Lorg/h2/expression/Expression;)V

    const-string v2, ","

    .line 766
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    :goto_2
    const-string v2, "WHERE"

    .line 768
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 769
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    .line 770
    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Update;->setCondition(Lorg/h2/expression/Expression;)V

    :cond_5
    const-string v2, "ORDER"

    .line 772
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "BY"

    .line 775
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 776
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSimpleOrderList()Ljava/util/ArrayList;

    :cond_6
    const-string v2, "LIMIT"

    .line 778
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 779
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    .line 780
    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Update;->setLimit(Lorg/h2/expression/Expression;)V

    :cond_7
    const-string v2, "UPDATE"

    .line 782
    invoke-direct {p0, v0, v2, v1}, Lorg/h2/command/Parser;->setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V

    return-object v0
.end method

.method private parseUse()Lorg/h2/command/Prepared;
    .locals 3

    .line 5235
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIfEqualOrTo()V

    .line 5236
    new-instance v0, Lorg/h2/command/dml/Set;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/h2/command/dml/Set;-><init>(Lorg/h2/engine/Session;I)V

    .line 5237
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Set;->setString(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseValues()Lorg/h2/command/dml/Select;
    .locals 5

    .line 4383
    new-instance v0, Lorg/h2/command/dml/Select;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v1}, Lorg/h2/command/dml/Select;-><init>(Lorg/h2/engine/Session;)V

    .line 4384
    iput-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    const/4 v1, 0x0

    .line 4385
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->parseValuesTable(I)Lorg/h2/table/TableFilter;

    move-result-object v1

    .line 4386
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4387
    new-instance v3, Lorg/h2/expression/Wildcard;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lorg/h2/expression/Wildcard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4388
    invoke-virtual {v0, v2}, Lorg/h2/command/dml/Select;->setExpressions(Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    .line 4389
    invoke-virtual {v0, v1, v2}, Lorg/h2/command/dml/Select;->addTableFilter(Lorg/h2/table/TableFilter;Z)V

    .line 4390
    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->init()V

    return-object v0
.end method

.method private parseValuesTable(I)Lorg/h2/table/TableFilter;
    .locals 26

    move-object/from16 v0, p0

    .line 4395
    iget-object v1, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v2, "PUBLIC"

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v1

    .line 4396
    iget-object v2, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v3, "TABLE"

    invoke-static {v2, v3}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/TableFunction;

    .line 4398
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 4399
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 4402
    :goto_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "("

    .line 4403
    invoke-direct {v0, v6}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x0

    .line 4405
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v9

    .line 4406
    iget-object v10, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v9, v10}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v9

    .line 4407
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getType()I

    move-result v10

    .line 4411
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4412
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, -0x1

    if-nez v13, :cond_1

    if-ne v10, v15, :cond_0

    const/16 v10, 0xd

    .line 4416
    :cond_0
    invoke-static {v10}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v13

    move/from16 v20, v8

    .line 4417
    iget-wide v7, v13, Lorg/h2/value/DataType;->defaultPrecision:J

    .line 4418
    iget v14, v13, Lorg/h2/value/DataType;->defaultScale:I

    .line 4419
    iget v13, v13, Lorg/h2/value/DataType;->defaultDisplaySize:I

    move/from16 v21, v12

    .line 4420
    new-instance v12, Lorg/h2/table/Column;

    move/from16 v19, v13

    move-object v13, v12

    move/from16 v18, v14

    move-object v14, v11

    move-object/from16 v22, v1

    const/4 v1, -0x1

    move v15, v10

    move-wide/from16 v16, v7

    invoke-direct/range {v13 .. v19}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    .line 4422
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move-object/from16 v22, v1

    move/from16 v20, v8

    move/from16 v21, v12

    const/4 v1, -0x1

    .line 4424
    :goto_2
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v7

    .line 4425
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getScale()I

    move-result v12

    .line 4426
    invoke-virtual {v9}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v13

    .line 4427
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v23, 0x520a

    move/from16 v15, v20

    if-ge v15, v14, :cond_b

    .line 4431
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/h2/table/Column;

    .line 4432
    invoke-virtual {v14}, Lorg/h2/table/Column;->getType()I

    move-result v1

    invoke-static {v1, v10}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v1

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 4433
    invoke-virtual {v14}, Lorg/h2/table/Column;->getPrecision()J

    move-result-wide v4

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 4434
    invoke-virtual {v14}, Lorg/h2/table/Column;->getScale()I

    move-result v4

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 4435
    invoke-virtual {v14}, Lorg/h2/table/Column;->getDisplaySize()I

    move-result v4

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 4436
    new-instance v4, Lorg/h2/table/Column;

    move-object v13, v4

    move-object v14, v11

    move v7, v15

    move v15, v1

    invoke-direct/range {v13 .. v19}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    .line 4437
    invoke-virtual {v3, v7, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v25

    .line 4438
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_3

    const-string v4, ","

    .line 4440
    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    move-object v5, v1

    move/from16 v8, v21

    move-object/from16 v1, v22

    move-object/from16 v4, v24

    goto/16 :goto_1

    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    const-string v4, ")"

    .line 4442
    invoke-direct {v0, v4}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v4, v24

    .line 4444
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    .line 4445
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 4446
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4447
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_6

    .line 4449
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v1, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 4450
    :cond_5
    invoke-static/range {v23 .. v23}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_6
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_9

    .line 4454
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/table/Column;

    .line 4455
    invoke-virtual {v7}, Lorg/h2/table/Column;->getType()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    .line 4456
    new-instance v8, Lorg/h2/table/Column;

    invoke-virtual {v7}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xd

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    .line 4457
    invoke-virtual {v3, v6, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4459
    :cond_7
    new-array v7, v5, [Lorg/h2/expression/Expression;

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v5, :cond_8

    .line 4461
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/h2/expression/Expression;

    aput-object v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 4463
    :cond_8
    new-instance v8, Lorg/h2/expression/ExpressionList;

    invoke-direct {v8, v7}, Lorg/h2/expression/ExpressionList;-><init>([Lorg/h2/expression/Expression;)V

    .line 4464
    invoke-virtual {v2, v6, v8}, Lorg/h2/expression/TableFunction;->setParameter(ILorg/h2/expression/Expression;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 4466
    :cond_9
    invoke-virtual {v2, v3}, Lorg/h2/expression/TableFunction;->setColumns(Ljava/util/ArrayList;)V

    .line 4467
    invoke-virtual {v2}, Lorg/h2/expression/TableFunction;->doneWithParameters()V

    .line 4468
    new-instance v12, Lorg/h2/table/FunctionTable;

    iget-object v1, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    move-object/from16 v5, v22

    invoke-direct {v12, v5, v1, v2, v2}, Lorg/h2/table/FunctionTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;Lorg/h2/expression/FunctionCall;)V

    .line 4469
    new-instance v1, Lorg/h2/table/TableFilter;

    iget-object v11, v0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v13, 0x0

    iget-boolean v14, v0, Lorg/h2/command/Parser;->rightsChecked:Z

    iget-object v15, v0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    move-object v10, v1

    move/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;I)V

    return-object v1

    :cond_a
    move-object/from16 v1, v22

    goto/16 :goto_0

    .line 4428
    :cond_b
    invoke-static/range {v23 .. v23}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
.end method

.method private parseWith()Lorg/h2/command/dml/Query;
    .locals 12

    const-string v0, "RECURSIVE"

    .line 4727
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 4728
    invoke-direct {p0}, Lorg/h2/command/Parser;->readIdentifierWithSchema()Ljava/lang/String;

    move-result-object v4

    .line 4729
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    const-string v0, "("

    .line 4731
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4732
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 4733
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseColumnList()[Ljava/lang/String;

    move-result-object v1

    .line 4734
    array-length v3, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    aget-object v7, v1, v6

    .line 4735
    new-instance v8, Lorg/h2/table/Column;

    const/16 v9, 0xd

    invoke-direct {v8, v7, v9}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4737
    :cond_0
    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4}, Lorg/h2/engine/Session;->findLocalTempTable(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4739
    instance-of v6, v3, Lorg/h2/table/TableView;

    const v7, 0xa475

    if-eqz v6, :cond_2

    .line 4743
    move-object v6, v3

    check-cast v6, Lorg/h2/table/TableView;

    .line 4744
    invoke-virtual {v6}, Lorg/h2/table/TableView;->isTableExpression()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4748
    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v3}, Lorg/h2/engine/Session;->removeLocalTempTable(Lorg/h2/table/Table;)V

    goto :goto_1

    .line 4745
    :cond_1
    invoke-static {v7, v4}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 4740
    :cond_2
    invoke-static {v7, v4}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 4750
    :cond_3
    :goto_1
    new-instance v3, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {v3}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    .line 4751
    iget-object v6, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v6}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result v6

    iput v6, v3, Lorg/h2/command/ddl/CreateTableData;->id:I

    .line 4752
    iput-object v0, v3, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    .line 4753
    iput-object v4, v3, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4754
    iput-boolean v0, v3, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    .line 4755
    iput-boolean v0, v3, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    .line 4756
    iput-boolean v5, v3, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    .line 4757
    iput-boolean v0, v3, Lorg/h2/command/ddl/CreateTableData;->create:Z

    .line 4758
    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    iput-object v6, v3, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    .line 4759
    invoke-virtual {v2, v3}, Lorg/h2/schema/Schema;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;

    move-result-object v3

    .line 4760
    iget-object v6, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v3}, Lorg/h2/engine/Session;->addLocalTempTable(Lorg/h2/table/Table;)V

    .line 4762
    array-length v6, v1

    new-array v7, v6, [Lorg/h2/table/Column;

    :try_start_0
    const-string v6, "AS"

    .line 4764
    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v6, "("

    .line 4765
    invoke-direct {p0, v6}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4766
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v6

    const-string v8, ")"

    .line 4767
    invoke-direct {p0, v8}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 4768
    invoke-virtual {v6}, Lorg/h2/command/dml/Query;->prepare()V

    .line 4769
    invoke-virtual {v6}, Lorg/h2/command/dml/Query;->getPlanSQL()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/h2/util/StringUtils;->fromCacheOrNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4770
    invoke-virtual {v6}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v6

    .line 4771
    :goto_2
    array-length v9, v1

    if-ge v5, v9, :cond_4

    .line 4772
    new-instance v9, Lorg/h2/table/Column;

    aget-object v10, v1, v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/h2/expression/Expression;

    invoke-virtual {v11}, Lorg/h2/expression/Expression;->getType()I

    move-result v11

    invoke-direct {v9, v10, v11}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    aput-object v9, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4775
    :cond_4
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v3}, Lorg/h2/engine/Session;->removeLocalTempTable(Lorg/h2/table/Table;)V

    .line 4777
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result v3

    .line 4778
    new-instance v10, Lorg/h2/table/TableView;

    iget-object v6, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    iget-object v9, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v11, 0x1

    move-object v1, v10

    move-object v5, v8

    move-object v8, v9

    move v9, v11

    invoke-direct/range {v1 .. v9}, Lorg/h2/table/TableView;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;[Lorg/h2/table/Column;Lorg/h2/engine/Session;Z)V

    .line 4780
    invoke-virtual {v10, v0}, Lorg/h2/table/TableView;->setTableExpression(Z)V

    .line 4781
    invoke-virtual {v10, v0}, Lorg/h2/table/TableView;->setTemporary(Z)V

    .line 4782
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v10}, Lorg/h2/engine/Session;->addLocalTempTable(Lorg/h2/table/Table;)V

    .line 4783
    invoke-virtual {v10, v0}, Lorg/h2/table/TableView;->setOnCommitDrop(Z)V

    .line 4784
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v1

    .line 4785
    invoke-virtual {v1, v0}, Lorg/h2/command/dml/Query;->setPrepareAlways(Z)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 4775
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v3}, Lorg/h2/engine/Session;->removeLocalTempTable(Lorg/h2/table/Table;)V

    throw v0
.end method

.method private static prepare(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/h2/command/Prepared;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Value;",
            ">;)",
            "Lorg/h2/command/Prepared;"
        }
    .end annotation

    .line 985
    invoke-virtual {p0, p1}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p0

    .line 986
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 988
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 989
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    .line 990
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/value/Value;

    invoke-virtual {v2, v3}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_9

    .line 6154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 6157
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 6159
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    const/16 v2, 0x5f

    if-nez v1, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6160
    :cond_2
    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6162
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_7

    .line 6163
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 6164
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_4

    if-ne v4, v2, :cond_5

    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6166
    :cond_5
    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6169
    :cond_7
    invoke-static {p0, v1}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6170
    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    return-object p0

    :cond_9
    :goto_1
    const-string p0, "\"\""

    return-object p0
.end method

.method private read()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3227
    iput-boolean v1, v0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    .line 3228
    iget-object v2, v0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 3229
    iget-object v2, v0, Lorg/h2/command/Parser;->expectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3231
    :cond_0
    iget-object v2, v0, Lorg/h2/command/Parser;->characterTypes:[I

    .line 3232
    iget v3, v0, Lorg/h2/command/Parser;->parseIndex:I

    iput v3, v0, Lorg/h2/command/Parser;->lastParseIndex:I

    .line 3233
    iget v3, v0, Lorg/h2/command/Parser;->parseIndex:I

    .line 3234
    aget v4, v2, v3

    :goto_0
    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 3236
    aget v4, v2, v3

    goto :goto_0

    .line 3239
    :cond_1
    iget-object v5, v0, Lorg/h2/command/Parser;->sqlCommandChars:[C

    add-int/lit8 v6, v3, 0x1

    .line 3240
    aget-char v7, v5, v3

    const-string v8, ""

    .line 3241
    iput-object v8, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x1

    packed-switch v4, :pswitch_data_0

    .line 3397
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :pswitch_0
    add-int/lit8 v1, v6, -0x1

    .line 3379
    :goto_1
    aget v3, v2, v6

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3382
    :cond_2
    iget-object v2, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    .line 3383
    iput-object v2, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3384
    invoke-direct {v0, v12}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    .line 3385
    invoke-static {v1}, Lorg/h2/util/StringUtils;->fromCacheOrNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v1, v2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    .line 3387
    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    .line 3388
    iput v10, v0, Lorg/h2/command/Parser;->currentTokenType:I

    return-void

    .line 3342
    :pswitch_1
    aget v1, v2, v6

    if-eq v1, v11, :cond_3

    .line 3343
    iput v12, v0, Lorg/h2/command/Parser;->currentTokenType:I

    const-string v1, "."

    .line 3344
    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3345
    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    :cond_3
    add-int/lit8 v1, v6, -0x1

    .line 3348
    invoke-direct {v0, v1, v6}, Lorg/h2/command/Parser;->readDecimal(II)V

    return-void

    :pswitch_2
    move v1, v6

    :goto_2
    move v2, v1

    .line 3354
    :goto_3
    aget-char v3, v5, v2

    const/16 v4, 0x27

    if-ne v3, v4, :cond_6

    if-nez v8, :cond_4

    .line 3356
    iget-object v3, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v8, v1

    goto :goto_5

    .line 3358
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 3363
    aget-char v1, v5, v2

    if-eq v1, v4, :cond_5

    const-string v1, "\'"

    .line 3368
    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3369
    invoke-direct {v0, v12}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    .line 3370
    invoke-static {v8}, Lorg/h2/util/StringUtils;->fromCacheOrNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v3

    iget-boolean v3, v3, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    invoke-static {v1, v3}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;Z)Lorg/h2/value/Value;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    .line 3372
    iput v2, v0, Lorg/h2/command/Parser;->parseIndex:I

    .line 3373
    iput v10, v0, Lorg/h2/command/Parser;->currentTokenType:I

    return-void

    :cond_5
    add-int/lit8 v1, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3281
    :pswitch_3
    aget v1, v2, v6

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    add-int/lit8 v6, v6, 0x1

    .line 3284
    :cond_7
    iget-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3285
    iget-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->getSpecialType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/h2/command/Parser;->currentTokenType:I

    .line 3286
    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    .line 3289
    :pswitch_4
    iget-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3290
    iget-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->getSpecialType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/h2/command/Parser;->currentTokenType:I

    .line 3291
    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    .line 3245
    :goto_6
    :pswitch_5
    aget v1, v2, v6

    if-eq v1, v9, :cond_8

    if-eq v1, v11, :cond_8

    .line 3251
    iget-object v1, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->fromCacheOrNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3253
    iget-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->getTokenType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/h2/command/Parser;->currentTokenType:I

    .line 3254
    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :pswitch_6
    move v2, v6

    :goto_7
    move v1, v2

    .line 3260
    :goto_8
    aget-char v3, v5, v1

    const/16 v4, 0x22

    if-ne v3, v4, :cond_b

    if-nez v8, :cond_9

    .line 3262
    iget-object v3, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object v8, v2

    goto :goto_a

    .line 3264
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :goto_a
    add-int/lit8 v1, v1, 0x1

    .line 3269
    aget-char v2, v5, v1

    if-eq v2, v4, :cond_a

    .line 3274
    invoke-static {v8}, Lorg/h2/util/StringUtils;->fromCacheOrNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3275
    iput v1, v0, Lorg/h2/command/Parser;->parseIndex:I

    .line 3276
    iput-boolean v12, v0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    .line 3277
    iput v11, v0, Lorg/h2/command/Parser;->currentTokenType:I

    return-void

    :cond_a
    add-int/lit8 v2, v1, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :pswitch_7
    const-wide/32 v13, 0x7fffffff

    const/16 v2, 0x39

    const/16 v4, 0x30

    if-ne v7, v4, :cond_11

    .line 3294
    aget-char v8, v5, v6

    const/16 v15, 0x58

    if-ne v8, v15, :cond_11

    const-wide/16 v7, 0x0

    add-int/2addr v3, v11

    add-int/2addr v6, v12

    .line 3300
    :goto_b
    aget-char v11, v5, v6

    const/16 v12, 0x41

    if-lt v11, v4, :cond_c

    if-le v11, v2, :cond_d

    :cond_c
    if-lt v11, v12, :cond_10

    const/16 v15, 0x46

    if-le v11, v15, :cond_d

    goto :goto_d

    :cond_d
    shl-long/2addr v7, v9

    move-object/from16 v16, v5

    int-to-long v4, v11

    add-long/2addr v7, v4

    if-lt v11, v12, :cond_e

    const/16 v4, 0x37

    goto :goto_c

    :cond_e
    const/16 v4, 0x30

    :goto_c
    int-to-long v4, v4

    sub-long/2addr v7, v4

    cmp-long v4, v7, v13

    if-lez v4, :cond_f

    .line 3312
    invoke-direct {v0, v3, v6}, Lorg/h2/command/Parser;->readHexDecimal(II)V

    return-void

    :cond_f
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v16

    const/16 v4, 0x30

    goto :goto_b

    .line 3302
    :cond_10
    :goto_d
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    long-to-int v1, v7

    .line 3303
    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    .line 3304
    iput v10, v0, Lorg/h2/command/Parser;->currentTokenType:I

    const-string v1, "0"

    .line 3305
    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3306
    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    :cond_11
    move-object/from16 v16, v5

    sub-int/2addr v7, v4

    int-to-long v7, v7

    .line 3320
    :goto_e
    aget-char v5, v16, v6

    if-lt v5, v4, :cond_14

    if-le v5, v2, :cond_12

    goto :goto_f

    :cond_12
    const-wide/16 v11, 0xa

    mul-long v7, v7, v11

    add-int/lit8 v5, v5, -0x30

    int-to-long v11, v5

    add-long/2addr v7, v11

    cmp-long v5, v7, v13

    if-lez v5, :cond_13

    .line 3335
    invoke-direct {v0, v3, v6}, Lorg/h2/command/Parser;->readDecimal(II)V

    goto :goto_11

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_14
    :goto_f
    const/16 v2, 0x2e

    if-eq v5, v2, :cond_16

    const/16 v2, 0x45

    if-eq v5, v2, :cond_16

    const/16 v2, 0x4c

    if-ne v5, v2, :cond_15

    goto :goto_10

    .line 3326
    :cond_15
    invoke-direct {v0, v1}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    long-to-int v1, v7

    .line 3327
    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    .line 3328
    iput v10, v0, Lorg/h2/command/Parser;->currentTokenType:I

    const-string v1, "0"

    .line 3329
    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3330
    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    goto :goto_11

    .line 3323
    :cond_16
    :goto_10
    invoke-direct {v0, v3, v6}, Lorg/h2/command/Parser;->readDecimal(II)V

    :goto_11
    return-void

    :pswitch_8
    const-string v1, ""

    .line 3392
    iput-object v1, v0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3393
    iput v9, v0, Lorg/h2/command/Parser;->currentTokenType:I

    .line 3394
    iput v6, v0, Lorg/h2/command/Parser;->parseIndex:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private read(Ljava/lang/String;)V
    .locals 1

    .line 3183
    iget-boolean v0, p0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3187
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return-void

    .line 3184
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->addExpected(Ljava/lang/String;)V

    .line 3185
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private readAggregate(ILjava/lang/String;)Lorg/h2/expression/Expression;
    .locals 4

    .line 2335
    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    if-eqz v0, :cond_7

    .line 2338
    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->setGroupQuery()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const-string p1, "*"

    .line 2341
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2342
    new-instance p1, Lorg/h2/expression/Aggregate;

    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p1, p2, v1, v0, p2}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    goto/16 :goto_1

    :cond_0
    const-string p1, "DISTINCT"

    .line 2345
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    .line 2346
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v2

    .line 2347
    instance-of v3, v2, Lorg/h2/expression/Wildcard;

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    .line 2349
    new-instance p1, Lorg/h2/expression/Aggregate;

    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p1, p2, v1, v0, p2}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    goto/16 :goto_1

    .line 2352
    :cond_1
    new-instance p2, Lorg/h2/expression/Aggregate;

    iget-object v1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p2, v0, v2, v1, p1}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    move-object p1, p2

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const-string p1, "DISTINCT"

    .line 2358
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "GROUP_CONCAT"

    .line 2360
    invoke-direct {p0, v2, p2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2361
    new-instance v1, Lorg/h2/expression/Aggregate;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    iget-object v2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {v1, v0, p2, v2, p1}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    const-string p1, "ORDER"

    .line 2363
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "BY"

    .line 2364
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2365
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSimpleOrderList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/h2/expression/Aggregate;->setGroupConcatOrder(Ljava/util/ArrayList;)V

    :cond_3
    const-string p1, "SEPARATOR"

    .line 2368
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2369
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/h2/expression/Aggregate;->setGroupConcatSeparator(Lorg/h2/expression/Expression;)V

    goto :goto_0

    :cond_4
    const-string v2, "STRING_AGG"

    .line 2371
    invoke-direct {p0, v2, p2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2373
    new-instance v1, Lorg/h2/expression/Aggregate;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    iget-object v2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {v1, v0, p2, v2, p1}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    const-string p1, ","

    .line 2375
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2376
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/h2/expression/Aggregate;->setGroupConcatSeparator(Lorg/h2/expression/Expression;)V

    const-string p1, "ORDER"

    .line 2377
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "BY"

    .line 2378
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2379
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSimpleOrderList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/h2/expression/Aggregate;->setGroupConcatOrder(Ljava/util/ArrayList;)V

    :cond_5
    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_6
    const-string p2, "DISTINCT"

    .line 2384
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    .line 2385
    new-instance v0, Lorg/h2/expression/Aggregate;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/h2/expression/Aggregate;-><init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V

    move-object p1, v0

    :goto_1
    const-string p2, ")"

    .line 2388
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    return-object p1

    .line 2336
    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private readAliasIdentifier()Ljava/lang/String;
    .locals 1

    .line 3165
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readAnd()Lorg/h2/expression/Expression;
    .locals 4

    .line 2099
    invoke-direct {p0}, Lorg/h2/command/Parser;->readCondition()Lorg/h2/expression/Expression;

    move-result-object v0

    :goto_0
    const-string v1, "AND"

    .line 2100
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2101
    new-instance v1, Lorg/h2/expression/ConditionAndOr;

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/h2/command/Parser;->readCondition()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readBooleanSetting()Z
    .locals 2

    .line 3105
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3106
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3107
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return v0

    :cond_0
    const-string v0, "TRUE"

    .line 3110
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ON"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "FALSE"

    .line 3112
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "OFF"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3115
    :cond_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private readCase()Lorg/h2/expression/Expression;
    .locals 5

    const-string v0, "END"

    .line 3004
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CASE"

    .line 3005
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 3006
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ELSE"

    .line 3008
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3009
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    const-string v1, "END"

    .line 3010
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v1, "CASE"

    .line 3011
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    return-object v0

    :cond_1
    const-string v0, "WHEN"

    .line 3016
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 3017
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v3, "CASE"

    invoke-static {v0, v3}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v0

    const/4 v3, 0x0

    .line 3018
    invoke-virtual {v0, v1, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    .line 3021
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string v2, "THEN"

    .line 3022
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    .line 3023
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string v1, "WHEN"

    .line 3024
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 3026
    :cond_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    const-string v3, "END"

    .line 3027
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "CASE"

    .line 3028
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 3029
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v3, "ELSE"

    .line 3031
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3032
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    const-string v1, "END"

    .line 3033
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v1, "CASE"

    .line 3034
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    return-object v0

    .line 3037
    :cond_5
    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v4, "CASE"

    invoke-static {v3, v4}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v3

    .line 3038
    invoke-virtual {v3, v1, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string v0, "WHEN"

    .line 3040
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v2, 0x1

    .line 3042
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string v1, "THEN"

    .line 3043
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    add-int/lit8 v2, v0, 0x1

    .line 3044
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string v0, "WHEN"

    .line 3045
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v3

    :goto_0
    const-string v1, "ELSE"

    .line 3047
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3048
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    :cond_7
    const-string v1, "END"

    .line 3050
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v1, "CASE"

    .line 3051
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 3052
    invoke-virtual {v0}, Lorg/h2/expression/Function;->doneWithParameters()V

    return-object v0
.end method

.method private readColumnIdentifier()Ljava/lang/String;
    .locals 3

    .line 3173
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3177
    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3178
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return-object v0

    .line 3174
    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "identifier"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readCommentIf()Ljava/lang/String;
    .locals 1

    const-string v0, "COMMENT"

    .line 4028
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IS"

    .line 4029
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    .line 4030
    invoke-direct {p0}, Lorg/h2/command/Parser;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private readConcat()Lorg/h2/expression/Expression;
    .locals 12

    .line 2277
    invoke-direct {p0}, Lorg/h2/command/Parser;->readSum()Lorg/h2/expression/Expression;

    move-result-object v0

    :goto_0
    const-string v1, "||"

    .line 2279
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2280
    new-instance v1, Lorg/h2/expression/Operation;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readSum()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v1, "~"

    .line 2281
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0xe

    if-eqz v1, :cond_2

    const-string v1, "*"

    .line 2282
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2283
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v4, "CAST"

    invoke-static {v1, v4}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v1

    .line 2284
    new-instance v4, Lorg/h2/table/Column;

    const-string v5, "X"

    invoke-direct {v4, v5, v3}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    .line 2286
    invoke-virtual {v1, v2, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, v0

    .line 2289
    :goto_1
    new-instance v0, Lorg/h2/expression/CompareLike;

    iget-object v7, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readSum()Lorg/h2/expression/Expression;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lorg/h2/expression/CompareLike;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "!~"

    .line 2290
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "*"

    .line 2291
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2292
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v4, "CAST"

    invoke-static {v1, v4}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v1

    .line 2293
    new-instance v4, Lorg/h2/table/Column;

    const-string v5, "X"

    invoke-direct {v4, v5, v3}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    .line 2295
    invoke-virtual {v1, v2, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    move-object v8, v1

    goto :goto_2

    :cond_3
    move-object v8, v0

    .line 2298
    :goto_2
    new-instance v0, Lorg/h2/expression/ConditionNot;

    new-instance v1, Lorg/h2/expression/CompareLike;

    iget-object v7, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readSum()Lorg/h2/expression/Expression;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lorg/h2/expression/CompareLike;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    invoke-direct {v0, v1}, Lorg/h2/expression/ConditionNot;-><init>(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method private readCondition()Lorg/h2/expression/Expression;
    .locals 11

    const-string v0, "NOT"

    .line 2107
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2108
    new-instance v0, Lorg/h2/expression/ConditionNot;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readCondition()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/h2/expression/ConditionNot;-><init>(Lorg/h2/expression/Expression;)V

    return-object v0

    :cond_0
    const-string v0, "EXISTS"

    .line 2110
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "("

    .line 2111
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2112
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v0

    const-string v1, ")"

    .line 2115
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2116
    new-instance v1, Lorg/h2/expression/ConditionExists;

    invoke-direct {v1, v0}, Lorg/h2/expression/ConditionExists;-><init>(Lorg/h2/command/dml/Query;)V

    return-object v1

    :cond_1
    const-string v0, "INTERSECTS"

    .line 2118
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "("

    .line 2119
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2120
    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v0

    const-string v1, ","

    .line 2121
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2122
    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v1

    const-string v2, ")"

    .line 2123
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2124
    new-instance v2, Lorg/h2/expression/Comparison;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    return-object v2

    .line 2127
    :cond_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 2131
    :goto_1
    iget v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v1, "NOT"

    .line 2133
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    const-string v1, "NULL"

    .line 2135
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2137
    iput v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v0, "NOT"

    .line 2138
    iput-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    goto/16 :goto_6

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const-string v1, "LIKE"

    .line 2142
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 2143
    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v4

    const-string v1, "ESCAPE"

    .line 2145
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2146
    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v1

    move-object v5, v1

    .line 2148
    :cond_5
    iput-boolean v2, p0, Lorg/h2/command/Parser;->recompileAlways:Z

    .line 2149
    new-instance v7, Lorg/h2/expression/CompareLike;

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/h2/expression/CompareLike;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    goto/16 :goto_b

    :cond_6
    const-string v1, "REGEXP"

    .line 2150
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2151
    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v4

    .line 2152
    new-instance v7, Lorg/h2/expression/CompareLike;

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/h2/expression/CompareLike;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    goto/16 :goto_b

    :cond_7
    const-string v1, "IS"

    .line 2153
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "NOT"

    .line 2154
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x15

    const/16 v4, 0x10

    if-eqz v1, :cond_a

    const-string v1, "NULL"

    .line 2155
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2156
    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v4, 0x7

    invoke-direct {v1, v2, v4, v3, v5}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto/16 :goto_b

    :cond_8
    const-string v1, "DISTINCT"

    .line 2158
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "FROM"

    .line 2159
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2160
    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto/16 :goto_b

    .line 2163
    :cond_9
    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v5

    invoke-direct {v1, v4, v2, v3, v5}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto/16 :goto_b

    :cond_a
    const-string v1, "NULL"

    .line 2166
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2167
    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v4, 0x6

    invoke-direct {v1, v2, v4, v3, v5}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto/16 :goto_b

    :cond_b
    const-string v1, "DISTINCT"

    .line 2168
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "FROM"

    .line 2169
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2170
    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v5

    invoke-direct {v1, v4, v2, v3, v5}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto/16 :goto_b

    .line 2173
    :cond_c
    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto/16 :goto_b

    :cond_d
    const-string v1, "IN"

    .line 2176
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "("

    .line 2177
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v1, ")"

    .line 2178
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2179
    invoke-static {v4}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    :cond_e
    :goto_3
    move-object v1, v3

    goto/16 :goto_b

    .line 2181
    :cond_f
    invoke-direct {p0}, Lorg/h2/command/Parser;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2182
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v4

    .line 2183
    new-instance v7, Lorg/h2/expression/ConditionInSelect;

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/h2/expression/ConditionInSelect;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/command/dml/Query;ZI)V

    :goto_4
    move-object v3, v7

    goto :goto_5

    .line 2186
    :cond_10
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2189
    :cond_11
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v4

    .line 2190
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, ","

    .line 2191
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 2192
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v2, :cond_12

    instance-of v2, v4, Lorg/h2/expression/Subquery;

    if-eqz v2, :cond_12

    .line 2193
    check-cast v4, Lorg/h2/expression/Subquery;

    .line 2194
    invoke-virtual {v4}, Lorg/h2/expression/Subquery;->getQuery()Lorg/h2/command/dml/Query;

    move-result-object v4

    .line 2195
    new-instance v7, Lorg/h2/expression/ConditionInSelect;

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/h2/expression/ConditionInSelect;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/command/dml/Query;ZI)V

    goto :goto_4

    .line 2198
    :cond_12
    new-instance v2, Lorg/h2/expression/ConditionIn;

    iget-object v4, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v2, v4, v3, v1}, Lorg/h2/expression/ConditionIn;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V

    move-object v3, v2

    :goto_5
    const-string v1, ")"

    .line 2201
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    const-string v1, "BETWEEN"

    .line 2203
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2204
    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v1

    const-string v5, "AND"

    .line 2205
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2206
    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v5

    .line 2207
    new-instance v6, Lorg/h2/expression/Comparison;

    iget-object v7, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8, v1, v3}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    .line 2209
    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v7, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v1, v7, v2, v5, v3}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    .line 2211
    new-instance v3, Lorg/h2/expression/ConditionAndOr;

    invoke-direct {v3, v4, v6, v1}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_3

    .line 2213
    :cond_14
    iget v1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    invoke-static {v1}, Lorg/h2/command/Parser;->getCompareType(I)I

    move-result v6

    if-gez v6, :cond_15

    :goto_6
    return-object v3

    .line 2217
    :cond_15
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const-string v1, "ALL"

    .line 2218
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "("

    .line 2219
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2220
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v4

    .line 2221
    new-instance v7, Lorg/h2/expression/ConditionInSelect;

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v5, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/h2/expression/ConditionInSelect;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/command/dml/Query;ZI)V

    const-string v1, ")"

    .line 2223
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :goto_7
    move-object v1, v7

    goto/16 :goto_b

    :cond_16
    const-string v1, "ANY"

    .line 2224
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "SOME"

    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_a

    .line 2231
    :cond_17
    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object v1

    .line 2232
    sget-boolean v5, Lorg/h2/engine/SysProperties;->OLD_STYLE_OUTER_JOIN:Z

    if-eqz v5, :cond_1c

    const-string v5, "("

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "+"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, ")"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2236
    instance-of v5, v3, Lorg/h2/expression/ExpressionColumn;

    if-eqz v5, :cond_e

    instance-of v5, v1, Lorg/h2/expression/ExpressionColumn;

    if-eqz v5, :cond_e

    .line 2238
    move-object v5, v3

    check-cast v5, Lorg/h2/expression/ExpressionColumn;

    .line 2239
    move-object v7, v1

    check-cast v7, Lorg/h2/expression/ExpressionColumn;

    .line 2240
    iget-object v8, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-virtual {v8}, Lorg/h2/command/dml/Select;->getTopFilters()Ljava/util/ArrayList;

    move-result-object v8

    .line 2242
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/h2/table/TableFilter;

    :goto_8
    if-eqz v10, :cond_18

    .line 2244
    invoke-virtual {v5, v10, v4}, Lorg/h2/expression/ExpressionColumn;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 2245
    invoke-virtual {v7, v10, v4}, Lorg/h2/expression/ExpressionColumn;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    .line 2246
    invoke-virtual {v10}, Lorg/h2/table/TableFilter;->getJoin()Lorg/h2/table/TableFilter;

    move-result-object v10

    goto :goto_8

    .line 2249
    :cond_19
    invoke-virtual {v5}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v5

    .line 2250
    invoke-virtual {v7}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v7

    .line 2251
    new-instance v9, Lorg/h2/expression/Comparison;

    iget-object v10, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v9, v10, v6, v3, v1}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    if-eqz v5, :cond_1b

    if-eqz v7, :cond_1b

    .line 2253
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1a

    .line 2255
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2256
    invoke-virtual {v5, v7, v2, v4, v9}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto :goto_9

    .line 2259
    :cond_1a
    invoke-virtual {v7, v9}, Lorg/h2/table/TableFilter;->mapAndAddFilter(Lorg/h2/expression/Expression;)V

    .line 2261
    :goto_9
    invoke-static {v2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_3

    :cond_1b
    move-object v3, v9

    goto/16 :goto_3

    .line 2265
    :cond_1c
    new-instance v2, Lorg/h2/expression/Comparison;

    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v2, v4, v6, v3, v1}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v1, v2

    goto :goto_b

    :cond_1d
    :goto_a
    const-string v1, "("

    .line 2225
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2226
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v4

    .line 2227
    new-instance v7, Lorg/h2/expression/ConditionInSelect;

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/h2/expression/ConditionInSelect;-><init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Lorg/h2/command/dml/Query;ZI)V

    const-string v1, ")"

    .line 2229
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_7

    :goto_b
    if-eqz v0, :cond_1e

    .line 2270
    new-instance v0, Lorg/h2/expression/ConditionNot;

    invoke-direct {v0, v1}, Lorg/h2/expression/ConditionNot;-><init>(Lorg/h2/expression/Expression;)V

    goto/16 :goto_0

    :cond_1e
    move-object v3, v1

    goto/16 :goto_1
.end method

.method private readDecimal(II)V
    .locals 7

    .line 3426
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommandChars:[C

    .line 3427
    iget-object v1, p0, Lorg/h2/command/Parser;->characterTypes:[I

    .line 3430
    :goto_0
    aget v2, v1, p2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    .line 3437
    aget-char v2, v0, p2

    const/16 v4, 0x45

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v4, :cond_1

    aget-char v2, v0, p2

    const/16 v4, 0x65

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 3440
    aget-char v2, v0, p2

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_2

    aget-char v2, v0, p2

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 3443
    :cond_3
    aget v2, v1, p2

    if-ne v2, v3, :cond_7

    :goto_2
    add-int/2addr p2, v6

    .line 3446
    aget v2, v1, p2

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    .line 3450
    :goto_3
    iput p2, p0, Lorg/h2/command/Parser;->parseIndex:I

    .line 3451
    iget-object v2, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3452
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    const/4 v2, 0x5

    if-nez v1, :cond_6

    const/16 v1, 0x2e

    .line 3453
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 3454
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 3455
    sget-object v3, Lorg/h2/value/ValueLong;->MAX:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_6

    .line 3457
    aget-char p1, v0, p2

    const/16 p2, 0x4c

    if-ne p1, p2, :cond_5

    .line 3458
    iget p1, p0, Lorg/h2/command/Parser;->parseIndex:I

    add-int/2addr p1, v6

    iput p1, p0, Lorg/h2/command/Parser;->parseIndex:I

    .line 3460
    :cond_5
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    .line 3461
    iput v2, p0, Lorg/h2/command/Parser;->currentTokenType:I

    return-void

    .line 3467
    :cond_6
    :try_start_0
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3471
    invoke-static {p2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    .line 3472
    iput v2, p0, Lorg/h2/command/Parser;->currentTokenType:I

    return-void

    :catch_0
    move-exception p2

    const/16 v0, 0x5602

    .line 3469
    new-array v1, v6, [Ljava/lang/String;

    aput-object p1, v1, v5

    invoke-static {v0, p2, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 3444
    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0
.end method

.method private readExpression()Lorg/h2/expression/Expression;
    .locals 4

    .line 2091
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAnd()Lorg/h2/expression/Expression;

    move-result-object v0

    :goto_0
    const-string v1, "OR"

    .line 2092
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2093
    new-instance v1, Lorg/h2/expression/ConditionAndOr;

    const/4 v2, 0x1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAnd()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readFactor()Lorg/h2/expression/Expression;
    .locals 4

    .line 2320
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v0

    :goto_0
    const-string v1, "*"

    .line 2322
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2323
    new-instance v1, Lorg/h2/expression/Operation;

    const/4 v2, 0x3

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v1, "/"

    .line 2324
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2325
    new-instance v1, Lorg/h2/expression/Operation;

    const/4 v2, 0x4

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_1
    const-string v1, "%"

    .line 2326
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2327
    new-instance v1, Lorg/h2/expression/Operation;

    const/4 v2, 0x6

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private readFromAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "AS"

    .line 1266
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1268
    :cond_0
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "LEFT"

    .line 1271
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RIGHT"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FULL"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1272
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private readFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/Expression;
    .locals 5

    if-eqz p1, :cond_0

    .line 2457
    invoke-direct {p0, p1, p2}, Lorg/h2/command/Parser;->readJavaFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/JavaFunction;

    move-result-object p1

    return-object p1

    .line 2459
    :cond_0
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->getAggregateType(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 2461
    invoke-direct {p0, p1, p2}, Lorg/h2/command/Parser;->readAggregate(ILjava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 2463
    :cond_1
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 2465
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->findAggregate(Ljava/lang/String;)Lorg/h2/engine/UserAggregate;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2467
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readJavaAggregate(Lorg/h2/engine/UserAggregate;)Lorg/h2/expression/JavaAggregate;

    move-result-object p1

    return-object p1

    .line 2469
    :cond_2
    invoke-direct {p0, v0, p2}, Lorg/h2/command/Parser;->readJavaFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/JavaFunction;

    move-result-object p1

    return-object p1

    .line 2471
    :cond_3
    invoke-virtual {p1}, Lorg/h2/expression/Function;->getFunctionType()I

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p2, :sswitch_data_0

    const-string p2, ")"

    .line 2616
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_5

    :sswitch_0
    const-string p1, ")"

    .line 2609
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "OVER"

    .line 2610
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, "("

    .line 2611
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string p1, ")"

    .line 2612
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2613
    new-instance p1, Lorg/h2/expression/Rownum;

    iget-object p2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    :goto_0
    invoke-direct {p1, p2}, Lorg/h2/expression/Rownum;-><init>(Lorg/h2/command/Prepared;)V

    return-object p1

    .line 2594
    :sswitch_1
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 2596
    :cond_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 2597
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v0

    .line 2598
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "="

    .line 2599
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2600
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    add-int/2addr v3, v2

    const-string v0, ","

    .line 2602
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ")"

    .line 2603
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2604
    move-object v0, p1

    check-cast v0, Lorg/h2/expression/TableFunction;

    .line 2605
    invoke-virtual {v0, p2}, Lorg/h2/expression/TableFunction;->setColumns(Ljava/util/ArrayList;)V

    goto/16 :goto_6

    .line 2473
    :sswitch_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, "AS"

    .line 2474
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2475
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p2

    .line 2476
    invoke-virtual {p1, p2}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    const-string p2, ")"

    .line 2477
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2481
    :sswitch_3
    iget-object p2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/Mode;->swapConvertFunctionParameters:Z

    if-eqz p2, :cond_6

    .line 2482
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p2

    .line 2483
    invoke-virtual {p1, p2}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    const-string p2, ","

    .line 2484
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2485
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, ")"

    .line 2486
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2488
    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, ","

    .line 2489
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2490
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p2

    .line 2491
    invoke-virtual {p1, p2}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    const-string p2, ")"

    .line 2492
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2497
    :sswitch_4
    iget-object p2, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 2499
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const-string p2, "FROM"

    .line 2500
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2501
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, ")"

    .line 2502
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2507
    :sswitch_5
    iget-object p2, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {p2}, Lorg/h2/expression/Function;->isDatePart(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2508
    iget-object p2, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 2510
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_1

    .line 2512
    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    :goto_1
    const-string p2, ","

    .line 2514
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2515
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, ","

    .line 2516
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2517
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, ")"

    .line 2518
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_6
    const-string p2, "LEADING"

    .line 2559
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 2560
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string p2, "LTRIM"

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object p1

    const-string p2, "FROM"

    .line 2561
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 2562
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    const-string p2, "FROM"

    .line 2563
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string p2, "TRAILING"

    .line 2565
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 2566
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string p2, "RTRIM"

    invoke-static {p1, p2}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object p1

    const-string p2, "FROM"

    .line 2567
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 2568
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    const-string p2, "FROM"

    .line 2569
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string p2, "BOTH"

    .line 2571
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "FROM"

    .line 2572
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 2573
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    const-string p2, "FROM"

    .line 2574
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2577
    :cond_a
    :goto_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    const-string v1, ","

    .line 2578
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2579
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    goto :goto_3

    :cond_b
    const-string v1, "FROM"

    .line 2580
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2582
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 2584
    :cond_c
    :goto_3
    invoke-virtual {p1, v3, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    if-eqz v0, :cond_d

    .line 2586
    invoke-virtual {p1, v2, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    :cond_d
    const-string p2, ")"

    .line 2588
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2549
    :sswitch_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->readConcat()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, ","

    .line 2550
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e

    const-string p2, "IN"

    .line 2551
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2553
    :cond_e
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, ")"

    .line 2554
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2528
    :sswitch_8
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, "FROM"

    .line 2529
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 2530
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, "FOR"

    .line 2531
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 2532
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    goto :goto_4

    :cond_f
    const-string p2, "FOR"

    .line 2534
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 2535
    invoke-static {v3}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 2536
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    goto :goto_4

    :cond_10
    const-string p2, ","

    .line 2538
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2539
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string p2, ","

    .line 2540
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 2541
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    :cond_11
    :goto_4
    const-string p2, ")"

    .line 2544
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    add-int/lit8 p2, v3, 0x1

    .line 2619
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string v0, ","

    .line 2620
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string p2, ")"

    .line 2621
    invoke-direct {p0, p2}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    move v3, p2

    goto :goto_5

    .line 2624
    :cond_13
    :goto_6
    invoke-virtual {p1}, Lorg/h2/expression/Function;->doneWithParameters()V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_8
        0x4d -> :sswitch_7
        0x4e -> :sswitch_6
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x78 -> :sswitch_4
        0xca -> :sswitch_3
        0xcb -> :sswitch_2
        0xdf -> :sswitch_1
        0xe0 -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method

.method private readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;
    .locals 1

    const-string v0, "("

    .line 2629
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ")"

    .line 2630
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2632
    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-static {v0, p1}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object p1

    .line 2633
    invoke-virtual {p1}, Lorg/h2/expression/Function;->doneWithParameters()V

    return-object p1
.end method

.method private readHexDecimal(II)V
    .locals 3

    .line 3412
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommandChars:[C

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 3415
    aget-char v1, v0, p2

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_0

    :cond_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    const/16 v2, 0x46

    if-le v1, v2, :cond_0

    .line 3417
    :cond_2
    iput p2, p0, Lorg/h2/command/Parser;->parseIndex:I

    .line 3418
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3419
    new-instance p2, Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/4 p1, 0x0

    .line 3420
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->checkLiterals(Z)V

    .line 3421
    invoke-static {p2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    const/4 p1, 0x5

    .line 3422
    iput p1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    return-void
.end method

.method private readIdentifierWithSchema()Ljava/lang/String;
    .locals 1

    .line 3161
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3129
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 3133
    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3134
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 3135
    iput-object p1, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    const-string p1, "."

    .line 3136
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3137
    iput-object v0, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    .line 3138
    iget p1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    if-ne p1, v1, :cond_0

    .line 3142
    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3143
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_0

    .line 3139
    :cond_0
    iget-object p1, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v1, "identifier"

    invoke-static {p1, v0, v1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const-string p1, "."

    .line 3145
    iget-object v2, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3146
    iget-object p1, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "."

    .line 3147
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 3148
    iput-object v0, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    .line 3149
    iget p1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    if-ne p1, v1, :cond_2

    .line 3153
    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 3154
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_1

    .line 3150
    :cond_2
    iget-object p1, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v1, "identifier"

    invoke-static {p1, v0, v1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-object v0

    .line 3130
    :cond_4
    iget-object p1, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v0, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v1, "identifier"

    invoke-static {p1, v0, v1}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private readIf(Ljava/lang/String;)Z
    .locals 1

    .line 3191
    iget-boolean v0, p0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3192
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const/4 p1, 0x1

    return p1

    .line 3195
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->addExpected(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private readIfEqualOrTo()V
    .locals 1

    const-string v0, "="

    .line 5006
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TO"

    .line 5007
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private readIfExists(Z)Z
    .locals 1

    const-string v0, "IF"

    .line 1287
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "EXISTS"

    .line 1288
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private readIfMore()Z
    .locals 1

    const-string v0, ","

    .line 882
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ")"

    .line 883
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const-string v0, ")"

    .line 885
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private readIfNotExists()Z
    .locals 1

    const-string v0, "IF"

    .line 4551
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NOT"

    .line 4552
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v0, "EXISTS"

    .line 4553
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private readInt()I
    .locals 3

    .line 3066
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3068
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_0

    .line 3069
    :cond_0
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 3070
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    :cond_1
    const/4 v0, 0x0

    .line 3072
    :goto_0
    iget v1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_2

    .line 3077
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    .line 3079
    :cond_2
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    .line 3080
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return v0

    .line 3073
    :cond_3
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "integer"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readJavaAggregate(Lorg/h2/engine/UserAggregate;)Lorg/h2/expression/JavaAggregate;
    .locals 3

    .line 2435
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2437
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    .line 2438
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ")"

    .line 2439
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/expression/Expression;

    .line 2441
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2442
    new-instance v0, Lorg/h2/expression/JavaAggregate;

    iget-object v2, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {v0, p1, v1, v2}, Lorg/h2/expression/JavaAggregate;-><init>(Lorg/h2/engine/UserAggregate;[Lorg/h2/expression/Expression;Lorg/h2/command/dml/Select;)V

    .line 2443
    iget-object p1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-virtual {p1}, Lorg/h2/command/dml/Select;->setGroupQuery()V

    return-object v0
.end method

.method private readJavaFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/JavaFunction;
    .locals 2

    if-eqz p1, :cond_0

    .line 2411
    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->findFunction(Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object p1

    goto :goto_0

    .line 2413
    :cond_0
    iget-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/h2/command/Parser;->findFunctionAlias(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 2420
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1
    const-string v1, ")"

    .line 2422
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    if-lez v0, :cond_1

    const-string v0, ","

    .line 2424
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2426
    :cond_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    .line 2428
    :cond_2
    new-array v0, v0, [Lorg/h2/expression/Expression;

    .line 2429
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2430
    new-instance p2, Lorg/h2/expression/JavaFunction;

    invoke-direct {p2, p1, v0}, Lorg/h2/expression/JavaFunction;-><init>(Lorg/h2/engine/FunctionAlias;[Lorg/h2/expression/Expression;)V

    return-object p2

    :cond_3
    const p1, 0x15fa6

    .line 2417
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1507
    iget-object v4, v1, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v4

    iget-boolean v4, v4, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object v8, v7

    const/4 v9, 0x0

    :goto_0
    const-string v10, "RIGHT"

    .line 1509
    invoke-direct {v1, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    const-string v8, "OUTER"

    .line 1510
    invoke-direct {v1, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const-string v8, "JOIN"

    .line 1511
    invoke-direct {v1, v8}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1514
    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v8

    .line 1515
    invoke-direct {v1, v8, v0, v2, v5}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object v8

    const-string v9, "ON"

    .line 1517
    invoke-direct {v1, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1518
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v11

    :cond_0
    if-eqz v4, :cond_1

    .line 1521
    invoke-direct {v1, v7}, Lorg/h2/command/Parser;->getNested(Lorg/h2/table/TableFilter;)Lorg/h2/table/TableFilter;

    move-result-object v7

    .line 1522
    invoke-virtual {v8, v7, v5, v6, v11}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto :goto_1

    .line 1524
    :cond_1
    invoke-virtual {v8, v7, v5, v6, v11}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    :goto_1
    move-object v7, v8

    :goto_2
    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const-string v10, "LEFT"

    .line 1528
    invoke-direct {v1, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v8, "OUTER"

    .line 1529
    invoke-direct {v1, v8}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    const-string v8, "JOIN"

    .line 1530
    invoke-direct {v1, v8}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1532
    invoke-direct {v1, v5}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v8

    if-eqz v4, :cond_3

    .line 1534
    invoke-direct {v1, v8, v0, v5, v5}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object v8

    goto :goto_3

    .line 1536
    :cond_3
    invoke-direct {v1, v7, v0, v6, v5}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object v7

    :goto_3
    const-string v9, "ON"

    .line 1539
    invoke-direct {v1, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1540
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v11

    .line 1542
    :cond_4
    invoke-virtual {v7, v8, v5, v6, v11}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto :goto_2

    :cond_5
    const-string v10, "FULL"

    .line 1544
    invoke-direct {v1, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_15

    const-string v10, "INNER"

    .line 1546
    invoke-direct {v1, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v8, "JOIN"

    .line 1547
    invoke-direct {v1, v8}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1549
    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v8

    .line 1550
    invoke-direct {v1, v7, v0, v6, v6}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object v7

    const-string v9, "ON"

    .line 1552
    invoke-direct {v1, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1553
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v11

    :cond_6
    if-eqz v4, :cond_7

    .line 1556
    invoke-virtual {v7, v8, v6, v6, v11}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto :goto_2

    .line 1558
    :cond_7
    invoke-virtual {v7, v8, v3, v6, v11}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto :goto_2

    :cond_8
    const-string v10, "JOIN"

    .line 1561
    invoke-direct {v1, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1563
    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v8

    .line 1564
    :try_start_0
    invoke-direct {v1, v7, v0, v6, v6}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "ON"

    .line 1566
    invoke-direct {v1, v9}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1567
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v11

    :cond_9
    if-eqz v4, :cond_a

    .line 1570
    invoke-virtual {v7, v8, v6, v6, v11}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto/16 :goto_2

    .line 1572
    :cond_a
    invoke-virtual {v7, v8, v3, v6, v11}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto/16 :goto_2

    :cond_b
    const-string v10, "CROSS"

    .line 1575
    invoke-direct {v1, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v8, "JOIN"

    .line 1576
    invoke-direct {v1, v8}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1578
    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v8

    if-eqz v4, :cond_c

    .line 1580
    invoke-virtual {v7, v8, v6, v6, v11}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto/16 :goto_2

    .line 1582
    :cond_c
    invoke-virtual {v7, v8, v3, v6, v11}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto/16 :goto_2

    :cond_d
    const-string v10, "NATURAL"

    .line 1585
    invoke-direct {v1, v10}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    const-string v9, "JOIN"

    .line 1586
    invoke-direct {v1, v9}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1588
    invoke-direct {v1, v3}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v9

    .line 1589
    invoke-virtual {v8}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v10

    invoke-virtual {v10}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v10

    .line 1590
    invoke-virtual {v9}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v12

    invoke-virtual {v12}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v12

    .line 1591
    invoke-virtual {v8}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v13

    invoke-virtual {v13}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v13

    invoke-virtual {v13}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1592
    invoke-virtual {v9}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v14

    invoke-virtual {v14}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v14

    invoke-virtual {v14}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1594
    array-length v15, v10

    move-object v5, v11

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v15, :cond_11

    aget-object v16, v10, v11

    .line 1595
    invoke-virtual/range {v16 .. v16}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1596
    array-length v0, v12

    move-object/from16 v17, v10

    move-object v10, v5

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v0, :cond_10

    move/from16 v18, v0

    aget-object v0, v12, v5

    move-object/from16 v19, v12

    .line 1597
    invoke-virtual {v0}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1598
    invoke-direct {v1, v6, v12}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 1599
    invoke-virtual {v9, v0}, Lorg/h2/table/TableFilter;->addNaturalJoinColumn(Lorg/h2/table/Column;)V

    .line 1600
    new-instance v0, Lorg/h2/expression/ExpressionColumn;

    move/from16 v20, v15

    iget-object v15, v1, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v8}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v15, v13, v3, v6}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    new-instance v3, Lorg/h2/expression/ExpressionColumn;

    iget-object v15, v1, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    move-object/from16 v21, v6

    invoke-virtual {v9}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v15, v14, v6, v12}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    new-instance v6, Lorg/h2/expression/Comparison;

    iget-object v12, v1, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    const/4 v15, 0x0

    invoke-direct {v6, v12, v15, v0, v3}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    if-nez v10, :cond_e

    move-object v10, v6

    goto :goto_6

    .line 1611
    :cond_e
    new-instance v0, Lorg/h2/expression/ConditionAndOr;

    invoke-direct {v0, v15, v10, v6}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    move-object v10, v0

    goto :goto_6

    :cond_f
    move-object/from16 v21, v6

    move/from16 v20, v15

    const/4 v15, 0x0

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v18

    move-object/from16 v12, v19

    move/from16 v15, v20

    move-object/from16 v6, v21

    move/from16 v3, p4

    goto :goto_5

    :cond_10
    move-object/from16 v19, v12

    move/from16 v20, v15

    const/4 v15, 0x0

    add-int/lit8 v11, v11, 0x1

    move-object v5, v10

    move-object/from16 v10, v17

    move/from16 v15, v20

    move-object/from16 v0, p2

    move/from16 v3, p4

    const/4 v6, 0x0

    goto :goto_4

    :cond_11
    const/4 v15, 0x0

    if-eqz v4, :cond_12

    .line 1618
    invoke-virtual {v7, v9, v15, v2, v5}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    move/from16 v0, p4

    goto :goto_7

    :cond_12
    move/from16 v0, p4

    .line 1620
    invoke-virtual {v7, v9, v0, v15, v5}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    :goto_7
    move v3, v0

    move-object v8, v9

    move-object/from16 v0, p2

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_13
    if-eqz v2, :cond_14

    if-eqz v9, :cond_14

    .line 1628
    invoke-direct {v1, v7}, Lorg/h2/command/Parser;->getNested(Lorg/h2/table/TableFilter;)Lorg/h2/table/TableFilter;

    move-result-object v7

    :cond_14
    return-object v7

    .line 1545
    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1564
    throw v2
.end method

.method private readLong()J
    .locals 3

    .line 3086
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3088
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto :goto_0

    .line 3089
    :cond_0
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 3090
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    :cond_1
    const/4 v0, 0x0

    .line 3092
    :goto_0
    iget v1, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_2

    .line 3097
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    .line 3099
    :cond_2
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    .line 3100
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    return-wide v0

    .line 3093
    :cond_3
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "long"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readPositiveInt()I
    .locals 2

    .line 3057
    invoke-direct {p0}, Lorg/h2/command/Parser;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 3059
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "positive integer"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readSequence()Lorg/h2/schema/Sequence;
    .locals 2

    const/4 v0, 0x0

    .line 5429
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5430
    iget-object v1, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5431
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/schema/Schema;->getSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object v0

    return-object v0

    .line 5433
    :cond_0
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->findSequence(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const v1, 0x15fb4

    .line 5438
    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readSimpleTableFilter(I)Lorg/h2/table/TableFilter;
    .locals 8

    .line 787
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object v2

    const-string v0, "AS"

    .line 789
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 791
    :cond_0
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "SET"

    .line 792
    iget-object v1, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 797
    :goto_1
    new-instance v7, Lorg/h2/table/TableFilter;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    iget-boolean v4, p0, Lorg/h2/command/Parser;->rightsChecked:Z

    iget-object v5, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    move-object v0, v7

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;I)V

    return-object v7
.end method

.method private readString()Ljava/lang/String;
    .locals 3

    .line 3120
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    .line 3121
    instance-of v1, v0, Lorg/h2/expression/ValueExpression;

    if-eqz v1, :cond_0

    .line 3124
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3122
    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    const-string v2, "string"

    invoke-static {v0, v1, v2}, Lorg/h2/message/DbException;->getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readSum()Lorg/h2/expression/Expression;
    .locals 4

    .line 2307
    invoke-direct {p0}, Lorg/h2/command/Parser;->readFactor()Lorg/h2/expression/Expression;

    move-result-object v0

    :goto_0
    const-string v1, "+"

    .line 2309
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2310
    new-instance v1, Lorg/h2/expression/Operation;

    const/4 v2, 0x1

    invoke-direct {p0}, Lorg/h2/command/Parser;->readFactor()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v1, "-"

    .line 2311
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2312
    new-instance v1, Lorg/h2/expression/Operation;

    const/4 v2, 0x2

    invoke-direct {p0}, Lorg/h2/command/Parser;->readFactor()Lorg/h2/expression/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private readTableColumn(Lorg/h2/table/TableFilter;)Lorg/h2/table/Column;
    .locals 5

    .line 690
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 691
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 693
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 694
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 697
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    .line 698
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 702
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 703
    iget-object v4, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :cond_0
    const p1, 0x15f9d

    .line 704
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 708
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_2
    const p1, 0x15fdf

    .line 710
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 713
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    const p1, 0xa476

    .line 714
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 718
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->rowId:Z

    if-eqz v1, :cond_6

    const-string v1, "_ROWID_"

    .line 719
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 720
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getRowIdColumn()Lorg/h2/table/Column;

    move-result-object p1

    return-object p1

    .line 723
    :cond_6
    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/h2/table/Table;->getColumn(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object p1

    return-object p1
.end method

.method private readTableFilter(Z)Lorg/h2/table/TableFilter;
    .locals 11

    const-string v0, "("

    .line 1179
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1180
    invoke-direct {p0}, Lorg/h2/command/Parser;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelectUnion()Lorg/h2/command/dml/Query;

    move-result-object p1

    const-string v0, ")"

    .line 1182
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/h2/command/dml/Query;->setParameterList(Ljava/util/ArrayList;)V

    .line 1184
    invoke-virtual {p1}, Lorg/h2/command/dml/Query;->init()V

    .line 1186
    iget-object v0, p0, Lorg/h2/command/Parser;->createView:Lorg/h2/command/ddl/CreateView;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v0

    goto :goto_0

    .line 1189
    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    .line 1191
    :goto_0
    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/Parser;->sqlCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->getNextSystemIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1192
    iget-object v2, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-static {v0, v2, v1, p1, v3}, Lorg/h2/table/TableView;->createTempView(Lorg/h2/engine/Session;Lorg/h2/engine/User;Ljava/lang/String;Lorg/h2/command/dml/Query;Lorg/h2/command/dml/Query;)Lorg/h2/table/TableView;

    move-result-object p1

    goto :goto_2

    .line 1196
    :cond_1
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    if-eqz v0, :cond_2

    .line 1197
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object p1

    .line 1198
    iget-object v0, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p0, p1, v0, v2, v2}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object p1

    .line 1199
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->getNested(Lorg/h2/table/TableFilter;)Lorg/h2/table/TableFilter;

    move-result-object p1

    goto :goto_1

    .line 1201
    :cond_2
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readTableFilter(Z)Lorg/h2/table/TableFilter;

    move-result-object v0

    .line 1202
    iget-object v3, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    invoke-direct {p0, v0, v3, v2, p1}, Lorg/h2/command/Parser;->readJoin(Lorg/h2/table/TableFilter;Lorg/h2/command/dml/Select;ZZ)Lorg/h2/table/TableFilter;

    move-result-object p1

    :goto_1
    const-string v0, ")"

    .line 1204
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1205
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readFromAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1207
    invoke-virtual {p1, v0}, Lorg/h2/table/TableFilter;->setAlias(Ljava/lang/String;)V

    :cond_3
    return-object p1

    :cond_4
    const-string p1, "VALUES"

    .line 1211
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1212
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->parseValuesTable(I)Lorg/h2/table/TableFilter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    :goto_2
    move-object v4, p1

    goto/16 :goto_4

    .line 1214
    :cond_5
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1215
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    const-string v3, "("

    .line 1216
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v4, "INDEX"

    .line 1217
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1220
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, ")"

    .line 1221
    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_6
    if-eqz v3, :cond_c

    .line 1225
    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v4, "PUBLIC"

    invoke-virtual {v3, v4}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v6

    const-string v3, "SYSTEM_RANGE"

    .line 1226
    invoke-direct {p0, p1, v3}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "GENERATE_SERIES"

    invoke-direct {p0, p1, v3}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    .line 1241
    :cond_7
    invoke-direct {p0, v0, p1}, Lorg/h2/command/Parser;->readFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    .line 1242
    instance-of v0, p1, Lorg/h2/expression/FunctionCall;

    if-eqz v0, :cond_9

    .line 1245
    move-object v0, p1

    check-cast v0, Lorg/h2/expression/FunctionCall;

    .line 1246
    invoke-interface {v0}, Lorg/h2/expression/FunctionCall;->isDeterministic()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    .line 1247
    iput-boolean v2, p0, Lorg/h2/command/Parser;->recompileAlways:Z

    .line 1249
    :cond_8
    new-instance v2, Lorg/h2/table/FunctionTable;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {v2, v6, v3, p1, v0}, Lorg/h2/table/FunctionTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;Lorg/h2/expression/FunctionCall;)V

    move-object p1, v2

    goto :goto_2

    .line 1243
    :cond_9
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 1228
    :cond_a
    :goto_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v7

    const-string p1, ","

    .line 1229
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1230
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v8

    const-string p1, ","

    .line 1231
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1232
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v9

    const-string p1, ")"

    .line 1233
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1234
    new-instance p1, Lorg/h2/table/RangeTable;

    const/4 v10, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lorg/h2/table/RangeTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    goto/16 :goto_2

    :cond_b
    const-string p1, ")"

    .line 1237
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 1238
    new-instance p1, Lorg/h2/table/RangeTable;

    invoke-direct {p1, v6, v7, v8, v2}, Lorg/h2/table/RangeTable;-><init>(Lorg/h2/schema/Schema;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;Z)V

    goto/16 :goto_2

    :cond_c
    const-string v0, "DUAL"

    .line 1251
    invoke-direct {p0, v0, p1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1252
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->getDualTable(Z)Lorg/h2/table/Table;

    move-result-object p1

    goto/16 :goto_2

    .line 1253
    :cond_d
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/Mode;->sysDummy1:Z

    if-eqz v0, :cond_e

    const-string v0, "SYSDUMMY1"

    invoke-direct {p0, v0, p1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1255
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->getDualTable(Z)Lorg/h2/table/Table;

    move-result-object p1

    goto/16 :goto_2

    .line 1257
    :cond_e
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->readTableOrView(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object p1

    goto/16 :goto_2

    .line 1260
    :goto_4
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readFromAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1261
    new-instance p1, Lorg/h2/table/TableFilter;

    iget-object v3, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    iget-boolean v6, p0, Lorg/h2/command/Parser;->rightsChecked:Z

    iget-object v7, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    iget v8, p0, Lorg/h2/command/Parser;->orderInFrom:I

    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Lorg/h2/command/Parser;->orderInFrom:I

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;I)V

    return-object p1
.end method

.method private readTableOrView()Lorg/h2/table/Table;
    .locals 1

    const/4 v0, 0x0

    .line 5365
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIdentifierWithSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readTableOrView(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    return-object v0
.end method

.method private readTableOrView(Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 5

    .line 5370
    iget-object v0, p0, Lorg/h2/command/Parser;->schemaName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5371
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/schema/Schema;->getTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object p1

    return-object p1

    .line 5373
    :cond_0
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 5378
    :cond_1
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getSchemaSearchPath()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5380
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 5381
    iget-object v4, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v4, v3}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v3

    .line 5382
    iget-object v4, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4, p1}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const v0, 0xa476

    .line 5388
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private readTerm()Lorg/h2/expression/Expression;
    .locals 9

    .line 2717
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2c

    const/16 v5, 0x10

    if-eq v0, v5, :cond_27

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 2965
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 2949
    :pswitch_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const-string v0, "("

    .line 2950
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ")"

    .line 2951
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2953
    :cond_0
    new-instance v0, Lorg/h2/expression/Rownum;

    iget-object v1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/h2/command/Parser;->currentPrepared:Lorg/h2/command/Prepared;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/h2/command/Parser;->currentSelect:Lorg/h2/command/dml/Select;

    :goto_0
    invoke-direct {v0, v1}, Lorg/h2/expression/Rownum;-><init>(Lorg/h2/command/Prepared;)V

    goto/16 :goto_a

    .line 2927
    :pswitch_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const-string v0, "CURRENT_TIME"

    .line 2928
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v0

    goto/16 :goto_a

    .line 2931
    :pswitch_2
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const-string v0, "CURRENT_DATE"

    .line 2932
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v0

    goto/16 :goto_a

    .line 2935
    :pswitch_3
    iget-object v0, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v1, "CURRENT_TIMESTAMP"

    invoke-static {v0, v1}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v0

    .line 2937
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const-string v1, "("

    .line 2938
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ")"

    .line 2939
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2940
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string v1, ")"

    .line 2941
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2944
    :cond_2
    invoke-virtual {v0}, Lorg/h2/expression/Function;->doneWithParameters()V

    goto/16 :goto_a

    .line 2923
    :pswitch_4
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2924
    invoke-static {v2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    goto/16 :goto_a

    .line 2919
    :pswitch_5
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2920
    invoke-static {v3}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    goto/16 :goto_a

    .line 2957
    :pswitch_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2958
    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v0

    goto/16 :goto_a

    .line 2890
    :pswitch_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2891
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v0

    goto/16 :goto_a

    .line 2869
    :pswitch_8
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2870
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    if-ne v0, v1, :cond_5

    .line 2871
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    .line 2872
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getType()I

    move-result v5

    if-ne v5, v1, :cond_3

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v1, v5, v7

    if-nez v1, :cond_3

    const/high16 v0, -0x80000000

    .line 2876
    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    goto :goto_1

    .line 2877
    :cond_3
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getType()I

    move-result v1

    const/4 v5, 0x6

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v5, Lorg/h2/value/ValueLong;->MIN_BD:Ljava/math/BigDecimal;

    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_4

    const-wide/high16 v0, -0x8000000000000000L

    .line 2882
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    .line 2884
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    goto/16 :goto_a

    .line 2886
    :cond_5
    new-instance v0, Lorg/h2/expression/Operation;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readTerm()Lorg/h2/expression/Expression;

    move-result-object v5

    invoke-direct {v0, v1, v5, v4}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    goto/16 :goto_a

    .line 2719
    :pswitch_9
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2720
    new-instance v0, Lorg/h2/expression/Variable;

    iget-object v1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/Parser;->readAliasIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/h2/expression/Variable;-><init>(Lorg/h2/engine/Session;Ljava/lang/String;)V

    const-string v1, ":="

    .line 2721
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2722
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v1

    .line 2723
    iget-object v5, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v6, "SET"

    invoke-static {v5, v6}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v5

    .line 2724
    invoke-virtual {v5, v2, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 2725
    invoke-virtual {v5, v3, v1}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    move-object v0, v5

    goto/16 :goto_a

    .line 2731
    :pswitch_a
    iget-object v0, p0, Lorg/h2/command/Parser;->sqlCommandChars:[C

    iget v5, p0, Lorg/h2/command/Parser;->parseIndex:I

    aget-char v0, v0, v5

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    .line 2732
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const v5, 0x1600b

    if-eqz v0, :cond_c

    .line 2734
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 2736
    iget-object v0, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 2737
    iget-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 2741
    iget-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_6

    .line 2745
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    goto :goto_2

    .line 2742
    :cond_6
    invoke-static {v5}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 2740
    :cond_7
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 2747
    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    sub-int/2addr v0, v3

    if-ltz v0, :cond_b

    const v1, 0x186a0

    if-ge v0, v1, :cond_b

    .line 2752
    iget-object v1, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_9

    .line 2753
    iget-object v1, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2754
    :goto_3
    iget-object v1, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_9

    .line 2755
    iget-object v1, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2758
    :cond_9
    iget-object v1, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Parameter;

    if-nez v1, :cond_a

    .line 2760
    new-instance v1, Lorg/h2/expression/Parameter;

    invoke-direct {v1, v0}, Lorg/h2/expression/Parameter;-><init>(I)V

    .line 2761
    iget-object v5, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2763
    :cond_a
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    move-object v0, v1

    goto :goto_4

    .line 2749
    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "parameter index"

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 2765
    :cond_c
    iget-object v0, p0, Lorg/h2/command/Parser;->indexedParameterList:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 2769
    new-instance v0, Lorg/h2/expression/Parameter;

    iget-object v1, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/h2/expression/Parameter;-><init>(I)V

    .line 2771
    :goto_4
    iget-object v1, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 2766
    :cond_d
    invoke-static {v5}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 2786
    :pswitch_b
    iget-object v0, p0, Lorg/h2/command/Parser;->currentToken:Ljava/lang/String;

    .line 2787
    iget-boolean v5, p0, Lorg/h2/command/Parser;->currentTokenQuoted:Z

    if-eqz v5, :cond_10

    .line 2788
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const-string v1, "("

    .line 2789
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2790
    invoke-direct {p0, v4, v0}, Lorg/h2/command/Parser;->readFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v0

    goto/16 :goto_a

    :cond_e
    const-string v1, "."

    .line 2791
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2792
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readTermObjectDot(Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v0

    goto/16 :goto_a

    .line 2794
    :cond_f
    new-instance v1, Lorg/h2/expression/ExpressionColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v1, v5, v4, v4, v0}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2797
    :cond_10
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const-string v5, "."

    .line 2798
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2799
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readTermObjectDot(Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v0

    goto/16 :goto_a

    :cond_11
    const-string v5, "CASE"

    .line 2800
    invoke-direct {p0, v5, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2804
    invoke-direct {p0}, Lorg/h2/command/Parser;->readCase()Lorg/h2/expression/Expression;

    move-result-object v0

    goto/16 :goto_a

    :cond_12
    const-string v5, "("

    .line 2805
    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2806
    invoke-direct {p0, v4, v0}, Lorg/h2/command/Parser;->readFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v0

    goto/16 :goto_a

    :cond_13
    const-string v5, "CURRENT_USER"

    .line 2807
    invoke-direct {p0, v5, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v0, "USER"

    .line 2808
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v0

    goto/16 :goto_a

    :cond_14
    const-string v5, "CURRENT"

    .line 2809
    invoke-direct {p0, v5, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v1, "TIMESTAMP"

    .line 2810
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "CURRENT_TIMESTAMP"

    .line 2811
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v0

    goto/16 :goto_a

    :cond_15
    const-string v1, "TIME"

    .line 2812
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "CURRENT_TIME"

    .line 2813
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v0

    goto/16 :goto_a

    :cond_16
    const-string v1, "DATE"

    .line 2814
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "CURRENT_DATE"

    .line 2815
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readFunctionWithoutParameters(Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v0

    goto/16 :goto_a

    .line 2817
    :cond_17
    new-instance v1, Lorg/h2/expression/ExpressionColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v1, v5, v4, v4, v0}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_18
    const-string v5, "NEXT"

    .line 2819
    invoke-direct {p0, v5, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v5, "VALUE"

    invoke-direct {p0, v5}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v0, "FOR"

    .line 2820
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2821
    invoke-direct {p0}, Lorg/h2/command/Parser;->readSequence()Lorg/h2/schema/Sequence;

    move-result-object v0

    .line 2822
    new-instance v1, Lorg/h2/expression/SequenceValue;

    invoke-direct {v1, v0}, Lorg/h2/expression/SequenceValue;-><init>(Lorg/h2/schema/Sequence;)V

    goto/16 :goto_9

    .line 2823
    :cond_19
    iget v5, p0, Lorg/h2/command/Parser;->currentTokenType:I

    if-ne v5, v1, :cond_23

    iget-object v1, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v1}, Lorg/h2/value/Value;->getType()I

    move-result v1

    const/16 v5, 0xd

    if-ne v1, v5, :cond_23

    const-string v1, "DATE"

    .line 2825
    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "D"

    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_7

    :cond_1a
    const-string v1, "TIME"

    .line 2830
    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "T"

    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto/16 :goto_6

    :cond_1b
    const-string v1, "TIMESTAMP"

    .line 2835
    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "TS"

    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_5

    :cond_1c
    const-string v1, "X"

    .line 2841
    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2842
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2843
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertHexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2845
    invoke-static {v0}, Lorg/h2/value/ValueBytes;->getNoCopy([B)Lorg/h2/value/ValueBytes;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    goto/16 :goto_a

    :cond_1d
    const-string v1, "E"

    .line 2846
    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2847
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\"

    const-string v5, "\\"

    .line 2852
    invoke-static {v0, v1, v5}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2853
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2854
    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    goto/16 :goto_a

    :cond_1e
    const-string v1, "N"

    .line 2855
    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2857
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2858
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2859
    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    goto/16 :goto_a

    .line 2861
    :cond_1f
    new-instance v1, Lorg/h2/expression/ExpressionColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v1, v5, v4, v4, v0}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2837
    :cond_20
    :goto_5
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2838
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2839
    invoke-static {v0}, Lorg/h2/value/ValueTimestamp;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestamp;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    goto/16 :goto_a

    .line 2832
    :cond_21
    :goto_6
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2833
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2834
    invoke-static {v0}, Lorg/h2/value/ValueTime;->parse(Ljava/lang/String;)Lorg/h2/value/ValueTime;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    goto/16 :goto_a

    .line 2827
    :cond_22
    :goto_7
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2828
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 2829
    invoke-static {v0}, Lorg/h2/value/ValueDate;->parse(Ljava/lang/String;)Lorg/h2/value/ValueDate;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    goto/16 :goto_a

    .line 2864
    :cond_23
    new-instance v1, Lorg/h2/expression/ExpressionColumn;

    iget-object v5, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v1, v5, v4, v4, v0}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_c
    const-string v0, "SELECT"

    .line 2775
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "FROM"

    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_8

    :cond_24
    const-string v0, "WITH"

    .line 2778
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2779
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseWith()Lorg/h2/command/dml/Query;

    move-result-object v0

    .line 2780
    new-instance v1, Lorg/h2/expression/Subquery;

    invoke-direct {v1, v0}, Lorg/h2/expression/Subquery;-><init>(Lorg/h2/command/dml/Query;)V

    goto :goto_9

    .line 2782
    :cond_25
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 2776
    :cond_26
    :goto_8
    invoke-direct {p0}, Lorg/h2/command/Parser;->parseSelect()Lorg/h2/command/dml/Query;

    move-result-object v0

    .line 2777
    new-instance v1, Lorg/h2/expression/Subquery;

    invoke-direct {v1, v0}, Lorg/h2/expression/Subquery;-><init>(Lorg/h2/command/dml/Query;)V

    :goto_9
    move-object v0, v1

    goto :goto_a

    .line 2894
    :cond_27
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    const-string v0, ")"

    .line 2895
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2896
    new-instance v0, Lorg/h2/expression/ExpressionList;

    new-array v1, v2, [Lorg/h2/expression/Expression;

    invoke-direct {v0, v1}, Lorg/h2/expression/ExpressionList;-><init>([Lorg/h2/expression/Expression;)V

    goto :goto_a

    .line 2898
    :cond_28
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    const-string v1, ","

    .line 2899
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2900
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2901
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    const-string v0, ")"

    .line 2902
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2903
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    .line 2904
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ","

    .line 2905
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, ")"

    .line 2906
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    .line 2910
    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/expression/Expression;

    .line 2911
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2912
    new-instance v1, Lorg/h2/expression/ExpressionList;

    invoke-direct {v1, v0}, Lorg/h2/expression/ExpressionList;-><init>([Lorg/h2/expression/Expression;)V

    goto :goto_9

    :cond_2b
    const-string v1, ")"

    .line 2914
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    goto :goto_a

    .line 2961
    :cond_2c
    iget-object v0, p0, Lorg/h2/command/Parser;->currentValue:Lorg/h2/value/Value;

    invoke-static {v0}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v0

    .line 2962
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    :cond_2d
    :goto_a
    const-string v1, "["

    .line 2967
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2968
    iget-object v1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v5, "ARRAY_GET"

    invoke-static {v1, v5}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v1

    .line 2969
    invoke-virtual {v1, v2, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 2970
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object v0

    .line 2971
    new-instance v5, Lorg/h2/expression/Operation;

    invoke-static {v3}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v6

    invoke-static {v6}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v6

    invoke-direct {v5, v3, v0, v6}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    .line 2973
    invoke-virtual {v1, v3, v5}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const-string v0, "]"

    .line 2975
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2e
    const-string v1, "::"

    .line 2977
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "PG_CATALOG"

    .line 2979
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "PG_CATALOG"

    .line 2980
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    const-string v1, "."

    .line 2981
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->read(Ljava/lang/String;)V

    :cond_2f
    const-string v1, "REGCLASS"

    .line 2983
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "PUBLIC"

    const-string v4, "PG_GET_OID"

    .line 2984
    invoke-direct {p0, v1, v4}, Lorg/h2/command/Parser;->findFunctionAlias(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/engine/FunctionAlias;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 2989
    new-array v3, v3, [Lorg/h2/expression/Expression;

    aput-object v0, v3, v2

    .line 2990
    new-instance v0, Lorg/h2/expression/JavaFunction;

    invoke-direct {v0, v1, v3}, Lorg/h2/expression/JavaFunction;-><init>(Lorg/h2/engine/FunctionAlias;[Lorg/h2/expression/Expression;)V

    goto :goto_b

    .line 2987
    :cond_30
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 2993
    :cond_31
    invoke-direct {p0, v4}, Lorg/h2/command/Parser;->parseColumnWithType(Ljava/lang/String;)Lorg/h2/table/Column;

    move-result-object v1

    .line 2994
    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v4, "CAST"

    invoke-static {v3, v4}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v3

    .line 2995
    invoke-virtual {v3, v1}, Lorg/h2/expression/Function;->setDataType(Lorg/h2/table/Column;)V

    .line 2996
    invoke-virtual {v3, v2, v0}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    move-object v0, v3

    :cond_32
    :goto_b
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readTermObjectDot(Ljava/lang/String;)Lorg/h2/expression/Expression;
    .locals 4

    const/4 v0, 0x0

    .line 2666
    invoke-direct {p0, v0, p1}, Lorg/h2/command/Parser;->readWildcardOrSequenceValue(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 2670
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 2671
    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    .line 2672
    sget-boolean v3, Lorg/h2/engine/SysProperties;->OLD_STYLE_OUTER_JOIN:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const-string v3, "("

    invoke-direct {p0, v3}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2678
    invoke-direct {p0, v2, v1}, Lorg/h2/command/Parser;->readFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v2, "."

    .line 2679
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2682
    invoke-direct {p0, p1, v1}, Lorg/h2/command/Parser;->readWildcardOrSequenceValue(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 2686
    :cond_3
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v2, "("

    .line 2687
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x15f9d

    if-eqz v2, :cond_5

    .line 2689
    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2694
    iget-object p1, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1, v1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->readFunction(Lorg/h2/schema/Schema;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    .line 2690
    :cond_4
    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    const-string v2, "."

    .line 2695
    invoke-direct {p0, v2}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2697
    iget-object v2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/h2/command/Parser;->equalsToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2703
    invoke-direct {p0, v1, v0}, Lorg/h2/command/Parser;->readWildcardOrSequenceValue(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object p1

    .line 2707
    :cond_6
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object p1

    .line 2708
    new-instance v2, Lorg/h2/expression/ExpressionColumn;

    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v2, v3, v1, v0, p1}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 2698
    :cond_7
    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 2710
    :cond_8
    new-instance v2, Lorg/h2/expression/ExpressionColumn;

    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v2, v3, p1, v1, v0}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 2712
    :cond_9
    new-instance v2, Lorg/h2/expression/ExpressionColumn;

    iget-object v3, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    invoke-direct {v2, v3, v0, p1, v1}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private readUniqueIdentifier()Ljava/lang/String;
    .locals 1

    .line 3169
    invoke-direct {p0}, Lorg/h2/command/Parser;->readColumnIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readWildcardOrSequenceValue(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/expression/Expression;
    .locals 2

    const-string v0, "*"

    .line 2639
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2640
    new-instance v0, Lorg/h2/expression/Wildcard;

    invoke-direct {v0, p1, p2}, Lorg/h2/expression/Wildcard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    .line 2643
    iget-object p1, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getCurrentSchemaName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "NEXTVAL"

    .line 2645
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2646
    invoke-direct {p0, p1, p2}, Lorg/h2/command/Parser;->findSequence(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2648
    new-instance p2, Lorg/h2/expression/SequenceValue;

    invoke-direct {p2, p1}, Lorg/h2/expression/SequenceValue;-><init>(Lorg/h2/schema/Sequence;)V

    return-object p2

    :cond_2
    const-string v0, "CURRVAL"

    .line 2650
    invoke-direct {p0, v0}, Lorg/h2/command/Parser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2651
    invoke-direct {p0, p1, p2}, Lorg/h2/command/Parser;->findSequence(Ljava/lang/String;Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2653
    iget-object p2, p0, Lorg/h2/command/Parser;->database:Lorg/h2/engine/Database;

    const-string v0, "CURRVAL"

    invoke-static {p2, v0}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object p2

    const/4 v0, 0x0

    .line 2654
    invoke-virtual {p1}, Lorg/h2/schema/Sequence;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    const/4 v0, 0x1

    .line 2656
    invoke-virtual {p1}, Lorg/h2/schema/Sequence;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    .line 2658
    invoke-virtual {p2}, Lorg/h2/expression/Function;->doneWithParameters()V

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private setSQL(Lorg/h2/command/Prepared;Ljava/lang/String;I)V
    .locals 2

    .line 2083
    iget-object v0, p0, Lorg/h2/command/Parser;->originalSQL:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->lastParseIndex:I

    invoke-virtual {v0, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2087
    :cond_0
    invoke-virtual {p1, p3}, Lorg/h2/command/Prepared;->setSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static sortTableFilters(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableFilter;",
            ">;)V"
        }
    .end annotation

    .line 1908
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1913
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/TableFilter;

    const/4 v2, 0x1

    move-object v3, v1

    const/4 v1, 0x1

    .line 1914
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1915
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/TableFilter;

    .line 1916
    invoke-static {v3, v4}, Lorg/h2/command/Parser;->compareTableFilters(Lorg/h2/table/TableFilter;Lorg/h2/table/TableFilter;)I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 1924
    sget-object v0, Lorg/h2/command/Parser;->TABLE_FILTER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-void
.end method

.method private tableIfTableExists(Lorg/h2/schema/Schema;Ljava/lang/String;Z)Lorg/h2/table/Table;
    .locals 1

    .line 5670
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0, p2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0xa476

    .line 5672
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public getSession()Lorg/h2/engine/Session;
    .locals 1

    .line 3476
    iget-object v0, p0, Lorg/h2/command/Parser;->session:Lorg/h2/engine/Session;

    return-object v0
.end method

.method parse(Ljava/lang/String;)Lorg/h2/command/Prepared;
    .locals 3

    const/4 v0, 0x0

    .line 289
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->parse(Ljava/lang/String;Z)Lorg/h2/command/Prepared;

    move-result-object v0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v1

    const v2, 0xa410

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 293
    invoke-direct {p0, p1, v0}, Lorg/h2/command/Parser;->parse(Ljava/lang/String;Z)Lorg/h2/command/Prepared;

    move-result-object v0

    .line 298
    :goto_0
    iget-boolean p1, p0, Lorg/h2/command/Parser;->recompileAlways:Z

    invoke-virtual {v0, p1}, Lorg/h2/command/Prepared;->setPrepareAlways(Z)V

    .line 299
    iget-object p1, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lorg/h2/command/Prepared;->setParameterList(Ljava/util/ArrayList;)V

    return-object v0

    .line 295
    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public parseExpression(Ljava/lang/String;)Lorg/h2/expression/Expression;
    .locals 1

    .line 6190
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    .line 6191
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->initialize(Ljava/lang/String;)V

    .line 6192
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 6193
    invoke-direct {p0}, Lorg/h2/command/Parser;->readExpression()Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1
.end method

.method public parseTableName(Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 1

    .line 6203
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Parser;->parameters:Ljava/util/ArrayList;

    .line 6204
    invoke-direct {p0, p1}, Lorg/h2/command/Parser;->initialize(Ljava/lang/String;)V

    .line 6205
    invoke-direct {p0}, Lorg/h2/command/Parser;->read()V

    .line 6206
    invoke-direct {p0}, Lorg/h2/command/Parser;->readTableOrView()Lorg/h2/table/Table;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;
    .locals 2

    .line 238
    invoke-virtual {p0, p1}, Lorg/h2/command/Parser;->parse(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->prepare()V

    .line 240
    iget v0, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-object p1

    .line 241
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public prepareCommand(Ljava/lang/String;)Lorg/h2/command/Command;
    .locals 4

    .line 254
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/command/Parser;->parse(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v0

    const-string v1, ";"

    .line 255
    invoke-direct {p0, v1}, Lorg/h2/command/Parser;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    iget v2, p0, Lorg/h2/command/Parser;->currentTokenType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-direct {p0}, Lorg/h2/command/Parser;->getSyntaxError()Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 259
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/h2/command/Prepared;->prepare()V

    .line 260
    new-instance v2, Lorg/h2/command/CommandContainer;

    invoke-direct {v2, p0, p1, v0}, Lorg/h2/command/CommandContainer;-><init>(Lorg/h2/command/Parser;Ljava/lang/String;Lorg/h2/command/Prepared;)V

    if-eqz v1, :cond_2

    .line 262
    iget-object v0, p0, Lorg/h2/command/Parser;->originalSQL:Ljava/lang/String;

    iget v1, p0, Lorg/h2/command/Parser;->parseIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    new-instance v1, Lorg/h2/command/CommandList;

    invoke-direct {v1, p0, p1, v2, v0}, Lorg/h2/command/CommandList;-><init>(Lorg/h2/command/Parser;Ljava/lang/String;Lorg/h2/command/Command;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    return-object v1

    :catch_0
    move-exception p1

    .line 275
    iget-object v0, p0, Lorg/h2/command/Parser;->originalSQL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setRightsChecked(Z)V
    .locals 0

    .line 6176
    iput-boolean p1, p0, Lorg/h2/command/Parser;->rightsChecked:Z

    return-void
.end method

.method public setSuppliedParameterList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;)V"
        }
    .end annotation

    .line 6180
    iput-object p1, p0, Lorg/h2/command/Parser;->suppliedParameterList:Ljava/util/ArrayList;

    return-void
.end method
