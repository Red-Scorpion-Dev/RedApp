.class public enum Lorg/acra/ReportField;
.super Ljava/lang/Enum;
.source "ReportField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/acra/ReportField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/acra/ReportField;

.field public static final enum ANDROID_VERSION:Lorg/acra/ReportField;

.field public static final enum APPLICATION_LOG:Lorg/acra/ReportField;

.field public static final enum APP_VERSION_CODE:Lorg/acra/ReportField;

.field public static final enum APP_VERSION_NAME:Lorg/acra/ReportField;

.field public static final enum AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

.field public static final enum BRAND:Lorg/acra/ReportField;

.field public static final enum BUILD:Lorg/acra/ReportField;

.field public static final enum BUILD_CONFIG:Lorg/acra/ReportField;

.field public static final enum CRASH_CONFIGURATION:Lorg/acra/ReportField;

.field public static final enum CUSTOM_DATA:Lorg/acra/ReportField;

.field public static final enum DEVICE_FEATURES:Lorg/acra/ReportField;

.field public static final enum DEVICE_ID:Lorg/acra/ReportField;

.field public static final enum DISPLAY:Lorg/acra/ReportField;

.field public static final enum DROPBOX:Lorg/acra/ReportField;

.field public static final enum DUMPSYS_MEMINFO:Lorg/acra/ReportField;

.field public static final enum ENVIRONMENT:Lorg/acra/ReportField;

.field public static final enum EVENTSLOG:Lorg/acra/ReportField;

.field public static final enum FILE_PATH:Lorg/acra/ReportField;

.field public static final enum INITIAL_CONFIGURATION:Lorg/acra/ReportField;

.field public static final enum INSTALLATION_ID:Lorg/acra/ReportField;

.field public static final enum IS_SILENT:Lorg/acra/ReportField;

.field public static final enum LOGCAT:Lorg/acra/ReportField;

.field public static final enum MEDIA_CODEC_LIST:Lorg/acra/ReportField;

.field public static final enum PACKAGE_NAME:Lorg/acra/ReportField;

.field public static final enum PHONE_MODEL:Lorg/acra/ReportField;

.field public static final enum PRODUCT:Lorg/acra/ReportField;

.field public static final enum RADIOLOG:Lorg/acra/ReportField;

.field public static final enum REPORT_ID:Lorg/acra/ReportField;

.field public static final enum SETTINGS_GLOBAL:Lorg/acra/ReportField;

.field public static final enum SETTINGS_SECURE:Lorg/acra/ReportField;

.field public static final enum SETTINGS_SYSTEM:Lorg/acra/ReportField;

.field public static final enum SHARED_PREFERENCES:Lorg/acra/ReportField;

.field public static final enum STACK_TRACE:Lorg/acra/ReportField;

.field public static final enum STACK_TRACE_HASH:Lorg/acra/ReportField;

.field public static final enum THREAD_DETAILS:Lorg/acra/ReportField;

.field public static final enum TOTAL_MEM_SIZE:Lorg/acra/ReportField;

.field public static final enum USER_APP_START_DATE:Lorg/acra/ReportField;

.field public static final enum USER_COMMENT:Lorg/acra/ReportField;

.field public static final enum USER_CRASH_DATE:Lorg/acra/ReportField;

.field public static final enum USER_EMAIL:Lorg/acra/ReportField;

.field public static final enum USER_IP:Lorg/acra/ReportField;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "REPORT_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    .line 39
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "APP_VERSION_CODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    .line 45
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "APP_VERSION_NAME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    .line 51
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "PACKAGE_NAME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    .line 57
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "FILE_PATH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    .line 63
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "PHONE_MODEL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    .line 69
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "ANDROID_VERSION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    .line 75
    new-instance v0, Lorg/acra/ReportField$1;

    const-string v1, "BUILD"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/acra/ReportField$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    .line 86
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "BRAND"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    .line 92
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "PRODUCT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    .line 96
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "TOTAL_MEM_SIZE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    .line 100
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "AVAILABLE_MEM_SIZE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    .line 105
    new-instance v0, Lorg/acra/ReportField$2;

    const-string v1, "BUILD_CONFIG"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/acra/ReportField$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    .line 115
    new-instance v0, Lorg/acra/ReportField$3;

    const-string v1, "CUSTOM_DATA"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    .line 124
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "STACK_TRACE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    .line 130
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "STACK_TRACE_HASH"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->STACK_TRACE_HASH:Lorg/acra/ReportField;

    .line 136
    new-instance v0, Lorg/acra/ReportField$4;

    const-string v1, "INITIAL_CONFIGURATION"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    .line 147
    new-instance v0, Lorg/acra/ReportField$5;

    const-string v1, "CRASH_CONFIGURATION"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    .line 158
    new-instance v0, Lorg/acra/ReportField$6;

    const-string v1, "DISPLAY"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    .line 168
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "USER_COMMENT"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    .line 172
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "USER_APP_START_DATE"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    .line 176
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "USER_CRASH_DATE"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    .line 180
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "DUMPSYS_MEMINFO"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    .line 185
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "DROPBOX"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    .line 189
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "LOGCAT"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    .line 193
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "EVENTSLOG"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    .line 197
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "RADIOLOG"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    .line 201
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "IS_SILENT"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    .line 205
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "DEVICE_ID"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    .line 210
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "INSTALLATION_ID"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    .line 215
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "USER_EMAIL"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    .line 219
    new-instance v0, Lorg/acra/ReportField$7;

    const-string v1, "DEVICE_FEATURES"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    .line 228
    new-instance v0, Lorg/acra/ReportField$8;

    const-string v1, "ENVIRONMENT"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    .line 237
    new-instance v0, Lorg/acra/ReportField$9;

    const-string v1, "SETTINGS_SYSTEM"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    .line 246
    new-instance v0, Lorg/acra/ReportField$10;

    const-string v1, "SETTINGS_SECURE"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    .line 255
    new-instance v0, Lorg/acra/ReportField$11;

    const-string v1, "SETTINGS_GLOBAL"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->SETTINGS_GLOBAL:Lorg/acra/ReportField;

    .line 264
    new-instance v0, Lorg/acra/ReportField$12;

    const-string v1, "SHARED_PREFERENCES"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    .line 276
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "APPLICATION_LOG"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    .line 282
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "MEDIA_CODEC_LIST"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->MEDIA_CODEC_LIST:Lorg/acra/ReportField;

    .line 286
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "THREAD_DETAILS"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->THREAD_DETAILS:Lorg/acra/ReportField;

    .line 290
    new-instance v0, Lorg/acra/ReportField;

    const-string v1, "USER_IP"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportField;->USER_IP:Lorg/acra/ReportField;

    const/16 v0, 0x29

    .line 28
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    aput-object v1, v0, v7

    sget-object v1, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    aput-object v1, v0, v8

    sget-object v1, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    aput-object v1, v0, v9

    sget-object v1, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    aput-object v1, v0, v10

    sget-object v1, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    aput-object v1, v0, v11

    sget-object v1, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v1, v0, v12

    sget-object v1, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    aput-object v1, v0, v13

    sget-object v1, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    aput-object v1, v0, v14

    sget-object v1, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->STACK_TRACE_HASH:Lorg/acra/ReportField;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->SETTINGS_GLOBAL:Lorg/acra/ReportField;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->MEDIA_CODEC_LIST:Lorg/acra/ReportField;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->THREAD_DETAILS:Lorg/acra/ReportField;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->USER_IP:Lorg/acra/ReportField;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sput-object v0, Lorg/acra/ReportField;->$VALUES:[Lorg/acra/ReportField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/acra/ReportField$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/ReportField;
    .locals 1

    .line 28
    const-class v0, Lorg/acra/ReportField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/acra/ReportField;

    return-object p0
.end method

.method public static values()[Lorg/acra/ReportField;
    .locals 1

    .line 28
    sget-object v0, Lorg/acra/ReportField;->$VALUES:[Lorg/acra/ReportField;

    invoke-virtual {v0}, [Lorg/acra/ReportField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/ReportField;

    return-object v0
.end method


# virtual methods
.method public containsKeyValuePairs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
