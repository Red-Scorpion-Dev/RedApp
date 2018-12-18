.class public Lorg/h2/value/ValueBoolean;
.super Lorg/h2/value/Value;
.source "ValueBoolean.java"


# static fields
.field public static final DISPLAY_SIZE:I = 0x5

.field private static final FALSE:Ljava/lang/Object;

.field public static final PRECISION:I = 0x1

.field private static final TRUE:Ljava/lang/Object;


# instance fields
.field private final value:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lorg/h2/value/ValueBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/h2/value/ValueBoolean;-><init>(Z)V

    sput-object v0, Lorg/h2/value/ValueBoolean;->TRUE:Ljava/lang/Object;

    .line 31
    new-instance v0, Lorg/h2/value/ValueBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/h2/value/ValueBoolean;-><init>(Z)V

    sput-object v0, Lorg/h2/value/ValueBoolean;->FALSE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/value/ValueBoolean;->value:Ljava/lang/Boolean;

    return-void
.end method

.method public static get(Z)Lorg/h2/value/ValueBoolean;
    .locals 0

    if-eqz p0, :cond_0

    .line 99
    sget-object p0, Lorg/h2/value/ValueBoolean;->TRUE:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/h2/value/ValueBoolean;->FALSE:Ljava/lang/Object;

    :goto_0
    check-cast p0, Lorg/h2/value/ValueBoolean;

    return-object p0
.end method


# virtual methods
.method protected compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    .line 66
    check-cast p1, Lorg/h2/value/ValueBoolean;

    iget-object p1, p1, Lorg/h2/value/ValueBoolean;->value:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 67
    iget-object p2, p0, Lorg/h2/value/ValueBoolean;->value:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBoolean()Ljava/lang/Boolean;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/h2/value/ValueBoolean;->value:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/h2/value/ValueBoolean;->value:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/h2/value/ValueBoolean;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/h2/value/ValueBoolean;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/h2/value/ValueBoolean;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public negate()Lorg/h2/value/Value;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/h2/value/ValueBoolean;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/h2/value/ValueBoolean;->FALSE:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/h2/value/ValueBoolean;->TRUE:Ljava/lang/Object;

    :goto_0
    check-cast v0, Lorg/h2/value/ValueBoolean;

    return-object v0
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/h2/value/ValueBoolean;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    return-void
.end method
