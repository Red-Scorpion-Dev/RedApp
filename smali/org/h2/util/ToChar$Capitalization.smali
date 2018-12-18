.class final enum Lorg/h2/util/ToChar$Capitalization;
.super Ljava/lang/Enum;
.source "ToChar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/ToChar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Capitalization"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/h2/util/ToChar$Capitalization;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/h2/util/ToChar$Capitalization;

.field public static final enum CAPITALIZE:Lorg/h2/util/ToChar$Capitalization;

.field public static final enum LOWERCASE:Lorg/h2/util/ToChar$Capitalization;

.field public static final enum UPPERCASE:Lorg/h2/util/ToChar$Capitalization;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 893
    new-instance v0, Lorg/h2/util/ToChar$Capitalization;

    const-string v1, "UPPERCASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/h2/util/ToChar$Capitalization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/h2/util/ToChar$Capitalization;->UPPERCASE:Lorg/h2/util/ToChar$Capitalization;

    .line 898
    new-instance v0, Lorg/h2/util/ToChar$Capitalization;

    const-string v1, "LOWERCASE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/h2/util/ToChar$Capitalization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/h2/util/ToChar$Capitalization;->LOWERCASE:Lorg/h2/util/ToChar$Capitalization;

    .line 904
    new-instance v0, Lorg/h2/util/ToChar$Capitalization;

    const-string v1, "CAPITALIZE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/h2/util/ToChar$Capitalization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/h2/util/ToChar$Capitalization;->CAPITALIZE:Lorg/h2/util/ToChar$Capitalization;

    const/4 v0, 0x3

    .line 888
    new-array v0, v0, [Lorg/h2/util/ToChar$Capitalization;

    sget-object v1, Lorg/h2/util/ToChar$Capitalization;->UPPERCASE:Lorg/h2/util/ToChar$Capitalization;

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/ToChar$Capitalization;->LOWERCASE:Lorg/h2/util/ToChar$Capitalization;

    aput-object v1, v0, v3

    sget-object v1, Lorg/h2/util/ToChar$Capitalization;->CAPITALIZE:Lorg/h2/util/ToChar$Capitalization;

    aput-object v1, v0, v4

    sput-object v0, Lorg/h2/util/ToChar$Capitalization;->$VALUES:[Lorg/h2/util/ToChar$Capitalization;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 888
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toCapitalization(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lorg/h2/util/ToChar$Capitalization;
    .locals 0

    if-nez p0, :cond_0

    .line 917
    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->CAPITALIZE:Lorg/h2/util/ToChar$Capitalization;

    return-object p0

    :cond_0
    if-nez p1, :cond_2

    .line 919
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->UPPERCASE:Lorg/h2/util/ToChar$Capitalization;

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->LOWERCASE:Lorg/h2/util/ToChar$Capitalization;

    :goto_0
    return-object p0

    .line 920
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 921
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->UPPERCASE:Lorg/h2/util/ToChar$Capitalization;

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->CAPITALIZE:Lorg/h2/util/ToChar$Capitalization;

    :goto_1
    return-object p0

    .line 923
    :cond_4
    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->LOWERCASE:Lorg/h2/util/ToChar$Capitalization;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;
    .locals 1

    .line 888
    const-class v0, Lorg/h2/util/ToChar$Capitalization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/h2/util/ToChar$Capitalization;

    return-object p0
.end method

.method public static values()[Lorg/h2/util/ToChar$Capitalization;
    .locals 1

    .line 888
    sget-object v0, Lorg/h2/util/ToChar$Capitalization;->$VALUES:[Lorg/h2/util/ToChar$Capitalization;

    invoke-virtual {v0}, [Lorg/h2/util/ToChar$Capitalization;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/util/ToChar$Capitalization;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    .line 934
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 937
    :cond_0
    sget-object v0, Lorg/h2/util/ToChar$1;->$SwitchMap$org$h2$util$ToChar$Capitalization:[I

    invoke-virtual {p0}, Lorg/h2/util/ToChar$Capitalization;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 946
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown capitalization strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 943
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 941
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 939
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
