.class public abstract Lorg/acra/config/BaseConfigurationBuilder;
.super Ljava/lang/Object;
.source "BaseConfigurationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/acra/config/BaseConfigurationBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private additionalDropBoxTags:[Ljava/lang/String;

.field private additionalSharedPreferences:[Ljava/lang/String;

.field private alsoReportToAndroidFramework:Ljava/lang/Boolean;

.field private applicationLogFile:Ljava/lang/String;

.field private applicationLogFileDir:Lorg/acra/file/Directory;

.field private applicationLogFileLines:Ljava/lang/Integer;

.field private attachmentUriProvider:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/attachment/AttachmentUriProvider;",
            ">;"
        }
    .end annotation
.end field

.field private attachmentUris:[Ljava/lang/String;

.field private buildConfigClass:Ljava/lang/Class;

.field private certificatePath:Ljava/lang/String;

.field private certificateType:Ljava/lang/String;

.field private connectionTimeout:Ljava/lang/Integer;

.field private customReportContent:[Lorg/acra/ReportField;

.field private deleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

.field private deleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

.field private dropboxCollectionMinutes:Ljava/lang/Integer;

.field private excludeMatchingSettingsKeys:[Ljava/lang/String;

.field private excludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

.field private formUri:Ljava/lang/String;

.field private formUriBasicAuthLogin:Ljava/lang/String;

.field private formUriBasicAuthPassword:Ljava/lang/String;

.field private httpMethod:Lorg/acra/sender/HttpSender$Method;

.field private includeDropBoxSystemTags:Ljava/lang/Boolean;

.field private keyStoreFactoryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/security/KeyStoreFactory;",
            ">;"
        }
    .end annotation
.end field

.field private logcatArguments:[Ljava/lang/String;

.field private logcatFilterByPid:Ljava/lang/Boolean;

.field private mailTo:Ljava/lang/String;

.field private nonBlockingReadForLogcat:Ljava/lang/Boolean;

.field private reportAsFile:Ljava/lang/Boolean;

.field private reportDialogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/dialog/BaseCrashReportDialog;",
            ">;"
        }
    .end annotation
.end field

.field private reportPrimerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/builder/ReportPrimer;",
            ">;"
        }
    .end annotation
.end field

.field private reportSenderFactoryClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/sender/ReportSenderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private reportType:Lorg/acra/sender/HttpSender$Type;

.field private reportingInteractionMode:Lorg/acra/ReportingInteractionMode;

.field private resCertificate:Ljava/lang/Integer;

.field private resDialogCommentPrompt:Ljava/lang/Integer;

.field private resDialogEmailPrompt:Ljava/lang/Integer;

.field private resDialogIcon:Ljava/lang/Integer;

.field private resDialogNegativeButtonText:Ljava/lang/Integer;

.field private resDialogOkToast:Ljava/lang/Integer;

.field private resDialogPositiveButtonText:Ljava/lang/Integer;

.field private resDialogText:Ljava/lang/Integer;

.field private resDialogTheme:Ljava/lang/Integer;

.field private resDialogTitle:Ljava/lang/Integer;

.field private resNotifIcon:Ljava/lang/Integer;

.field private resNotifText:Ljava/lang/Integer;

.field private resNotifTickerText:Ljava/lang/Integer;

.field private resNotifTitle:Ljava/lang/Integer;

.field private resToastText:Ljava/lang/Integer;

.field private retryPolicyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/config/RetryPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private sendReportsInDevMode:Ljava/lang/Boolean;

.field private sharedPreferencesMode:Ljava/lang/Integer;

.field private sharedPreferencesName:Ljava/lang/String;

.field private socketTimeout:Ljava/lang/Integer;

.field private stopServicesOnCrash:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lorg/acra/annotation/ReportsCrashes;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/acra/annotation/ReportsCrashes;

    if-eqz p1, :cond_0

    .line 190
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUri:Ljava/lang/String;

    .line 191
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    .line 192
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resDialogPositiveButtonText()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogPositiveButtonText:Ljava/lang/Integer;

    .line 193
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resDialogNegativeButtonText()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogNegativeButtonText:Ljava/lang/Integer;

    .line 194
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resDialogCommentPrompt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogCommentPrompt:Ljava/lang/Integer;

    .line 195
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resDialogEmailPrompt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogEmailPrompt:Ljava/lang/Integer;

    .line 196
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resDialogIcon()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogIcon:Ljava/lang/Integer;

    .line 197
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resDialogOkToast()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogOkToast:Ljava/lang/Integer;

    .line 198
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogText:Ljava/lang/Integer;

    .line 199
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resDialogTitle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogTitle:Ljava/lang/Integer;

    .line 200
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resDialogTheme()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogTheme:Ljava/lang/Integer;

    .line 201
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifIcon:Ljava/lang/Integer;

    .line 202
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifText:Ljava/lang/Integer;

    .line 203
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifTickerText:Ljava/lang/Integer;

    .line 204
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifTitle:Ljava/lang/Integer;

    .line 205
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resToastText:Ljava/lang/Integer;

    .line 206
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->sharedPreferencesName:Ljava/lang/String;

    .line 207
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->sharedPreferencesMode:Ljava/lang/Integer;

    .line 208
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->includeDropBoxSystemTags()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->includeDropBoxSystemTags:Ljava/lang/Boolean;

    .line 209
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->additionalDropBoxTags:[Ljava/lang/String;

    .line 210
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->dropboxCollectionMinutes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->dropboxCollectionMinutes:Ljava/lang/Integer;

    .line 211
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->logcatArguments()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->logcatArguments:[Ljava/lang/String;

    .line 212
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUriBasicAuthLogin:Ljava/lang/String;

    .line 213
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUriBasicAuthPassword:Ljava/lang/String;

    .line 214
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->customReportContent:[Lorg/acra/ReportField;

    .line 215
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->mailTo:Ljava/lang/String;

    .line 216
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->deleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 217
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->deleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 218
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->connectionTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->connectionTimeout:Ljava/lang/Integer;

    .line 219
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->socketTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->socketTimeout:Ljava/lang/Integer;

    .line 220
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->alsoReportToAndroidFramework()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->alsoReportToAndroidFramework:Ljava/lang/Boolean;

    .line 221
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->additionalSharedPreferences()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->additionalSharedPreferences:[Ljava/lang/String;

    .line 222
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->logcatFilterByPid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->logcatFilterByPid:Ljava/lang/Boolean;

    .line 223
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->nonBlockingReadForLogcat()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->nonBlockingReadForLogcat:Ljava/lang/Boolean;

    .line 224
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->sendReportsInDevMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->sendReportsInDevMode:Ljava/lang/Boolean;

    .line 225
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->excludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    .line 226
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSettingsKeys()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->excludeMatchingSettingsKeys:[Ljava/lang/String;

    .line 227
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->buildConfigClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->buildConfigClass:Ljava/lang/Class;

    .line 228
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->reportSenderFactoryClasses()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportSenderFactoryClasses:[Ljava/lang/Class;

    .line 229
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFile:Ljava/lang/String;

    .line 230
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFileLines()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFileLines:Ljava/lang/Integer;

    .line 231
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFileDir()Lorg/acra/file/Directory;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFileDir:Lorg/acra/file/Directory;

    .line 232
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->reportDialogClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportDialogClass:Ljava/lang/Class;

    .line 233
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->reportPrimerClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportPrimerClass:Ljava/lang/Class;

    .line 234
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->httpMethod:Lorg/acra/sender/HttpSender$Method;

    .line 235
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportType:Lorg/acra/sender/HttpSender$Type;

    .line 236
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->keyStoreFactoryClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->keyStoreFactoryClass:Ljava/lang/Class;

    .line 237
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->certificatePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->certificatePath:Ljava/lang/String;

    .line 238
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->resCertificate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resCertificate:Ljava/lang/Integer;

    .line 239
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->certificateType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->certificateType:Ljava/lang/String;

    .line 240
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->retryPolicyClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->retryPolicyClass:Ljava/lang/Class;

    .line 241
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->stopServicesOnCrash()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->stopServicesOnCrash:Ljava/lang/Boolean;

    .line 242
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->attachmentUris()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->attachmentUris:[Ljava/lang/String;

    .line 243
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->attachmentUriProvider()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->attachmentUriProvider:Ljava/lang/Class;

    .line 244
    invoke-interface {p1}, Lorg/acra/annotation/ReportsCrashes;->reportAsFile()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportAsFile:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method


# virtual methods
.method additionalDropBoxTags()[Ljava/lang/String;
    .locals 1

    .line 661
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->additionalDropBoxTags:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->additionalDropBoxTags:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 664
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method additionalSharedPreferences()[Ljava/lang/String;
    .locals 1

    .line 1025
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->additionalSharedPreferences:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->additionalSharedPreferences:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1028
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method alsoReportToAndroidFramework()Z
    .locals 1

    .line 1004
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->alsoReportToAndroidFramework:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->alsoReportToAndroidFramework:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method applicationLogFile()Ljava/lang/String;
    .locals 1

    .line 1191
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFile:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method applicationLogFileDir()Lorg/acra/file/Directory;
    .locals 1

    .line 1231
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFileDir:Lorg/acra/file/Directory;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFileDir:Lorg/acra/file/Directory;

    return-object v0

    .line 1234
    :cond_0
    sget-object v0, Lorg/acra/file/Directory;->FILES_LEGACY:Lorg/acra/file/Directory;

    return-object v0
.end method

.method applicationLogFileLines()I
    .locals 1

    .line 1211
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFileLines:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFileLines:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method attachmentUriProvider()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/attachment/AttachmentUriProvider;",
            ">;"
        }
    .end annotation

    .line 1466
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->attachmentUriProvider:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->attachmentUriProvider:Ljava/lang/Class;

    return-object v0

    .line 1469
    :cond_0
    const-class v0, Lorg/acra/attachment/DefaultAttachmentProvider;

    return-object v0
.end method

.method attachmentUris()[Ljava/lang/String;
    .locals 1

    .line 1446
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->attachmentUris:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->attachmentUris:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1449
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method buildConfigClass()Ljava/lang/Class;
    .locals 1

    .line 1145
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->buildConfigClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->buildConfigClass:Ljava/lang/Class;

    return-object v0

    .line 1148
    :cond_0
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method certificatePath()Ljava/lang/String;
    .locals 1

    .line 1342
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->certificatePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->certificatePath:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method certificateType()Ljava/lang/String;
    .locals 1

    .line 1376
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->certificateType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->certificateType:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "X.509"

    return-object v0
.end method

.method connectionTimeout()I
    .locals 1

    .line 966
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->connectionTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->connectionTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1388

    return v0
.end method

.method customReportContent()[Lorg/acra/ReportField;
    .locals 1

    .line 855
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->customReportContent:[Lorg/acra/ReportField;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->customReportContent:[Lorg/acra/ReportField;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 858
    new-array v0, v0, [Lorg/acra/ReportField;

    return-object v0
.end method

.method deleteOldUnsentReportsOnApplicationStart()Z
    .locals 1

    .line 950
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->deleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->deleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method deleteUnapprovedReportsOnApplicationStart()Z
    .locals 1

    .line 929
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->deleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->deleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method dropboxCollectionMinutes()I
    .locals 1

    .line 678
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->dropboxCollectionMinutes:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->dropboxCollectionMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method excludeMatchingSettingsKeys()[Ljava/lang/String;
    .locals 1

    .line 1126
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->excludeMatchingSettingsKeys:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->excludeMatchingSettingsKeys:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1129
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;
    .locals 1

    .line 1104
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->excludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->excludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1107
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method formUri()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUri:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method formUriBasicAuthLogin()Ljava/lang/String;
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUriBasicAuthLogin:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUriBasicAuthLogin:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "ACRA-NULL-STRING"

    return-object v0
.end method

.method formUriBasicAuthPassword()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUriBasicAuthPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUriBasicAuthPassword:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "ACRA-NULL-STRING"

    return-object v0
.end method

.method httpMethod()Lorg/acra/sender/HttpSender$Method;
    .locals 1

    .line 1287
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->httpMethod:Lorg/acra/sender/HttpSender$Method;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->httpMethod:Lorg/acra/sender/HttpSender$Method;

    return-object v0

    .line 1290
    :cond_0
    sget-object v0, Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;

    return-object v0
.end method

.method includeDropBoxSystemTags()Z
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->includeDropBoxSystemTags:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->includeDropBoxSystemTags:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method keyStoreFactoryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/security/KeyStoreFactory;",
            ">;"
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->keyStoreFactoryClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->keyStoreFactoryClass:Ljava/lang/Class;

    return-object v0

    .line 1328
    :cond_0
    const-class v0, Lorg/acra/security/NoKeyStoreFactory;

    return-object v0
.end method

.method logcatArguments()[Ljava/lang/String;
    .locals 3

    .line 716
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->logcatArguments:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->logcatArguments:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x4

    .line 719
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "100"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-v"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time"

    aput-object v2, v0, v1

    return-object v0
.end method

.method logcatFilterByPid()Z
    .locals 1

    .line 1044
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->logcatFilterByPid:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->logcatFilterByPid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method mailTo()Ljava/lang/String;
    .locals 1

    .line 895
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->mailTo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->mailTo:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method nonBlockingReadForLogcat()Z
    .locals 1

    .line 1063
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->nonBlockingReadForLogcat:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->nonBlockingReadForLogcat:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method reportAsFile()Z
    .locals 1

    .line 1482
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportAsFile:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportAsFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method reportDialogClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/dialog/BaseCrashReportDialog;",
            ">;"
        }
    .end annotation

    .line 1249
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportDialogClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportDialogClass:Ljava/lang/Class;

    return-object v0

    .line 1252
    :cond_0
    const-class v0, Lorg/acra/dialog/CrashReportDialog;

    return-object v0
.end method

.method reportPrimerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/builder/ReportPrimer;",
            ">;"
        }
    .end annotation

    .line 1266
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportPrimerClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportPrimerClass:Ljava/lang/Class;

    return-object v0

    .line 1269
    :cond_0
    const-class v0, Lorg/acra/builder/NoOpReportPrimer;

    return-object v0
.end method

.method reportSenderFactoryClasses()[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/sender/ReportSenderFactory;",
            ">;"
        }
    .end annotation

    .line 1167
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportSenderFactoryClasses:[Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportSenderFactoryClasses:[Ljava/lang/Class;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 1170
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/acra/sender/DefaultReportSenderFactory;

    aput-object v2, v0, v1

    return-object v0
.end method

.method reportType()Lorg/acra/sender/HttpSender$Type;
    .locals 1

    .line 1308
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportType:Lorg/acra/sender/HttpSender$Type;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportType:Lorg/acra/sender/HttpSender$Type;

    return-object v0

    .line 1311
    :cond_0
    sget-object v0, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    return-object v0
.end method

.method reportingInteractionMode()Lorg/acra/ReportingInteractionMode;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    return-object v0

    .line 303
    :cond_0
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    return-object v0
.end method

.method resCertificate()I
    .locals 1

    .line 1359
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resCertificate:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resCertificate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resDialogCommentPrompt()I
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogCommentPrompt:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogCommentPrompt:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resDialogEmailPrompt()I
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogEmailPrompt:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogEmailPrompt:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resDialogIcon()I
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogIcon:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogIcon:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const v0, 0x1080027

    return v0
.end method

.method resDialogNegativeButtonText()I
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogNegativeButtonText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogNegativeButtonText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x1040000

    return v0
.end method

.method resDialogOkToast()I
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogOkToast:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogOkToast:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resDialogPositiveButtonText()I
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogPositiveButtonText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogPositiveButtonText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const v0, 0x104000a

    return v0
.end method

.method resDialogText()I
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resDialogTheme()I
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogTheme:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogTheme:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resDialogTitle()I
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogTitle:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogTitle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resNotifIcon()I
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifIcon:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifIcon:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const v0, 0x1080078

    return v0
.end method

.method resNotifText()I
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resNotifTickerText()I
    .locals 1

    .line 511
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifTickerText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifTickerText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resNotifTitle()I
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifTitle:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifTitle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resToastText()I
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resToastText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->resToastText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method retryPolicyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/config/RetryPolicy;",
            ">;"
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->retryPolicyClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->retryPolicyClass:Ljava/lang/Class;

    return-object v0

    .line 1397
    :cond_0
    const-class v0, Lorg/acra/config/DefaultRetryPolicy;

    return-object v0
.end method

.method sendReportsInDevMode()Z
    .locals 1

    .line 1083
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->sendReportsInDevMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->sendReportsInDevMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public varargs setAdditionalDropBoxTags([Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 655
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->additionalDropBoxTags:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs setAdditionalSharedPreferences([Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1019
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->additionalSharedPreferences:[Ljava/lang/String;

    return-object p0
.end method

.method public setAlsoReportToAndroidFramework(Z)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 999
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->alsoReportToAndroidFramework:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setApplicationLogFile(Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1185
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFile:Ljava/lang/String;

    return-object p0
.end method

.method public setApplicationLogFileDir(Lorg/acra/file/Directory;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/file/Directory;",
            ")TT;"
        }
    .end annotation

    .line 1225
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFileDir:Lorg/acra/file/Directory;

    return-object p0
.end method

.method public setApplicationLogFileLines(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->applicationLogFileLines:Ljava/lang/Integer;

    return-object p0
.end method

.method public setAttachmentUriProvider(Ljava/lang/Class;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/attachment/AttachmentUriProvider;",
            ">;)TT;"
        }
    .end annotation

    .line 1460
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->attachmentUriProvider:Ljava/lang/Class;

    return-object p0
.end method

.method public varargs setAttachmentUris([Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1440
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->attachmentUris:[Ljava/lang/String;

    return-object p0
.end method

.method public setBuildConfigClass(Ljava/lang/Class;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 1139
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->buildConfigClass:Ljava/lang/Class;

    return-object p0
.end method

.method public setCertificatePath(Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1336
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->certificatePath:Ljava/lang/String;

    return-object p0
.end method

.method public setCertificateType(Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1370
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->certificateType:Ljava/lang/String;

    return-object p0
.end method

.method public setConnectionTimeout(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 961
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->connectionTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public varargs setCustomReportContent([Lorg/acra/ReportField;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/acra/ReportField;",
            ")TT;"
        }
    .end annotation

    .line 849
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->customReportContent:[Lorg/acra/ReportField;

    return-object p0
.end method

.method public setDeleteOldUnsentReportsOnApplicationStart(Z)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 945
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->deleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDeleteUnapprovedReportsOnApplicationStart(Z)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 924
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->deleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDropboxCollectionMinutes(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 673
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->dropboxCollectionMinutes:Ljava/lang/Integer;

    return-object p0
.end method

.method public varargs setExcludeMatchingSettingsKeys([Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1120
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->excludeMatchingSettingsKeys:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs setExcludeMatchingSharedPreferencesKeys([Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1098
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->excludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    return-object p0
.end method

.method public setFormUri(Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUri:Ljava/lang/String;

    return-object p0
.end method

.method public setFormUriBasicAuthLogin(Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 732
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUriBasicAuthLogin:Ljava/lang/String;

    return-object p0
.end method

.method public setFormUriBasicAuthPassword(Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 754
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->formUriBasicAuthPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setHttpMethod(Lorg/acra/sender/HttpSender$Method;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/sender/HttpSender$Method;",
            ")TT;"
        }
    .end annotation

    .line 1281
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->httpMethod:Lorg/acra/sender/HttpSender$Method;

    return-object p0
.end method

.method public setIncludeDropBoxSystemTags(Z)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 638
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->includeDropBoxSystemTags:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setKeyStoreFactoryClass(Ljava/lang/Class;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/security/KeyStoreFactory;",
            ">;)TT;"
        }
    .end annotation

    .line 1319
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->keyStoreFactoryClass:Ljava/lang/Class;

    return-object p0
.end method

.method public varargs setLogcatArguments([Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 710
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->logcatArguments:[Ljava/lang/String;

    return-object p0
.end method

.method public setLogcatFilterByPid(Z)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1039
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->logcatFilterByPid:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMailTo(Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 889
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->mailTo:Ljava/lang/String;

    return-object p0
.end method

.method public setNonBlockingReadForLogcat(Z)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1058
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->nonBlockingReadForLogcat:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setReportAsFile(Z)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1477
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportAsFile:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setReportDialogClass(Ljava/lang/Class;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/dialog/BaseCrashReportDialog;",
            ">;)TT;"
        }
    .end annotation

    .line 1243
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportDialogClass:Ljava/lang/Class;

    return-object p0
.end method

.method public setReportPrimerClass(Ljava/lang/Class;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/builder/ReportPrimer;",
            ">;)TT;"
        }
    .end annotation

    .line 1260
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportPrimerClass:Ljava/lang/Class;

    return-object p0
.end method

.method public varargs setReportSenderFactoryClasses([Ljava/lang/Class;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/sender/ReportSenderFactory;",
            ">;)TT;"
        }
    .end annotation

    .line 1161
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportSenderFactoryClasses:[Ljava/lang/Class;

    return-object p0
.end method

.method public setReportType(Lorg/acra/sender/HttpSender$Type;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/sender/HttpSender$Type;",
            ")TT;"
        }
    .end annotation

    .line 1302
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportType:Lorg/acra/sender/HttpSender$Type;

    return-object p0
.end method

.method public setReportingInteractionMode(Lorg/acra/ReportingInteractionMode;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/ReportingInteractionMode;",
            ")TT;"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->reportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    return-object p0
.end method

.method public setResCertificate(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resCertificate:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogCommentPrompt(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogCommentPrompt:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogEmailPrompt(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogEmailPrompt:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogIcon(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 384
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogIcon:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogNegativeButtonText(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogNegativeButtonText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogOkToast(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogOkToast:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogPositiveButtonText(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogPositiveButtonText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogText(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogTheme(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 453
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogTheme:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResDialogTitle(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 436
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resDialogTitle:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResNotifIcon(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 471
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifIcon:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResNotifText(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 488
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResNotifTickerText(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifTickerText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResNotifTitle(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 522
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resNotifTitle:Ljava/lang/Integer;

    return-object p0
.end method

.method public setResToastText(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 548
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->resToastText:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRetryPolicyClass(Ljava/lang/Class;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/config/RetryPolicy;",
            ">;)TT;"
        }
    .end annotation

    .line 1388
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->retryPolicyClass:Ljava/lang/Class;

    return-object p0
.end method

.method public setSendReportsInDevMode(Z)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1078
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->sendReportsInDevMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSharedPreferencesMode(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->sharedPreferencesMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 579
    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->sharedPreferencesName:Ljava/lang/String;

    return-object p0
.end method

.method public setSocketTimeout(I)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 980
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->socketTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStopServicesOnCrash(Z)Lorg/acra/config/BaseConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1406
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/BaseConfigurationBuilder;->stopServicesOnCrash:Ljava/lang/Boolean;

    return-object p0
.end method

.method sharedPreferencesMode()I
    .locals 1

    .line 608
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->sharedPreferencesMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->sharedPreferencesMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method sharedPreferencesName()Ljava/lang/String;
    .locals 1

    .line 585
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->sharedPreferencesName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->sharedPreferencesName:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method socketTimeout()I
    .locals 1

    .line 985
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->socketTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->socketTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x4e20

    return v0
.end method

.method stopServicesOnCrash()Z
    .locals 1

    .line 1411
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->stopServicesOnCrash:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lorg/acra/config/BaseConfigurationBuilder;->stopServicesOnCrash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
