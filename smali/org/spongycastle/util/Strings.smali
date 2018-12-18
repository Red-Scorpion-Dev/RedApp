.class public final Lorg/spongycastle/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field private static LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    :try_start_0
    new-instance v0, Lorg/spongycastle/util/Strings$1;

    invoke-direct {v0}, Lorg/spongycastle/util/Strings$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/spongycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "%n"

    const/4 v1, 0x0

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "\n"

    .line 41
    sput-object v0, Lorg/spongycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static asCharArray([B)[C
    .locals 3

    .line 310
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 312
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 314
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fromByteArray([B)Ljava/lang/String;
    .locals 1

    .line 299
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->asCharArray([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 3

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 270
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 272
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    .line 274
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 236
    :goto_0
    array-length v3, v0

    if-eq v1, v3, :cond_1

    .line 238
    aget-char v3, v0, v1

    const/16 v4, 0x41

    if-gt v4, v3, :cond_0

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_0

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-char v2, v3

    .line 242
    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 248
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_2
    return-object p0
.end method
