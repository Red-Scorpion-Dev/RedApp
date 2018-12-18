.class interface abstract Lorg/briarproject/bramble/db/DatabaseConstants;
.super Ljava/lang/Object;
.source "DatabaseConstants.java"


# static fields
.field public static final DB_SETTINGS_NAMESPACE:Ljava/lang/String; = "db"

.field public static final LAST_COMPACTED_KEY:Ljava/lang/String; = "lastCompacted"

.field public static final MAX_COMPACTION_INTERVAL_MS:J

.field public static final MAX_OFFERED_MESSAGES:I = 0x3e8

.field public static final SCHEMA_VERSION_KEY:Ljava/lang/String; = "schemaVersion"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/briarproject/bramble/db/DatabaseConstants;->MAX_COMPACTION_INTERVAL_MS:J

    return-void
.end method
