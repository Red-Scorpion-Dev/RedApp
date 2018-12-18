.class public final Lorg/briarproject/briar/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "org.briarproject.briar.android"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final BuildTimestamp:Ljava/lang/Long;

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = "official"

.field public static final GitHash:Ljava/lang/String; = "8f4c3c4"

.field public static final VERSION_CODE:I = 0x2779

.field public static final VERSION_NAME:Ljava/lang/String; = "1.1.5"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x1670d292ac8L

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/BuildConfig;->BuildTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
