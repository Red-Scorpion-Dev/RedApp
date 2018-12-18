.class public final Lorg/acra/config/ConfigurationBuilder;
.super Lorg/acra/config/BaseConfigurationBuilder;
.source "ConfigurationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/acra/config/BaseConfigurationBuilder<",
        "Lorg/acra/config/ConfigurationBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private final httpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final reportContentChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lorg/acra/config/BaseConfigurationBuilder;-><init>(Landroid/app/Application;)V

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/acra/config/ConfigurationBuilder;->httpHeaders:Ljava/util/Map;

    .line 59
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lorg/acra/ReportField;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/acra/config/ConfigurationBuilder;->reportContentChanges:Ljava/util/Map;

    return-void
.end method

.method private varargs checkValidity([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/config/ACRAConfigurationException;
        }
    .end annotation

    .line 109
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 110
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    :try_start_0
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    new-instance v0, Lorg/acra/config/ACRAConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is missing a no-args Constructor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/acra/config/ACRAConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 113
    :cond_0
    new-instance p1, Lorg/acra/config/ACRAConfigurationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be abstract."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/acra/config/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_1
    new-instance p1, Lorg/acra/config/ACRAConfigurationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected class, but found interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/acra/config/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method public build()Lorg/acra/config/ACRAConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/config/ACRAConfigurationException;
        }
    .end annotation

    .line 76
    sget-object v0, Lorg/acra/config/ConfigurationBuilder$1;->$SwitchMap$org$acra$ReportingInteractionMode:[I

    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->reportingInteractionMode()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    const-class v0, Lorg/acra/dialog/CrashReportDialog;

    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->reportDialogClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->resDialogText()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Lorg/acra/config/ACRAConfigurationException;

    const-string v1, "DIALOG mode: using the (default) CrashReportDialog requires you to define the resDialogText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/config/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->resNotifTickerText()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->resNotifTitle()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->resNotifText()I

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const-class v0, Lorg/acra/dialog/CrashReportDialog;

    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->reportDialogClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->resDialogText()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Lorg/acra/config/ACRAConfigurationException;

    const-string v1, "NOTIFICATION mode: using the (default) CrashReportDialog requires you have to define the resDialogText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/config/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    new-instance v0, Lorg/acra/config/ACRAConfigurationException;

    const-string v1, "NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText parameters in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/config/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :pswitch_2
    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->resToastText()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 79
    :cond_3
    new-instance v0, Lorg/acra/config/ACRAConfigurationException;

    const-string v1, "TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/config/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->reportSenderFactoryClasses()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_5

    .line 102
    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->reportSenderFactoryClasses()[Ljava/lang/Class;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/acra/config/ConfigurationBuilder;->checkValidity([Ljava/lang/Class;)V

    const/4 v0, 0x4

    .line 103
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->reportDialogClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->reportPrimerClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->retryPolicyClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->keyStoreFactoryClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/acra/config/ConfigurationBuilder;->checkValidity([Ljava/lang/Class;)V

    .line 105
    new-instance v0, Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, p0}, Lorg/acra/config/ACRAConfiguration;-><init>(Lorg/acra/config/ConfigurationBuilder;)V

    return-object v0

    .line 100
    :cond_5
    new-instance v0, Lorg/acra/config/ACRAConfigurationException;

    const-string v1, "Report sender factories: using no report senders will make ACRA useless. Configure at least one ReportSenderFactory."

    invoke-direct {v0, v1}, Lorg/acra/config/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method customReportContent()[Lorg/acra/ReportField;
    .locals 1

    .line 159
    invoke-super {p0}, Lorg/acra/config/BaseConfigurationBuilder;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v0

    return-object v0
.end method

.method httpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/acra/config/ConfigurationBuilder;->httpHeaders:Ljava/util/Map;

    return-object v0
.end method

.method reportContent()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 165
    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 166
    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Using custom Report Fields"

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 168
    invoke-virtual {p0}, Lorg/acra/config/ConfigurationBuilder;->mailTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Using default Report Fields"

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    sget-object v1, Lorg/acra/ACRAConstants;->DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 172
    :cond_3
    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_4

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Using default Mail Report Fields"

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_4
    sget-object v1, Lorg/acra/ACRAConstants;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 177
    :goto_0
    iget-object v1, p0, Lorg/acra/config/ConfigurationBuilder;->reportContentChanges:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 179
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method public setHttpHeaders(Ljava/util/Map;)Lorg/acra/config/ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/acra/config/ConfigurationBuilder;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/acra/config/ConfigurationBuilder;->httpHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 146
    iget-object v0, p0, Lorg/acra/config/ConfigurationBuilder;->httpHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setReportField(Lorg/acra/ReportField;Z)Lorg/acra/config/ConfigurationBuilder;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/acra/config/ConfigurationBuilder;->reportContentChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
