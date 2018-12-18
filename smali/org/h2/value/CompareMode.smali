.class public Lorg/h2/value/CompareMode;
.super Ljava/lang/Object;
.source "CompareMode.java"


# static fields
.field private static final CAN_USE_ICU4J:Z

.field public static final DEFAULT:Ljava/lang/String; = "DEFAULT_"

.field public static final ICU4J:Ljava/lang/String; = "ICU4J_"

.field public static final OFF:Ljava/lang/String; = "OFF"

.field public static final SIGNED:Ljava/lang/String; = "SIGNED"

.field public static final UNSIGNED:Ljava/lang/String; = "UNSIGNED"

.field private static volatile lastUsed:Lorg/h2/value/CompareMode;


# instance fields
.field private final binaryUnsigned:Z

.field private final name:Ljava/lang/String;

.field private final strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.ibm.icu.text.Collator"

    .line 57
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    sput-boolean v0, Lorg/h2/value/CompareMode;->CAN_USE_ICU4J:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/h2/value/CompareMode;->name:Ljava/lang/String;

    .line 75
    iput p2, p0, Lorg/h2/value/CompareMode;->strength:I

    .line 76
    iput-boolean p3, p0, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    return-void
.end method

.method static compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z
    .locals 1

    .line 196
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/h2/value/CompareMode;->getName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getCollator(Ljava/lang/String;)Ljava/text/Collator;
    .locals 6

    const-string v0, "ICU4J_"

    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ICU4J_"

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "DEFAULT_"

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DEFAULT_"

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 214
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 215
    new-instance v0, Ljava/util/Locale;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-direct {v0, v1, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {v0, p0}, Lorg/h2/value/CompareMode;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const/16 v0, 0x5f

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 223
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {v4, p0}, Lorg/h2/value/CompareMode;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-static {v4}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    :cond_3
    :goto_1
    if-nez v3, :cond_5

    .line 232
    invoke-static {}, Ljava/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v4, v0, v2

    .line 233
    invoke-static {v4, p0}, Lorg/h2/value/CompareMode;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 234
    invoke-static {v4}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-object v3
.end method

.method public static getInstance(Ljava/lang/String;I)Lorg/h2/value/CompareMode;
    .locals 1

    .line 90
    sget-boolean v0, Lorg/h2/engine/SysProperties;->SORT_BINARY_UNSIGNED:Z

    invoke-static {p0, p1, v0}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;
    .locals 2

    .line 105
    sget-object v0, Lorg/h2/value/CompareMode;->lastUsed:Lorg/h2/value/CompareMode;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, v0, Lorg/h2/value/CompareMode;->name:Ljava/lang/String;

    invoke-static {v1, p0}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/h2/value/CompareMode;->strength:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, v0, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_5

    const-string v0, "OFF"

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "ICU4J_"

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const-string v1, "ICU4J_"

    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "DEFAULT_"

    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "DEFAULT_"

    .line 122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 124
    :cond_3
    sget-boolean v0, Lorg/h2/value/CompareMode;->CAN_USE_ICU4J:Z

    :goto_0
    if-eqz v0, :cond_4

    .line 127
    new-instance v0, Lorg/h2/value/CompareModeIcu4J;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/value/CompareModeIcu4J;-><init>(Ljava/lang/String;IZ)V

    goto :goto_2

    .line 129
    :cond_4
    new-instance v0, Lorg/h2/value/CompareModeDefault;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/value/CompareModeDefault;-><init>(Ljava/lang/String;IZ)V

    goto :goto_2

    .line 114
    :cond_5
    :goto_1
    new-instance v0, Lorg/h2/value/CompareMode;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/value/CompareMode;-><init>(Ljava/lang/String;IZ)V

    .line 132
    :goto_2
    sput-object v0, Lorg/h2/value/CompareMode;->lastUsed:Lorg/h2/value/CompareMode;

    return-object v0
.end method

.method public static getName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 180
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareString(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    if-eqz p3, :cond_0

    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 170
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 258
    :cond_0
    instance-of v1, p1, Lorg/h2/value/CompareMode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 261
    :cond_1
    check-cast p1, Lorg/h2/value/CompareMode;

    .line 262
    invoke-virtual {p0}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 265
    :cond_2
    iget v1, p0, Lorg/h2/value/CompareMode;->strength:I

    iget v3, p1, Lorg/h2/value/CompareMode;->strength:I

    if-eq v1, v3, :cond_3

    return v2

    .line 268
    :cond_3
    iget-boolean v1, p0, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    iget-boolean p1, p1, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public equalsChars(Ljava/lang/String;ILjava/lang/String;IZ)Z
    .locals 0

    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 149
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eqz p5, :cond_0

    .line 151
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    .line 152
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/h2/value/CompareMode;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "OFF"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/value/CompareMode;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getStrength()I
    .locals 1

    .line 247
    iget v0, p0, Lorg/h2/value/CompareMode;->strength:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 276
    invoke-virtual {p0}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/h2/value/CompareMode;->strength:I

    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public isBinaryUnsigned()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    return v0
.end method
