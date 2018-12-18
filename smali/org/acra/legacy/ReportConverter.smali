.class Lorg/acra/legacy/ReportConverter;
.super Ljava/lang/Object;
.source "ReportConverter.java"


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/acra/legacy/ReportConverter;->context:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized legacyLoad(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x28

    .line 135
    :try_start_0
    new-array v0, v0, [C

    .line 139
    new-instance v1, Lorg/acra/collector/CrashReportData;

    invoke-direct {v1}, Lorg/acra/collector/CrashReportData;-><init>()V

    .line 140
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    move-object/from16 v4, p1

    invoke-direct {v2, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x2

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v11, v0

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    :goto_0
    const/16 v16, 0x1

    .line 143
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v6

    if-ne v6, v8, :cond_7

    if-ne v12, v5, :cond_1

    if-le v13, v7, :cond_0

    goto :goto_2

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.08"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_2
    if-ne v14, v8, :cond_2

    if-lez v0, :cond_2

    move v14, v0

    :cond_2
    if-ltz v14, :cond_6

    .line 305
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11, v10, v0}, Ljava/lang/String;-><init>([CII)V

    .line 306
    const-class v0, Lorg/acra/ReportField;

    invoke-virtual {v3, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    .line 307
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    if-ne v12, v9, :cond_3

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u0000"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :cond_3
    :try_start_2
    new-instance v5, Lorg/acra/model/ComplexElement;

    invoke-direct {v5, v3}, Lorg/acra/model/ComplexElement;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 316
    :catch_0
    :try_start_3
    new-instance v5, Lorg/acra/model/NumberElement;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/acra/model/NumberElement;-><init>(Ljava/lang/Number;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    :try_start_4
    const-string v5, "true"

    .line 318
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 319
    new-instance v5, Lorg/acra/model/BooleanElement;

    invoke-direct {v5, v9}, Lorg/acra/model/BooleanElement;-><init>(Z)V

    goto :goto_3

    :cond_4
    const-string v5, "false"

    .line 320
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 321
    new-instance v5, Lorg/acra/model/BooleanElement;

    invoke-direct {v5, v10}, Lorg/acra/model/BooleanElement;-><init>(Z)V

    goto :goto_3

    .line 323
    :cond_5
    new-instance v5, Lorg/acra/model/StringElement;

    invoke-direct {v5, v3}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    .line 327
    :goto_3
    invoke-virtual {v1, v0, v5}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_6
    invoke-static/range {p1 .. p1}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 334
    :try_start_5
    invoke-static {v2}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 332
    monitor-exit p0

    return-object v1

    :cond_7
    int-to-char v6, v6

    .line 149
    :try_start_6
    array-length v3, v11

    if-ne v0, v3, :cond_8

    .line 150
    array-length v3, v11

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 151
    invoke-static {v11, v10, v3, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v11, v3

    :cond_8
    const/16 v3, 0x85

    const/16 v10, 0xa

    if-ne v12, v5, :cond_d

    const/16 v5, 0x10

    .line 155
    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_a

    shl-int/lit8 v15, v15, 0x4

    add-int/2addr v15, v5

    add-int/lit8 v13, v13, 0x1

    if-ge v13, v7, :cond_9

    const/4 v5, 0x2

    :goto_4
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_9
    :goto_5
    move v5, v15

    goto :goto_6

    :cond_a
    if-le v13, v7, :cond_c

    goto :goto_5

    :goto_6
    add-int/lit8 v12, v0, 0x1

    int-to-char v8, v5

    .line 166
    aput-char v8, v11, v0

    if-eq v6, v10, :cond_b

    if-eq v6, v3, :cond_b

    move v15, v5

    move v0, v12

    const/4 v5, 0x2

    const/4 v8, -0x1

    goto/16 :goto_b

    :cond_b
    move v15, v5

    move v0, v12

    const/4 v12, 0x0

    goto :goto_7

    .line 163
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.09"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_7
    const/16 v5, 0xd

    if-ne v12, v9, :cond_15

    if-eq v6, v10, :cond_14

    if-eq v6, v5, :cond_13

    const/16 v8, 0x62

    if-eq v6, v8, :cond_11

    const/16 v8, 0x66

    if-eq v6, v8, :cond_10

    const/16 v8, 0x6e

    if-eq v6, v8, :cond_f

    const/16 v8, 0x72

    if-eq v6, v8, :cond_e

    if-eq v6, v3, :cond_14

    packed-switch v6, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1

    :pswitch_1
    const/16 v6, 0x9

    goto :goto_8

    :cond_e
    const/16 v6, 0xd

    goto :goto_8

    :cond_f
    const/16 v6, 0xa

    goto :goto_8

    :cond_10
    const/16 v6, 0xc

    goto :goto_8

    :cond_11
    const/16 v6, 0x8

    :goto_8
    const/4 v3, 0x5

    :cond_12
    :goto_9
    const/4 v10, 0x0

    goto/16 :goto_f

    :cond_13
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x3

    goto/16 :goto_1

    :cond_14
    :goto_a
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x5

    goto/16 :goto_1

    :cond_15
    if-eq v6, v10, :cond_26

    if-eq v6, v5, :cond_16

    const/16 v8, 0x21

    if-eq v6, v8, :cond_1a

    const/16 v8, 0x23

    if-eq v6, v8, :cond_1a

    const/16 v5, 0x3a

    if-eq v6, v5, :cond_19

    const/16 v5, 0x3d

    if-eq v6, v5, :cond_19

    const/16 v5, 0x5c

    if-eq v6, v5, :cond_17

    if-eq v6, v3, :cond_16

    goto :goto_d

    :cond_16
    const/4 v3, 0x5

    goto/16 :goto_11

    :cond_17
    if-ne v12, v7, :cond_18

    move v14, v0

    :cond_18
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_19
    const/4 v8, -0x1

    if-ne v14, v8, :cond_1d

    move v14, v0

    const/4 v5, 0x2

    :goto_b
    const/4 v10, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_1a
    const/4 v8, -0x1

    if-eqz v16, :cond_1d

    .line 207
    :goto_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v6

    if-ne v6, v8, :cond_1b

    goto :goto_e

    :cond_1b
    int-to-char v6, v6

    if-eq v6, v5, :cond_21

    if-eq v6, v10, :cond_21

    if-ne v6, v3, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v8, -0x1

    goto :goto_c

    .line 273
    :cond_1d
    :goto_d
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x3

    if-ne v12, v3, :cond_1e

    const/4 v12, 0x5

    :cond_1e
    if-eqz v0, :cond_20

    if-eq v0, v14, :cond_20

    const/4 v3, 0x5

    if-ne v12, v3, :cond_1f

    goto :goto_e

    :cond_1f
    const/4 v5, -0x1

    if-ne v14, v5, :cond_23

    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x4

    goto/16 :goto_1

    :cond_20
    const/4 v3, 0x5

    :cond_21
    :goto_e
    const/4 v5, 0x2

    const/4 v8, -0x1

    goto/16 :goto_4

    :cond_22
    const/4 v3, 0x5

    :cond_23
    move v10, v12

    if-eq v10, v3, :cond_12

    const/4 v5, 0x3

    if-ne v10, v5, :cond_24

    goto :goto_9

    :cond_24
    :goto_f
    if-ne v10, v7, :cond_25

    move v14, v0

    const/4 v12, 0x0

    goto :goto_10

    :cond_25
    move v12, v10

    :goto_10
    add-int/lit8 v5, v0, 0x1

    .line 295
    aput-char v6, v11, v0

    move v0, v5

    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/16 v16, 0x0

    goto/16 :goto_1

    :goto_11
    const/4 v5, 0x3

    goto :goto_12

    :cond_26
    const/4 v3, 0x5

    const/4 v5, 0x3

    if-ne v12, v5, :cond_27

    goto/16 :goto_a

    :cond_27
    :goto_12
    if-gtz v0, :cond_29

    if-nez v0, :cond_28

    if-nez v14, :cond_28

    goto :goto_13

    :cond_28
    const/4 v6, -0x1

    const/4 v12, 0x0

    goto :goto_15

    :cond_29
    :goto_13
    const/4 v6, -0x1

    if-ne v14, v6, :cond_2a

    move v14, v0

    .line 235
    :cond_2a
    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, v11, v10, v0}, Ljava/lang/String;-><init>([CII)V

    .line 236
    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 239
    :try_start_7
    new-instance v10, Lorg/acra/model/ComplexElement;

    invoke-direct {v10, v0}, Lorg/acra/model/ComplexElement;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_14

    .line 242
    :catch_2
    :try_start_8
    new-instance v10, Lorg/acra/model/NumberElement;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v12

    invoke-direct {v10, v12}, Lorg/acra/model/NumberElement;-><init>(Ljava/lang/Number;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_14

    :catch_3
    :try_start_9
    const-string v10, "true"

    .line 244
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 245
    new-instance v10, Lorg/acra/model/BooleanElement;

    invoke-direct {v10, v9}, Lorg/acra/model/BooleanElement;-><init>(Z)V

    goto :goto_14

    :cond_2b
    const-string v10, "false"

    .line 246
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 247
    new-instance v10, Lorg/acra/model/BooleanElement;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lorg/acra/model/BooleanElement;-><init>(Z)V

    goto :goto_14

    .line 249
    :cond_2c
    new-instance v10, Lorg/acra/model/StringElement;

    invoke-direct {v10, v0}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    .line 253
    :goto_14
    const-class v0, Lorg/acra/ReportField;

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_15
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v14, -0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 334
    :try_start_a
    invoke-static {v2}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    .line 132
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method convert()V
    .locals 11

    .line 66
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Converting unsent ACRA reports to json"

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lorg/acra/file/ReportLocator;

    iget-object v1, p0, Lorg/acra/legacy/ReportConverter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/acra/file/ReportLocator;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v1, Lorg/acra/file/CrashReportPersister;

    invoke-direct {v1}, Lorg/acra/file/CrashReportPersister;-><init>()V

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {v0}, Lorg/acra/file/ReportLocator;->getUnapprovedReports()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-virtual {v0}, Lorg/acra/file/ReportLocator;->getApprovedReports()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    const/4 v4, 0x0

    .line 76
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v6, "ISO8859-1"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/acra/legacy/ReportConverter;->legacyLoad(Ljava/io/Reader;)Lorg/acra/collector/CrashReportData;

    move-result-object v4

    .line 78
    sget-object v6, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-virtual {v4, v6}, Lorg/acra/collector/CrashReportData;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    invoke-virtual {v4, v6}, Lorg/acra/collector/CrashReportData;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    invoke-virtual {v1, v4, v3}, Lorg/acra/file/CrashReportPersister;->store(Lorg/acra/collector/CrashReportData;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 83
    :cond_0
    invoke-static {v3}, Lorg/acra/util/IOUtils;->deleteReport(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v4

    goto :goto_3

    :catch_1
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    .line 88
    :goto_1
    :try_start_2
    invoke-virtual {v1, v3}, Lorg/acra/file/CrashReportPersister;->load(Ljava/io/File;)Lorg/acra/collector/CrashReportData;

    .line 89
    sget-boolean v6, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v6, :cond_1

    sget-object v6, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tried to convert already converted report file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". Ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 92
    :catch_2
    :try_start_3
    sget-object v6, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read report file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". Deleting"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8, v4}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-static {v3}, Lorg/acra/util/IOUtils;->deleteReport(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    :cond_1
    :goto_2
    invoke-static {v5}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :goto_3
    invoke-static {v5}, Lorg/acra/util/IOUtils;->safeClose(Ljava/io/Closeable;)V

    throw v0

    .line 99
    :cond_2
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unsent reports"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
