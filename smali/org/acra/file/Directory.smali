.class public abstract enum Lorg/acra/file/Directory;
.super Ljava/lang/Enum;
.source "Directory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/acra/file/Directory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/acra/file/Directory;

.field public static final enum CACHE:Lorg/acra/file/Directory;

.field public static final enum EXTERNAL_CACHE:Lorg/acra/file/Directory;

.field public static final enum EXTERNAL_FILES:Lorg/acra/file/Directory;

.field public static final enum EXTERNAL_STORAGE:Lorg/acra/file/Directory;

.field public static final enum FILES:Lorg/acra/file/Directory;

.field public static final enum FILES_LEGACY:Lorg/acra/file/Directory;

.field public static final enum NO_BACKUP_FILES:Lorg/acra/file/Directory;

.field public static final enum ROOT:Lorg/acra/file/Directory;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 35
    new-instance v0, Lorg/acra/file/Directory$1;

    const-string v1, "FILES_LEGACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/acra/file/Directory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->FILES_LEGACY:Lorg/acra/file/Directory;

    .line 44
    new-instance v0, Lorg/acra/file/Directory$2;

    const-string v1, "FILES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/acra/file/Directory$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->FILES:Lorg/acra/file/Directory;

    .line 53
    new-instance v0, Lorg/acra/file/Directory$3;

    const-string v1, "EXTERNAL_FILES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/acra/file/Directory$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->EXTERNAL_FILES:Lorg/acra/file/Directory;

    .line 62
    new-instance v0, Lorg/acra/file/Directory$4;

    const-string v1, "CACHE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/acra/file/Directory$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->CACHE:Lorg/acra/file/Directory;

    .line 71
    new-instance v0, Lorg/acra/file/Directory$5;

    const-string v1, "EXTERNAL_CACHE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/acra/file/Directory$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->EXTERNAL_CACHE:Lorg/acra/file/Directory;

    .line 81
    new-instance v0, Lorg/acra/file/Directory$6;

    const-string v1, "NO_BACKUP_FILES"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/acra/file/Directory$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->NO_BACKUP_FILES:Lorg/acra/file/Directory;

    .line 90
    new-instance v0, Lorg/acra/file/Directory$7;

    const-string v1, "EXTERNAL_STORAGE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/acra/file/Directory$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->EXTERNAL_STORAGE:Lorg/acra/file/Directory;

    .line 99
    new-instance v0, Lorg/acra/file/Directory$8;

    const-string v1, "ROOT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/acra/file/Directory$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/file/Directory;->ROOT:Lorg/acra/file/Directory;

    const/16 v0, 0x8

    .line 29
    new-array v0, v0, [Lorg/acra/file/Directory;

    sget-object v1, Lorg/acra/file/Directory;->FILES_LEGACY:Lorg/acra/file/Directory;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/file/Directory;->FILES:Lorg/acra/file/Directory;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/file/Directory;->EXTERNAL_FILES:Lorg/acra/file/Directory;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/file/Directory;->CACHE:Lorg/acra/file/Directory;

    aput-object v1, v0, v5

    sget-object v1, Lorg/acra/file/Directory;->EXTERNAL_CACHE:Lorg/acra/file/Directory;

    aput-object v1, v0, v6

    sget-object v1, Lorg/acra/file/Directory;->NO_BACKUP_FILES:Lorg/acra/file/Directory;

    aput-object v1, v0, v7

    sget-object v1, Lorg/acra/file/Directory;->EXTERNAL_STORAGE:Lorg/acra/file/Directory;

    aput-object v1, v0, v8

    sget-object v1, Lorg/acra/file/Directory;->ROOT:Lorg/acra/file/Directory;

    aput-object v1, v0, v9

    sput-object v0, Lorg/acra/file/Directory;->$VALUES:[Lorg/acra/file/Directory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/acra/file/Directory$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/acra/file/Directory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/file/Directory;
    .locals 1

    .line 29
    const-class v0, Lorg/acra/file/Directory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/acra/file/Directory;

    return-object p0
.end method

.method public static values()[Lorg/acra/file/Directory;
    .locals 1

    .line 29
    sget-object v0, Lorg/acra/file/Directory;->$VALUES:[Lorg/acra/file/Directory;

    invoke-virtual {v0}, [Lorg/acra/file/Directory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/file/Directory;

    return-object v0
.end method


# virtual methods
.method public abstract getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
.end method
