.class public Lorg/acra/sender/EmailIntentSender;
.super Ljava/lang/Object;
.source "EmailIntentSender.java"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;


# direct methods
.method public constructor <init>(Lorg/acra/config/ACRAConfiguration;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/ACRAConfiguration;

    return-void
.end method

.method private buildInitialIntents(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x10000

    .line 169
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 172
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 173
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {v2, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPackageName(Landroid/content/ComponentName;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 123
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private grantPermission(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 191
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 194
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    .line 195
    invoke-virtual {p1, p3, p4, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private showChooser(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    const/4 v2, 0x0

    .line 183
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    .line 184
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 185
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected buildAttachmentIntent(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    .line 141
    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v3}, Lorg/acra/config/ACRAConfiguration;->mailTo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 143
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "message/rfc822"

    .line 144
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    .line 145
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    if-nez p4, :cond_0

    const-string p1, "android.intent.extra.TEXT"

    .line 146
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method protected buildBody(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;
    .locals 4

    .line 219
    iget-object v0, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->reportContent()Lorg/acra/collections/ImmutableSet;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    new-instance v0, Lorg/acra/collections/ImmutableSet;

    sget-object v1, Lorg/acra/ACRAConstants;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 224
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/ReportField;

    .line 226
    invoke-virtual {v2}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p1, v2}, Lorg/acra/collector/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/model/Element;

    if-eqz v2, :cond_1

    const-string v3, "\n\t"

    .line 229
    invoke-interface {v2}, Lorg/acra/model/Element;->flatten()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v2, 0xa

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected buildResolveIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto"

    .line 160
    iget-object v2, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->mailTo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 162
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 163
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected buildSubject(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Crash Report"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected createAttachmentFromString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    :try_start_0
    invoke-static {v0, p3}, Lorg/acra/util/IOUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    invoke-static {p1, v0}, Lorg/acra/attachment/AcraContentProvider;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected fillAttachmentList(Landroid/content/Context;Lorg/acra/collector/CrashReportData;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/acra/collector/CrashReportData;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .line 245
    new-instance v0, Lorg/acra/util/InstanceCreator;

    invoke-direct {v0}, Lorg/acra/util/InstanceCreator;-><init>()V

    .line 246
    iget-object v1, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->attachmentUriProvider()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lorg/acra/attachment/DefaultAttachmentProvider;

    invoke-direct {v2}, Lorg/acra/attachment/DefaultAttachmentProvider;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/acra/util/InstanceCreator;->create(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/attachment/AttachmentUriProvider;

    iget-object v1, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-interface {v0, p1, v1}, Lorg/acra/attachment/AttachmentUriProvider;->getAttachments(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v0, p0, Lorg/acra/sender/EmailIntentSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->reportAsFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ACRA-report.stacktrace"

    .line 248
    invoke-virtual {p2}, Lorg/acra/collector/CrashReportData;->toJSON()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/acra/sender/EmailIntentSender;->createAttachmentFromString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/sender/ReportSenderException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    invoke-virtual {p0, p1}, Lorg/acra/sender/EmailIntentSender;->buildSubject(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0, p2}, Lorg/acra/sender/EmailIntentSender;->buildBody(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;

    move-result-object v2

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {p0, p1, p2, v3}, Lorg/acra/sender/EmailIntentSender;->fillAttachmentList(Landroid/content/Context;Lorg/acra/collector/CrashReportData;Ljava/util/List;)Z

    move-result p2

    .line 76
    invoke-virtual {p0, v1, v2}, Lorg/acra/sender/EmailIntentSender;->buildResolveIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 77
    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 79
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 81
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {p0, v1, v2, v3, p2}, Lorg/acra/sender/EmailIntentSender;->buildAttachmentIntent(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object p2

    .line 84
    invoke-direct {p0, v0, v4, p2}, Lorg/acra/sender/EmailIntentSender;->buildInitialIntents(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-direct {p0, v5, v1}, Lorg/acra/sender/EmailIntentSender;->getPackageName(Landroid/content/ComponentName;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 90
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/acra/sender/EmailIntentSender;->grantPermission(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/acra/sender/EmailIntentSender;->showChooser(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    invoke-direct {p0, p1, p2, v2, v3}, Lorg/acra/sender/EmailIntentSender;->grantPermission(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 98
    :cond_3
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No email client supporting attachments found. Attachments will be ignored"

    invoke-interface {p2, v0, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    .line 103
    :cond_4
    new-instance p1, Lorg/acra/sender/ReportSenderException;

    const-string p2, "No email client found"

    invoke-direct {p1, p2}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
