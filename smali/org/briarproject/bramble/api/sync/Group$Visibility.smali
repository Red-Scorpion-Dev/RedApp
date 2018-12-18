.class public final enum Lorg/briarproject/bramble/api/sync/Group$Visibility;
.super Ljava/lang/Enum;
.source "Group.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/api/sync/Group;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/bramble/api/sync/Group$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/bramble/api/sync/Group$Visibility;

.field public static final enum INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

.field public static final enum SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

.field public static final enum VISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/briarproject/bramble/api/sync/Group$Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    .line 10
    new-instance v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const-string v1, "VISIBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/briarproject/bramble/api/sync/Group$Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->VISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    .line 11
    new-instance v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const-string v1, "SHARED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/briarproject/bramble/api/sync/Group$Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lorg/briarproject/bramble/api/sync/Group$Visibility;

    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->VISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    aput-object v1, v0, v4

    sput-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->$VALUES:[Lorg/briarproject/bramble/api/sync/Group$Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->value:I

    return-void
.end method

.method public static min(Lorg/briarproject/bramble/api/sync/Group$Visibility;Lorg/briarproject/bramble/api/sync/Group$Visibility;)Lorg/briarproject/bramble/api/sync/Group$Visibility;
    .locals 2

    .line 24
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/sync/Group$Visibility;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Group$Visibility;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/Group$Visibility;
    .locals 1

    .line 7
    const-class v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/sync/Group$Visibility;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/bramble/api/sync/Group$Visibility;
    .locals 1

    .line 7
    sget-object v0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->$VALUES:[Lorg/briarproject/bramble/api/sync/Group$Visibility;

    invoke-virtual {v0}, [Lorg/briarproject/bramble/api/sync/Group$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/bramble/api/sync/Group$Visibility;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/briarproject/bramble/api/sync/Group$Visibility;->value:I

    return v0
.end method
