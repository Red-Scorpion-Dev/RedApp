.class public final enum Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;
.super Ljava/lang/Enum;
.source "AuthorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/api/identity/AuthorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

.field public static final enum ANONYMOUS:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

.field public static final enum NONE:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

.field public static final enum OURSELVES:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

.field public static final enum UNKNOWN:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

.field public static final enum UNVERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

.field public static final enum VERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->NONE:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    new-instance v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    const-string v1, "ANONYMOUS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->ANONYMOUS:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    new-instance v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->UNKNOWN:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    new-instance v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    const-string v1, "UNVERIFIED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->UNVERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    new-instance v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    const-string v1, "VERIFIED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->VERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    new-instance v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    const-string v1, "OURSELVES"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->OURSELVES:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    const/4 v0, 0x6

    .line 12
    new-array v0, v0, [Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    sget-object v1, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->NONE:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->ANONYMOUS:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->UNKNOWN:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->UNVERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    aput-object v1, v0, v5

    sget-object v1, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->VERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    aput-object v1, v0, v6

    sget-object v1, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->OURSELVES:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    aput-object v1, v0, v7

    sput-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->$VALUES:[Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;
    .locals 1

    .line 12
    const-class v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;
    .locals 1

    .line 12
    sget-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->$VALUES:[Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    invoke-virtual {v0}, [Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    return-object v0
.end method


# virtual methods
.method public isContact()Z
    .locals 1

    .line 16
    sget-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->UNVERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->VERIFIED:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
