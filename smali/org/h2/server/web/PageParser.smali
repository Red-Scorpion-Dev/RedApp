.class public Lorg/h2/server/web/PageParser;
.super Ljava/lang/Object;
.source "PageParser.java"


# static fields
.field private static final TAB_WIDTH:I = 0x4


# instance fields
.field private final len:I

.field private final page:Ljava/lang/String;

.field private pos:I

.field private result:Ljava/lang/StringBuilder;

.field private final settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    .line 29
    iput p3, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/h2/server/web/PageParser;->len:I

    .line 31
    iput-object p2, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/h2/server/web/PageParser;->len:I

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 234
    invoke-static {p0, v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static escapeHtml(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "&nbsp;"

    return-object p0

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 248
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_e

    .line 249
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_a

    const/16 v7, 0x9

    if-ne v5, v7, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0xa

    if-eq v5, v4, :cond_8

    const/16 v4, 0x22

    if-eq v5, v4, :cond_7

    const/16 v4, 0x24

    if-eq v5, v4, :cond_6

    const/16 v4, 0x3c

    if-eq v5, v4, :cond_5

    const/16 v4, 0x3e

    if-eq v5, v4, :cond_4

    packed-switch v5, :pswitch_data_0

    const/16 v4, 0x80

    if-lt v5, v4, :cond_3

    const-string v4, "&#"

    .line 293
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v4, "&#39;"

    .line 281
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v4, "&amp;"

    .line 275
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v4, "&gt;"

    .line 272
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v4, "&lt;"

    .line 269
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v4, "&#36;"

    .line 266
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-string v4, "&quot;"

    .line 278
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    const-string v4, "<br />"

    .line 285
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_6

    .line 288
    :cond_9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    :goto_2
    move v7, v4

    const/4 v4, 0x0

    :goto_3
    if-ne v5, v6, :cond_b

    const/4 v8, 0x1

    goto :goto_4

    :cond_b
    const/4 v8, 0x4

    :goto_4
    if-ge v4, v8, :cond_d

    if-eqz v7, :cond_c

    if-eqz p1, :cond_c

    const-string v8, "&nbsp;"

    .line 254
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 256
    :cond_c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    move v4, v7

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 300
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-static {p0, v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 313
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 317
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 318
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_5

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    const/16 v3, 0x27

    if-eq v2, v3, :cond_3

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v2, "\\n"

    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v2, "\\t"

    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "\\\\"

    .line 327
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "\\\'"

    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v2, "\\\""

    .line 321
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v2, "\\r"

    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/16 v0, 0x2e

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 170
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/h2/server/web/PageParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/server/web/PageParser;-><init>(Ljava/lang/String;Ljava/util/Map;I)V

    .line 44
    invoke-direct {v0}, Lorg/h2/server/web/PageParser;->replaceTags()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseAll()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    .line 80
    iget v2, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 81
    :goto_0
    iget v3, p0, Lorg/h2/server/web/PageParser;->len:I

    if-ge v2, v3, :cond_c

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x24

    if-eq v3, v4, :cond_9

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_0

    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v4, v2, 0x3

    .line 85
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2f

    if-ne v4, v6, :cond_1

    .line 87
    iput v2, p0, Lorg/h2/server/web/PageParser;->pos:I

    return-void

    :cond_1
    add-int/lit8 v4, v2, 0x2

    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_8

    .line 90
    iput v2, p0, Lorg/h2/server/web/PageParser;->pos:I

    const-string v3, "<c:forEach"

    .line 91
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "var"

    .line 92
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->readParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "items"

    .line 93
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->readParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ">"

    .line 94
    invoke-direct {p0, v4}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    .line 95
    iget v4, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 96
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 98
    iget-object v3, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    const-string v5, "?items?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 101
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "</c:forEach>"

    .line 102
    invoke-direct {p0, v5}, Lorg/h2/server/web/PageParser;->parseBlockUntil(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 105
    iget-object v6, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iput v4, p0, Lorg/h2/server/web/PageParser;->pos:I

    const-string v5, "</c:forEach>"

    .line 107
    invoke-direct {p0, v5}, Lorg/h2/server/web/PageParser;->parseBlockUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    iget-object v6, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v3, "<c:if"

    .line 110
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->readIf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "test"

    .line 111
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->readParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "==\'"

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_5

    .line 114
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->setError(I)V

    return-void

    :cond_5
    add-int/lit8 v2, v4, 0x3

    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 118
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-direct {p0, v3}, Lorg/h2/server/web/PageParser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ">"

    .line 120
    invoke-direct {p0, v4}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    const-string v4, "</c:if>"

    .line 121
    invoke-direct {p0, v4}, Lorg/h2/server/web/PageParser;->parseBlockUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    iget v5, p0, Lorg/h2/server/web/PageParser;->pos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 124
    iget-object v2, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_6
    iget v2, p0, Lorg/h2/server/web/PageParser;->pos:I

    goto :goto_2

    .line 127
    :cond_7
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->setError(I)V

    return-void

    .line 132
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 137
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    if-le v4, v5, :cond_b

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_b

    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0x7d

    .line 139
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_a

    .line 141
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->setError(I)V

    return-void

    .line 144
    :cond_a
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-direct {p0, v2}, Lorg/h2/server/web/PageParser;->replaceTags(Ljava/lang/String;)V

    move v2, v3

    goto :goto_2

    .line 149
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 157
    :cond_c
    iput v2, p0, Lorg/h2/server/web/PageParser;->pos:I

    return-void
.end method

.method private parseBlockUntil(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/h2/server/web/PageParser;

    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    iget v3, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/server/web/PageParser;-><init>(Ljava/lang/String;Ljava/util/Map;I)V

    .line 56
    invoke-direct {v0}, Lorg/h2/server/web/PageParser;->parseAll()V

    .line 57
    invoke-direct {v0, p1}, Lorg/h2/server/web/PageParser;->readIf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget p1, v0, Lorg/h2/server/web/PageParser;->pos:I

    iput p1, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 61
    iget-object p1, v0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    iget v0, v0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private read(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1}, Lorg/h2/server/web/PageParser;->readIf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    iget v1, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private readIf(Ljava/lang/String;)Z
    .locals 4

    .line 208
    invoke-direct {p0}, Lorg/h2/server/web/PageParser;->skipSpaces()V

    .line 209
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    iget v1, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 211
    invoke-direct {p0}, Lorg/h2/server/web/PageParser;->skipSpaces()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v3
.end method

.method private readParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 182
    invoke-direct {p0, p1}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    const-string p1, "="

    .line 183
    invoke-direct {p0, p1}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    const-string p1, "\""

    .line 184
    invoke-direct {p0, p1}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    .line 185
    iget p1, p0, Lorg/h2/server/web/PageParser;->pos:I

    .line 186
    :goto_0
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    iget v1, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 187
    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    goto :goto_0

    .line 189
    :cond_0
    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    const-string v1, "\""

    .line 190
    invoke-direct {p0, v1}, Lorg/h2/server/web/PageParser;->read(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/h2/server/web/PageParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private replaceTags()Ljava/lang/String;
    .locals 2

    .line 66
    :try_start_0
    invoke-direct {p0}, Lorg/h2/server/web/PageParser;->parseAll()V

    .line 67
    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    iget v1, p0, Lorg/h2/server/web/PageParser;->len:I

    if-eq v0, v1, :cond_0

    .line 68
    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-direct {p0, v0}, Lorg/h2/server/web/PageParser;->setError(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-direct {p0, v0}, Lorg/h2/server/web/PageParser;->setError(I)V

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceTags(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/server/web/PageParser;->settings:Ljava/util/Map;

    invoke-static {p1, v1}, Lorg/h2/server/web/PageParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private setError(I)V
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "####BUG####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    .line 51
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private skipSpaces()V
    .locals 2

    .line 196
    :goto_0
    iget-object v0, p0, Lorg/h2/server/web/PageParser;->page:Ljava/lang/String;

    iget v1, p0, Lorg/h2/server/web/PageParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 197
    iget v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/server/web/PageParser;->pos:I

    goto :goto_0

    :cond_0
    return-void
.end method
