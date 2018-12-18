.class public Lorg/h2/bnf/RuleFixed;
.super Ljava/lang/Object;
.source "RuleFixed.java"

# interfaces
.implements Lorg/h2/bnf/Rule;


# static fields
.field public static final AF:I = 0xd

.field public static final ANY_EXCEPT_2_DOLLAR:I = 0x8

.field public static final ANY_EXCEPT_DOUBLE_QUOTE:I = 0x4

.field public static final ANY_EXCEPT_SINGLE_QUOTE:I = 0x3

.field public static final ANY_UNTIL_END:I = 0x6

.field public static final ANY_UNTIL_EOL:I = 0x5

.field public static final ANY_WORD:I = 0x7

.field public static final AZ_UNDERSCORE:I = 0xc

.field public static final CLOSE_BRACKET:I = 0x10

.field public static final CONCAT:I = 0xb

.field public static final DIGIT:I = 0xe

.field public static final HEX_START:I = 0xa

.field public static final HMS:I = 0x1

.field public static final NANOS:I = 0x2

.field public static final OPEN_BRACKET:I = 0xf

.field public static final YMD:I


# instance fields
.field private final type:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/h2/bnf/RuleFixed;->type:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/h2/bnf/BnfVisitor;)V
    .locals 1

    .line 34
    iget v0, p0, Lorg/h2/bnf/RuleFixed;->type:I

    invoke-interface {p1, v0}, Lorg/h2/bnf/BnfVisitor;->visitRuleFixed(I)V

    return-void
.end method

.method public autoComplete(Lorg/h2/bnf/Sentence;)Z
    .locals 7

    .line 44
    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->stopIfRequired()V

    .line 45
    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget v1, p0, Lorg/h2/bnf/RuleFixed;->type:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 193
    :pswitch_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/bnf/RuleFixed;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 181
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "]"

    const-string v2, "]"

    .line 182
    invoke-virtual {p1, v1, v2, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    .line 184
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    :cond_1
    :goto_0
    move-object v1, v0

    goto/16 :goto_e

    .line 173
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "["

    const-string v2, "["

    .line 174
    invoke-virtual {p1, v1, v2, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    .line 165
    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 168
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "digit"

    const-string v5, "1"

    .line 169
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 154
    :pswitch_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_4

    const/16 v2, 0x46

    if-gt v1, v2, :cond_4

    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 160
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "hex character"

    const-string v5, "0A"

    .line 161
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 145
    :pswitch_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_6

    .line 147
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v0

    .line 149
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "character"

    const-string v5, "A"

    .line 150
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_c

    :pswitch_6
    const-string v1, "|"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "||"

    const-string v2, "|"

    .line 136
    invoke-virtual {p1, v1, v2, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "||"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    .line 139
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "||"

    const-string v2, "||"

    .line 140
    invoke-virtual {p1, v1, v2, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_7
    const-string v1, "0X"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    const-string v1, "0"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "0x"

    const-string v2, "x"

    .line 129
    invoke-virtual {p1, v1, v2, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 130
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "0x"

    const-string v2, "0x"

    .line 131
    invoke-virtual {p1, v1, v2, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    :goto_4
    move-object v1, v0

    goto/16 :goto_c

    .line 127
    :cond_c
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c

    :pswitch_8
    move-object v1, v0

    .line 93
    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    const-string v2, "$$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 94
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 96
    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "anything"

    const-string v5, "Hello World"

    .line 97
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "$$"

    const-string v5, "$$"

    .line 98
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_c

    :pswitch_9
    move-object v1, v0

    .line 118
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    invoke-static {v1}, Lorg/h2/bnf/Bnf;->startWithSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 121
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "anything"

    const-string v5, "anything"

    .line 122
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_c

    :pswitch_a
    move-object v1, v0

    .line 103
    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_f

    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_f
    const-string v5, "\"\""

    .line 106
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 112
    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "anything"

    const-string v5, "identifier"

    .line 113
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "\""

    const-string v5, "\""

    .line 114
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_c

    :pswitch_b
    move-object v1, v0

    .line 78
    :goto_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_11

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x27

    if-eq v5, v6, :cond_11

    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_11
    const-string v5, "\'\'"

    .line 81
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 87
    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "anything"

    const-string v5, "Hello World"

    .line 88
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "\'"

    const-string v5, "\'"

    .line 89
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_c

    :pswitch_c
    move-object v1, v0

    .line 68
    :goto_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 71
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "nanoseconds"

    const-string v5, "0"

    .line 72
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_e

    :pswitch_d
    move-object v1, v0

    .line 60
    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    const-string v2, "0123456789:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_14

    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 63
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "12:00:00"

    const-string v5, "1"

    .line 64
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_15
    :goto_c
    const/4 v2, 0x0

    goto :goto_f

    :pswitch_e
    move-object v1, v0

    .line 50
    :goto_d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    const-string v2, "0123456789-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_16

    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 53
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "2006-01-01"

    const-string v5, "1"

    .line 54
    invoke-virtual {p1, v2, v5, v4}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_17
    :goto_e
    const/4 v2, 0x1

    .line 195
    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz v2, :cond_18

    .line 201
    :goto_10
    invoke-static {v1}, Lorg/h2/bnf/Bnf;->startWithSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 202
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 205
    :cond_18
    invoke-virtual {p1, v1}, Lorg/h2/bnf/Sentence;->setQuery(Ljava/lang/String;)V

    return v4

    :cond_19
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setLinks(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/RuleHead;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
