.class public Lorg/h2/engine/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# static fields
.field private static final MODES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Mode;",
            ">;"
        }
    .end annotation
.end field

.field static final REGULAR:Ljava/lang/String; = "REGULAR"


# instance fields
.field public aliasColumnName:Z

.field public allowPlusForStringConcat:Z

.field public convertInsertNullToZero:Z

.field public convertOnlyToSmallerScale:Z

.field public indexDefinitionInCreateTable:Z

.field public isolationLevelInSelectOrInsertStatement:Z

.field public logIsLogBase10:Z

.field public lowerCaseIdentifiers:Z

.field private final name:Ljava/lang/String;

.field public nullConcatIsNull:Z

.field public onDuplicateKeyUpdate:Z

.field public serialColumnIsNotPK:Z

.field public squareBracketQuotedNames:Z

.field public supportOffsetFetch:Z

.field public supportPoundSymbolForColumnNames:Z

.field public supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

.field public swapConvertFunctionParameters:Z

.field public sysDummy1:Z

.field public systemColumns:Z

.field public treatEmptyStringsAsNull:Z

.field public uniqueIndexSingleNull:Z

.field public uniqueIndexSingleNullExceptAllColumnsAreNull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/Mode;->MODES:Ljava/util/HashMap;

    .line 156
    new-instance v0, Lorg/h2/engine/Mode;

    const-string v1, "REGULAR"

    invoke-direct {v0, v1}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 157
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->nullConcatIsNull:Z

    .line 158
    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    .line 160
    new-instance v0, Lorg/h2/engine/Mode;

    const-string v2, "DB2"

    invoke-direct {v0, v2}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    .line 161
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    .line 162
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    .line 163
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->sysDummy1:Z

    .line 164
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->isolationLevelInSelectOrInsertStatement:Z

    const-string v2, "ApplicationName|ClientAccountingInformation|ClientUser|ClientCorrelationToken"

    .line 168
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    .line 171
    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    .line 173
    new-instance v0, Lorg/h2/engine/Mode;

    const-string v2, "Derby"

    invoke-direct {v0, v2}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    .line 174
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    .line 175
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNull:Z

    .line 176
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    .line 177
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->sysDummy1:Z

    .line 178
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->isolationLevelInSelectOrInsertStatement:Z

    const/4 v2, 0x0

    .line 180
    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    .line 181
    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    .line 183
    new-instance v0, Lorg/h2/engine/Mode;

    const-string v3, "HSQLDB"

    invoke-direct {v0, v3}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    .line 184
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    .line 185
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->convertOnlyToSmallerScale:Z

    .line 186
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->nullConcatIsNull:Z

    .line 187
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNull:Z

    .line 188
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->allowPlusForStringConcat:Z

    .line 193
    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    .line 194
    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    .line 196
    new-instance v0, Lorg/h2/engine/Mode;

    const-string v3, "MSSQLServer"

    invoke-direct {v0, v3}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    .line 197
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    .line 198
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->squareBracketQuotedNames:Z

    .line 199
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNull:Z

    .line 200
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->allowPlusForStringConcat:Z

    .line 201
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->swapConvertFunctionParameters:Z

    .line 202
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->supportPoundSymbolForColumnNames:Z

    .line 205
    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    .line 206
    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    .line 208
    new-instance v0, Lorg/h2/engine/Mode;

    const-string v2, "MySQL"

    invoke-direct {v0, v2}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    .line 209
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->convertInsertNullToZero:Z

    .line 210
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->indexDefinitionInCreateTable:Z

    .line 211
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->lowerCaseIdentifiers:Z

    .line 212
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->onDuplicateKeyUpdate:Z

    const-string v2, ".*"

    .line 217
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    .line 219
    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    .line 221
    new-instance v0, Lorg/h2/engine/Mode;

    const-string v2, "Oracle"

    invoke-direct {v0, v2}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    .line 222
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    .line 223
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->convertOnlyToSmallerScale:Z

    .line 224
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNullExceptAllColumnsAreNull:Z

    .line 225
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    .line 226
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->supportPoundSymbolForColumnNames:Z

    const-string v2, ".*\\..*"

    .line 229
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    .line 231
    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    .line 233
    new-instance v0, Lorg/h2/engine/Mode;

    const-string v2, "PostgreSQL"

    invoke-direct {v0, v2}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    .line 234
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    .line 235
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->nullConcatIsNull:Z

    .line 236
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    .line 237
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->systemColumns:Z

    .line 238
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->logIsLogBase10:Z

    .line 239
    iput-boolean v1, v0, Lorg/h2/engine/Mode;->serialColumnIsNotPK:Z

    const-string v1, "ApplicationName"

    .line 243
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    .line 245
    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    .line 249
    iput-object p1, p0, Lorg/h2/engine/Mode;->name:Ljava/lang/String;

    return-void
.end method

.method private static add(Lorg/h2/engine/Mode;)V
    .locals 2

    .line 253
    sget-object v0, Lorg/h2/engine/Mode;->MODES:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/h2/engine/Mode;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/h2/engine/Mode;
    .locals 1

    .line 263
    sget-object v0, Lorg/h2/engine/Mode;->MODES:Ljava/util/HashMap;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/engine/Mode;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/h2/engine/Mode;->name:Ljava/lang/String;

    return-object v0
.end method
