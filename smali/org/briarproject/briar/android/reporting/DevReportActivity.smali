.class public Lorg/briarproject/briar/android/reporting/DevReportActivity;
.super Lorg/acra/dialog/BaseCrashReportDialog;
.source "DevReportActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final STATE_REVIEWING:Ljava/lang/String; = "reviewing"

.field private static final requiredFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chevron:Landroid/widget/Button;

.field private delegate:Landroid/support/v7/app/AppCompatDelegate;

.field private excludedFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation
.end field

.field private includeDebugReport:Landroid/widget/CheckBox;

.field private progress:Landroid/view/View;

.field private report:Landroid/widget/LinearLayout;

.field private reviewing:Z

.field private sendReport:Landroid/view/MenuItem;

.field private userCommentView:Landroid/widget/EditText;

.field private userEmailView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const-class v0, Lorg/briarproject/briar/android/reporting/DevReportActivity;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->LOG:Ljava/util/logging/Logger;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->requiredFields:Ljava/util/Set;

    .line 67
    sget-object v0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->requiredFields:Ljava/util/Set;

    sget-object v1, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->requiredFields:Ljava/util/Set;

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->requiredFields:Ljava/util/Set;

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->requiredFields:Ljava/util/Set;

    sget-object v1, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->requiredFields:Ljava/util/Set;

    sget-object v1, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->requiredFields:Ljava/util/Set;

    sget-object v1, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/acra/dialog/BaseCrashReportDialog;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->excludedFields:Ljava/util/Set;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->userCommentView:Landroid/widget/EditText;

    .line 78
    iput-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->userEmailView:Landroid/widget/EditText;

    .line 79
    iput-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->includeDebugReport:Landroid/widget/CheckBox;

    .line 80
    iput-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->chevron:Landroid/widget/Button;

    .line 81
    iput-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->report:Landroid/widget/LinearLayout;

    .line 82
    iput-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->progress:Landroid/view/View;

    .line 83
    iput-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->sendReport:Landroid/view/MenuItem;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->reviewing:Z

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 57
    sget-object v0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 57
    sget-object v0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->requiredFields:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Ljava/util/Set;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->excludedFields:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->report:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->progress:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/EditText;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->userCommentView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/EditText;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->userEmailView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lorg/briarproject/briar/android/reporting/DevReportActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->sendCrash(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private closeReport()V
    .locals 0

    .line 385
    invoke-virtual {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->cancelReports()V

    .line 386
    invoke-virtual {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->finish()V

    return-void
.end method

.method private getDelegate()Landroid/support/v7/app/AppCompatDelegate;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->delegate:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, v0}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->delegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->delegate:Landroid/support/v7/app/AppCompatDelegate;

    return-object v0
.end method

.method private isFeedback()Z
    .locals 1

    .line 271
    invoke-virtual {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/briarproject/briar/android/util/UserFeedback;

    return v0
.end method

.method public static synthetic lambda$init$0(Lorg/briarproject/briar/android/reporting/DevReportActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x1

    .line 151
    iput-boolean p3, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->reviewing:Z

    const/4 p3, 0x0

    .line 152
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x4

    .line 153
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "input_method"

    .line 154
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->userCommentView:Landroid/widget/EditText;

    const/4 p3, 0x2

    .line 155
    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic lambda$init$1(Lorg/briarproject/briar/android/reporting/DevReportActivity;Landroid/view/View;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->closeReport()V

    return-void
.end method

.method public static synthetic lambda$init$2(Lorg/briarproject/briar/android/reporting/DevReportActivity;Landroid/view/View;)V
    .locals 2

    .line 159
    iget-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->chevron:Landroid/widget/Button;

    .line 160
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f1101b3

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->chevron:Landroid/widget/Button;

    const v0, 0x7f1100ec

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 163
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->refresh()V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->chevron:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 166
    iget-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->report:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private processReport()V
    .locals 3

    .line 329
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->userCommentView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->sendReport:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 332
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->progress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->isFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->includeDebugReport:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 334
    :goto_1
    new-instance v2, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;

    invoke-direct {v2, p0, v0}, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;-><init>(Lorg/briarproject/briar/android/reporting/DevReportActivity;Z)V

    new-array v0, v1, [Ljava/lang/Void;

    .line 381
    invoke-virtual {v2, v0}, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refresh()V
    .locals 2

    .line 275
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->report:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->progress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->report:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 278
    new-instance v0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;-><init>(Lorg/briarproject/briar/android/reporting/DevReportActivity;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 325
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 180
    invoke-static {}, Lorg/briarproject/briar/android/Localizer;->getInstance()Lorg/briarproject/briar/android/Localizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/Localizer;->setLocale(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 179
    invoke-super {p0, p1}, Lorg/acra/dialog/BaseCrashReportDialog;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 6

    .line 114
    invoke-super {p0, p1}, Lorg/acra/dialog/BaseCrashReportDialog;->init(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 118
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V

    const v0, 0x7f0901a2

    .line 120
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 121
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDelegate;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const v0, 0x7f09013f

    .line 123
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09013d

    .line 124
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901b9

    .line 125
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->userCommentView:Landroid/widget/EditText;

    const v2, 0x7f0901bb

    .line 126
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->userEmailView:Landroid/widget/EditText;

    const v2, 0x7f0900d4

    .line 127
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->includeDebugReport:Landroid/widget/CheckBox;

    const v2, 0x7f090066

    .line 128
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->chevron:Landroid/widget/Button;

    const v2, 0x7f09013c

    .line 129
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->report:Landroid/widget/LinearLayout;

    const v2, 0x7f090133

    .line 130
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->progress:Landroid/view/View;

    .line 133
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 134
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->isFeedback()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f1100a6

    goto :goto_0

    :cond_0
    const v3, 0x7f11007f

    .line 133
    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 136
    iget-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->userCommentView:Landroid/widget/EditText;

    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->isFeedback()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f11009b

    goto :goto_1

    :cond_1
    const v3, 0x7f11008a

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 139
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->isFeedback()Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 140
    iget-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->includeDebugReport:Landroid/widget/CheckBox;

    const v5, 0x7f1100ef

    .line 141
    invoke-virtual {p0, v5}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 145
    :cond_2
    iget-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->includeDebugReport:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v2, 0x7f09000f

    .line 150
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/briarproject/briar/android/reporting/-$$Lambda$DevReportActivity$zT223Cg8EFJ0ryO7YPK8bGSizxY;

    invoke-direct {v3, p0, v1, v0}, Lorg/briarproject/briar/android/reporting/-$$Lambda$DevReportActivity$zT223Cg8EFJ0ryO7YPK8bGSizxY;-><init>(Lorg/briarproject/briar/android/reporting/DevReportActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090084

    .line 157
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/briarproject/briar/android/reporting/-$$Lambda$DevReportActivity$5ngXUf1MJidOHytDR4cor-0uXk0;

    invoke-direct {v2, p0}, Lorg/briarproject/briar/android/reporting/-$$Lambda$DevReportActivity$5ngXUf1MJidOHytDR4cor-0uXk0;-><init>(Lorg/briarproject/briar/android/reporting/DevReportActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->chevron:Landroid/widget/Button;

    new-instance v2, Lorg/briarproject/briar/android/reporting/-$$Lambda$DevReportActivity$-Rb0d6gjC3VnBlM18sAPh5ZIfDk;

    invoke-direct {v2, p0}, Lorg/briarproject/briar/android/reporting/-$$Lambda$DevReportActivity$-Rb0d6gjC3VnBlM18sAPh5ZIfDk;-><init>(Lorg/briarproject/briar/android/reporting/DevReportActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_3

    const-string v1, "reviewing"

    .line 171
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->isFeedback()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->reviewing:Z

    .line 173
    :cond_3
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->isFeedback()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->reviewing:Z

    if-nez p1, :cond_4

    .line 174
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 257
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->closeReport()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 262
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/acra/ReportField;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 264
    iget-object p2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->excludedFields:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_0
    iget-object p2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->excludedFields:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 233
    invoke-super {p0, p1}, Lorg/acra/dialog/BaseCrashReportDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 234
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 204
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0005

    .line 205
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090035

    .line 206
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->sendReport:Landroid/view/MenuItem;

    .line 207
    invoke-super {p0, p1}, Lorg/acra/dialog/BaseCrashReportDialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 251
    invoke-super {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->onDestroy()V

    .line 252
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090035

    if-eq v0, v1, :cond_0

    .line 221
    invoke-super {p0, p1}, Lorg/acra/dialog/BaseCrashReportDialog;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 218
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->processReport()V

    return v2

    .line 215
    :cond_1
    invoke-virtual {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->onBackPressed()V

    return v2
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 185
    invoke-super {p0, p1}, Lorg/acra/dialog/BaseCrashReportDialog;->onPostCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 197
    invoke-super {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->onPostResume()V

    .line 198
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onPostResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 239
    invoke-super {p0, p1}, Lorg/acra/dialog/BaseCrashReportDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "reviewing"

    .line 240
    iget-boolean v1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->reviewing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 191
    invoke-super {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->onStart()V

    .line 192
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity;->chevron:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->refresh()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 245
    invoke-super {p0}, Lorg/acra/dialog/BaseCrashReportDialog;->onStop()V

    .line 246
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 227
    invoke-super {p0, p1, p2}, Lorg/acra/dialog/BaseCrashReportDialog;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 228
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected preInit(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lorg/acra/dialog/BaseCrashReportDialog;->preInit(Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 97
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegate;->applyDayNight()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1200ce

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->setTheme(I)V

    :cond_1
    :goto_0
    return-void
.end method
