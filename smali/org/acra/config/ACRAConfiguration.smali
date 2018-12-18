.class public final Lorg/acra/config/ACRAConfiguration;
.super Ljava/lang/Object;
.source "ACRAConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private additionalDropBoxTags:Lorg/acra/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private additionalSharedPreferences:Lorg/acra/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private alsoReportToAndroidFramework:Z

.field private applicationLogFile:Ljava/lang/String;

.field private applicationLogFileDir:Lorg/acra/file/Directory;

.field private applicationLogFileLines:I

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

.field private attachmentUris:Lorg/acra/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buildConfigClass:Ljava/lang/Class;

.field private certificatePath:Ljava/lang/String;

.field private certificateType:Ljava/lang/String;

.field private connectionTimeout:I

.field private deleteOldUnsentReportsOnApplicationStart:Z

.field private deleteUnapprovedReportsOnApplicationStart:Z

.field private dropboxCollectionMinutes:I

.field private excludeMatchingSettingsKeys:Lorg/acra/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private excludeMatchingSharedPreferencesKeys:Lorg/acra/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private formUri:Ljava/lang/String;

.field private formUriBasicAuthLogin:Ljava/lang/String;

.field private formUriBasicAuthPassword:Ljava/lang/String;

.field private httpHeaders:Lorg/acra/collections/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/collections/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpMethod:Lorg/acra/sender/HttpSender$Method;

.field private includeDropBoxSystemTags:Z

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

.field private logcatArguments:Lorg/acra/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logcatFilterByPid:Z

.field private mailTo:Ljava/lang/String;

.field private nonBlockingReadForLogcat:Z

.field private reportAsFile:Z

.field private reportContent:Lorg/acra/collections/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/collections/ImmutableSet<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation
.end field

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

.field private reportSenderFactoryClasses:Lorg/acra/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/sender/ReportSenderFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private reportType:Lorg/acra/sender/HttpSender$Type;

.field private reportingInteractionMode:Lorg/acra/ReportingInteractionMode;

.field private resCertificate:I

.field private resDialogCommentPrompt:I

.field private resDialogEmailPrompt:I

.field private resDialogIcon:I

.field private resDialogNegativeButtonText:I

.field private resDialogOkToast:I

.field private resDialogPositiveButtonText:I

.field private resDialogText:I

.field private resDialogTheme:I

.field private resDialogTitle:I

.field private resNotifIcon:I

.field private resNotifText:I

.field private resNotifTickerText:I

.field private resNotifTitle:I

.field private resToastText:I

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

.field private sendReportsInDevMode:Z

.field private sharedPreferencesMode:I

.field private sharedPreferencesName:Ljava/lang/String;

.field private socketTimeout:I

.field private stopServicesOnCrash:Z


# direct methods
.method public constructor <init>(Lorg/acra/config/ConfigurationBuilder;)V
    .locals 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->reportPrimerClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportPrimerClass:Ljava/lang/Class;

    .line 194
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resDialogCommentPrompt()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogCommentPrompt:I

    .line 195
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resDialogPositiveButtonText()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogPositiveButtonText:I

    .line 196
    new-instance v0, Lorg/acra/collections/ImmutableMap;

    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->httpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->httpHeaders:Lorg/acra/collections/ImmutableMap;

    .line 197
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportType:Lorg/acra/sender/HttpSender$Type;

    .line 198
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->certificatePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->certificatePath:Ljava/lang/String;

    .line 199
    new-instance v0, Lorg/acra/collections/ImmutableList;

    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->excludeMatchingSettingsKeys()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->excludeMatchingSettingsKeys:Lorg/acra/collections/ImmutableList;

    .line 200
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->applicationLogFileDir()Lorg/acra/file/Directory;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->applicationLogFileDir:Lorg/acra/file/Directory;

    .line 201
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthPassword:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->stopServicesOnCrash()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->stopServicesOnCrash:Z

    .line 203
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->formUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUri:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->socketTimeout()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->socketTimeout:I

    .line 205
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resNotifIcon()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifIcon:I

    .line 206
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->mailTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->mailTo:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->buildConfigClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->buildConfigClass:Ljava/lang/Class;

    .line 208
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->sendReportsInDevMode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->sendReportsInDevMode:Z

    .line 209
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resNotifText()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifText:I

    .line 210
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesName:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->reportingInteractionMode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    .line 212
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->dropboxCollectionMinutes()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->dropboxCollectionMinutes:I

    .line 213
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart:Z

    .line 214
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resDialogNegativeButtonText()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogNegativeButtonText:I

    .line 215
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resDialogOkToast()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogOkToast:I

    .line 216
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->includeDropBoxSystemTags()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->includeDropBoxSystemTags:Z

    .line 217
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resDialogText()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogText:I

    .line 218
    new-instance v0, Lorg/acra/collections/ImmutableList;

    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->excludeMatchingSharedPreferencesKeys:Lorg/acra/collections/ImmutableList;

    .line 219
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->certificateType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->certificateType:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->reportAsFile()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->reportAsFile:Z

    .line 221
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->sharedPreferencesMode()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesMode:I

    .line 222
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resNotifTickerText()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifTickerText:I

    .line 223
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resDialogTitle()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogTitle:I

    .line 224
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resNotifTitle()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifTitle:I

    .line 225
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resDialogIcon()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogIcon:I

    .line 226
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart:Z

    .line 227
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->logcatFilterByPid()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->logcatFilterByPid:Z

    .line 228
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->reportDialogClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportDialogClass:Ljava/lang/Class;

    .line 229
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->httpMethod:Lorg/acra/sender/HttpSender$Method;

    .line 230
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->keyStoreFactoryClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->keyStoreFactoryClass:Ljava/lang/Class;

    .line 231
    new-instance v0, Lorg/acra/collections/ImmutableList;

    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->additionalSharedPreferences()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->additionalSharedPreferences:Lorg/acra/collections/ImmutableList;

    .line 232
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resDialogTheme()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogTheme:I

    .line 233
    new-instance v0, Lorg/acra/collections/ImmutableList;

    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->logcatArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->logcatArguments:Lorg/acra/collections/ImmutableList;

    .line 234
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resToastText()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resToastText:I

    .line 235
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->applicationLogFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->applicationLogFile:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->retryPolicyClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->retryPolicyClass:Ljava/lang/Class;

    .line 237
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resCertificate()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resCertificate:I

    .line 238
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->connectionTimeout()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->connectionTimeout:I

    .line 239
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->alsoReportToAndroidFramework()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->alsoReportToAndroidFramework:Z

    .line 240
    new-instance v0, Lorg/acra/collections/ImmutableList;

    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->additionalDropBoxTags:Lorg/acra/collections/ImmutableList;

    .line 241
    new-instance v0, Lorg/acra/collections/ImmutableSet;

    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->reportContent()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportContent:Lorg/acra/collections/ImmutableSet;

    .line 242
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->resDialogEmailPrompt()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogEmailPrompt:I

    .line 243
    new-instance v0, Lorg/acra/collections/ImmutableList;

    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->attachmentUris()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->attachmentUris:Lorg/acra/collections/ImmutableList;

    .line 244
    new-instance v0, Lorg/acra/collections/ImmutableList;

    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->reportSenderFactoryClasses()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableList;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportSenderFactoryClasses:Lorg/acra/collections/ImmutableList;

    .line 245
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->applicationLogFileLines()I

    move-result v0

    iput v0, p0, Lorg/acra/config/ACRAConfiguration;->applicationLogFileLines:I

    .line 246
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthLogin:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->nonBlockingReadForLogcat()Z

    move-result v0

    iput-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->nonBlockingReadForLogcat:Z

    .line 248
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->attachmentUriProvider()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/config/ACRAConfiguration;->attachmentUriProvider:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public additionalDropBoxTags()Lorg/acra/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->additionalDropBoxTags:Lorg/acra/collections/ImmutableList;

    return-object v0
.end method

.method public additionalSharedPreferences()Lorg/acra/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->additionalSharedPreferences:Lorg/acra/collections/ImmutableList;

    return-object v0
.end method

.method public alsoReportToAndroidFramework()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->alsoReportToAndroidFramework:Z

    return v0
.end method

.method public applicationLogFile()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->applicationLogFile:Ljava/lang/String;

    return-object v0
.end method

.method public applicationLogFileDir()Lorg/acra/file/Directory;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->applicationLogFileDir:Lorg/acra/file/Directory;

    return-object v0
.end method

.method public applicationLogFileLines()I
    .locals 1

    .line 500
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->applicationLogFileLines:I

    return v0
.end method

.method public attachmentUriProvider()Ljava/lang/Class;
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

    .line 514
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->attachmentUriProvider:Ljava/lang/Class;

    return-object v0
.end method

.method public attachmentUris()Lorg/acra/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->attachmentUris:Lorg/acra/collections/ImmutableList;

    return-object v0
.end method

.method public buildConfigClass()Ljava/lang/Class;
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->buildConfigClass:Ljava/lang/Class;

    return-object v0
.end method

.method public certificatePath()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->certificatePath:Ljava/lang/String;

    return-object v0
.end method

.method public certificateType()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->certificateType:Ljava/lang/String;

    return-object v0
.end method

.method public connectionTimeout()I
    .locals 1

    .line 467
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->connectionTimeout:I

    return v0
.end method

.method public deleteOldUnsentReportsOnApplicationStart()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart:Z

    return v0
.end method

.method public deleteUnapprovedReportsOnApplicationStart()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart:Z

    return v0
.end method

.method public dropboxCollectionMinutes()I
    .locals 1

    .line 344
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->dropboxCollectionMinutes:I

    return v0
.end method

.method public excludeMatchingSettingsKeys()Lorg/acra/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->excludeMatchingSettingsKeys:Lorg/acra/collections/ImmutableList;

    return-object v0
.end method

.method public excludeMatchingSharedPreferencesKeys()Lorg/acra/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->excludeMatchingSharedPreferencesKeys:Lorg/acra/collections/ImmutableList;

    return-object v0
.end method

.method public formUri()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUri:Ljava/lang/String;

    return-object v0
.end method

.method public formUriBasicAuthLogin()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthLogin:Ljava/lang/String;

    return-object v0
.end method

.method public formUriBasicAuthPassword()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthPassword:Ljava/lang/String;

    return-object v0
.end method

.method public httpHeaders()Lorg/acra/collections/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/collections/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->httpHeaders:Lorg/acra/collections/ImmutableMap;

    return-object v0
.end method

.method public httpMethod()Lorg/acra/sender/HttpSender$Method;
    .locals 1

    .line 423
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->httpMethod:Lorg/acra/sender/HttpSender$Method;

    return-object v0
.end method

.method public includeDropBoxSystemTags()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->includeDropBoxSystemTags:Z

    return v0
.end method

.method public keyStoreFactoryClass()Ljava/lang/Class;
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

    .line 428
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->keyStoreFactoryClass:Ljava/lang/Class;

    return-object v0
.end method

.method public logcatArguments()Lorg/acra/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->logcatArguments:Lorg/acra/collections/ImmutableList;

    return-object v0
.end method

.method public logcatFilterByPid()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->logcatFilterByPid:Z

    return v0
.end method

.method public mailTo()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->mailTo:Ljava/lang/String;

    return-object v0
.end method

.method public nonBlockingReadForLogcat()Z
    .locals 1

    .line 509
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->nonBlockingReadForLogcat:Z

    return v0
.end method

.method public reportAsFile()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->reportAsFile:Z

    return v0
.end method

.method public reportContent()Lorg/acra/collections/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/collections/ImmutableSet<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportContent:Lorg/acra/collections/ImmutableSet;

    return-object v0
.end method

.method public reportDialogClass()Ljava/lang/Class;
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

    .line 418
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportDialogClass:Ljava/lang/Class;

    return-object v0
.end method

.method public reportPrimerClass()Ljava/lang/Class;
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

    .line 253
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportPrimerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public reportSenderFactoryClasses()Lorg/acra/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/acra/collections/ImmutableList<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/sender/ReportSenderFactory;",
            ">;>;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportSenderFactoryClasses:Lorg/acra/collections/ImmutableList;

    return-object v0
.end method

.method public reportType()Lorg/acra/sender/HttpSender$Type;
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportType:Lorg/acra/sender/HttpSender$Type;

    return-object v0
.end method

.method public reportingInteractionMode()Lorg/acra/ReportingInteractionMode;
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->reportingInteractionMode:Lorg/acra/ReportingInteractionMode;

    return-object v0
.end method

.method public resCertificate()I
    .locals 1

    .line 463
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resCertificate:I

    return v0
.end method

.method public resDialogCommentPrompt()I
    .locals 1

    .line 258
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogCommentPrompt:I

    return v0
.end method

.method public resDialogEmailPrompt()I
    .locals 1

    .line 486
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogEmailPrompt:I

    return v0
.end method

.method public resDialogIcon()I
    .locals 1

    .line 405
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogIcon:I

    return v0
.end method

.method public resDialogNegativeButtonText()I
    .locals 1

    .line 353
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogNegativeButtonText:I

    return v0
.end method

.method public resDialogOkToast()I
    .locals 1

    .line 358
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogOkToast:I

    return v0
.end method

.method public resDialogPositiveButtonText()I
    .locals 1

    .line 263
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogPositiveButtonText:I

    return v0
.end method

.method public resDialogText()I
    .locals 1

    .line 367
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogText:I

    return v0
.end method

.method public resDialogTheme()I
    .locals 1

    .line 438
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogTheme:I

    return v0
.end method

.method public resDialogTitle()I
    .locals 1

    .line 395
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resDialogTitle:I

    return v0
.end method

.method public resNotifIcon()I
    .locals 1

    .line 311
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifIcon:I

    return v0
.end method

.method public resNotifText()I
    .locals 1

    .line 330
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifText:I

    return v0
.end method

.method public resNotifTickerText()I
    .locals 1

    .line 390
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifTickerText:I

    return v0
.end method

.method public resNotifTitle()I
    .locals 1

    .line 400
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resNotifTitle:I

    return v0
.end method

.method public resToastText()I
    .locals 1

    .line 448
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->resToastText:I

    return v0
.end method

.method public retryPolicyClass()Ljava/lang/Class;
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

    .line 458
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->retryPolicyClass:Ljava/lang/Class;

    return-object v0
.end method

.method public sendReportsInDevMode()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->sendReportsInDevMode:Z

    return v0
.end method

.method public sharedPreferencesMode()I
    .locals 1

    .line 385
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesMode:I

    return v0
.end method

.method public sharedPreferencesName()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method public socketTimeout()I
    .locals 1

    .line 306
    iget v0, p0, Lorg/acra/config/ACRAConfiguration;->socketTimeout:I

    return v0
.end method

.method public stopServicesOnCrash()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lorg/acra/config/ACRAConfiguration;->stopServicesOnCrash:Z

    return v0
.end method
