.class public final Lorg/acra/ACRAConstants;
.super Ljava/lang/Object;
.source "ACRAConstants.java"


# static fields
.field public static final APPROVED_SUFFIX:Ljava/lang/String; = "-approved"

.field public static final DATE_TIME_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

.field public static final DEFAULT_APPLICATION_LOGFILE:Ljava/lang/String; = ""

.field public static final DEFAULT_APPLICATION_LOGFILE_LINES:I = 0x64

.field public static final DEFAULT_BUFFER_SIZE_IN_BYTES:I = 0x2000

.field public static final DEFAULT_CERTIFICATE_TYPE:Ljava/lang/String; = "X.509"

.field public static final DEFAULT_CONNECTION_TIMEOUT:I = 0x1388

.field public static final DEFAULT_DELETE_OLD_UNSENT_REPORTS_ON_APPLICATION_START:Z = true

.field public static final DEFAULT_DELETE_UNAPPROVED_REPORTS_ON_APPLICATION_START:Z = true

.field public static final DEFAULT_DIALOG_ICON:I = 0x1080027

.field public static final DEFAULT_DIALOG_NEGATIVE_BUTTON_TEXT:I = 0x1040000

.field public static final DEFAULT_DIALOG_POSITIVE_BUTTON_TEXT:I = 0x104000a

.field public static final DEFAULT_DROPBOX_COLLECTION_MINUTES:I = 0x5

.field public static final DEFAULT_INCLUDE_DROPBOX_SYSTEM_TAGS:Z = false

.field public static final DEFAULT_LOGCAT_FILTER_BY_PID:Z = false

.field public static final DEFAULT_LOGCAT_LINES:I = 0x64

.field public static final DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

.field public static final DEFAULT_NON_BLOCKING_READ_FOR_LOGCAT:Z = false

.field public static final DEFAULT_NOTIFICATION_ICON:I = 0x1080078

.field public static final DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

.field public static final DEFAULT_REPORT_TO_ANDROID_FRAMEWORK:Z = false

.field public static final DEFAULT_RES_VALUE:I = 0x0

.field public static final DEFAULT_SEND_REPORTS_IN_DEV_MODE:Z = true

.field public static final DEFAULT_SHARED_PREFERENCES_MODE:I = 0x0

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x4e20

.field public static final DEFAULT_STRING_VALUE:Ljava/lang/String; = ""

.field public static final EXTRA_FORCE_CANCEL:Ljava/lang/String; = "FORCE_CANCEL"

.field public static final EXTRA_REPORT_CONFIG:Ljava/lang/String; = "REPORT_CONFIG"

.field public static final EXTRA_REPORT_EXCEPTION:Ljava/lang/String; = "REPORT_EXCEPTION"

.field public static final EXTRA_REPORT_FILE:Ljava/lang/String; = "REPORT_FILE"

.field public static final MAX_SEND_REPORTS:I = 0x5

.field public static final NOTIF_CRASH_ID:I = 0x29a

.field public static final NOT_AVAILABLE:Lorg/acra/model/Element;

.field public static final NULL_VALUE:Ljava/lang/String; = "ACRA-NULL-STRING"

.field public static final REPORTFILE_EXTENSION:Ljava/lang/String; = ".stacktrace"

.field public static final SILENT_SUFFIX:Ljava/lang/String;

.field public static final TOAST_WAIT_DURATION:I = 0x7d0

.field public static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    const/4 v0, 0x7

    .line 148
    new-array v1, v0, [Lorg/acra/ReportField;

    sget-object v2, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sput-object v1, Lorg/acra/ACRAConstants;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

    const/16 v1, 0x1d

    .line 156
    new-array v1, v1, [Lorg/acra/ReportField;

    sget-object v2, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    aput-object v2, v1, v4

    sget-object v2, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    aput-object v2, v1, v5

    sget-object v2, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    aput-object v2, v1, v6

    sget-object v2, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    aput-object v2, v1, v7

    sget-object v2, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    aput-object v2, v1, v8

    sget-object v2, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    aput-object v2, v1, v9

    sget-object v2, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    aput-object v2, v1, v0

    sget-object v0, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    const/16 v2, 0x12

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    const/16 v2, 0x13

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    const/16 v2, 0x14

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    const/16 v2, 0x16

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    const/16 v2, 0x18

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    sput-object v1, Lorg/acra/ACRAConstants;->DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

    .line 166
    new-instance v0, Lorg/acra/model/StringElement;

    const-string v1, "N/A"

    invoke-direct {v0, v1}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/acra/ACRAConstants;->NOT_AVAILABLE:Lorg/acra/model/Element;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
