.class public Lorg/acra/dialog/CrashReportDialog;
.super Lorg/acra/dialog/BaseCrashReportDialog;
.source "CrashReportDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final PADDING:I = 0xa

.field private static final STATE_COMMENT:Ljava/lang/String; = "comment"

.field private static final STATE_EMAIL:Ljava/lang/String; = "email"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private scrollable:Landroid/widget/LinearLayout;

.field private sharedPreferencesFactory:Lorg/acra/prefs/SharedPreferencesFactory;

.field private userCommentView:Landroid/widget/EditText;

.field private userEmailView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/acra/dialog/BaseCrashReportDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected final addViewToDialog(Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->scrollable:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected buildAndShowDialog(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getConfig()Lorg/acra/config/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resDialogTitle()I

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getConfig()Lorg/acra/config/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resDialogIcon()I

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 70
    :cond_1
    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->buildCustomView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getConfig()Lorg/acra/config/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resDialogPositiveButtonText()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getConfig()Lorg/acra/config/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resDialogNegativeButtonText()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    .line 75
    iget-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 76
    iget-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected buildCustomView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 81
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    .line 82
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 83
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 85
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFocusableInTouchMode(Z)V

    .line 86
    iget-object v2, p0, Lorg/acra/dialog/CrashReportDialog;->scrollable:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/acra/dialog/CrashReportDialog;->addViewToDialog(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getCommentLabel()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    invoke-virtual {p0, v2}, Lorg/acra/dialog/CrashReportDialog;->addViewToDialog(Landroid/view/View;)V

    if-eqz p1, :cond_0

    const-string v2, "comment"

    .line 97
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 99
    :goto_0
    invoke-virtual {p0, v2}, Lorg/acra/dialog/CrashReportDialog;->getCommentPrompt(Ljava/lang/CharSequence;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lorg/acra/dialog/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    .line 100
    iget-object v2, p0, Lorg/acra/dialog/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lorg/acra/dialog/CrashReportDialog;->addViewToDialog(Landroid/view/View;)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getEmailLabel()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 106
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 107
    invoke-virtual {p0, v2}, Lorg/acra/dialog/CrashReportDialog;->addViewToDialog(Landroid/view/View;)V

    if-eqz p1, :cond_2

    const-string v1, "email"

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    :cond_2
    invoke-virtual {p0, v3}, Lorg/acra/dialog/CrashReportDialog;->getEmailPrompt(Ljava/lang/CharSequence;)Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    .line 113
    iget-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->addViewToDialog(Landroid/view/View;)V

    :cond_3
    return-object v0
.end method

.method protected getCommentLabel()Landroid/view/View;
    .locals 2

    .line 149
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getConfig()Lorg/acra/config/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->resDialogCommentPrompt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {p0, v0}, Lorg/acra/dialog/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCommentPrompt(Ljava/lang/CharSequence;)Landroid/widget/EditText;
    .locals 2

    .line 166
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method protected getDialog()Landroid/app/AlertDialog;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method protected getEmailLabel()Landroid/view/View;
    .locals 2

    .line 181
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getConfig()Lorg/acra/config/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->resDialogEmailPrompt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {p0, v0}, Lorg/acra/dialog/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEmailPrompt(Ljava/lang/CharSequence;)Landroid/widget/EditText;
    .locals 3

    .line 198
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    const/16 v1, 0x21

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->sharedPreferencesFactory:Lorg/acra/prefs/SharedPreferencesFactory;

    invoke-virtual {p1}, Lorg/acra/prefs/SharedPreferencesFactory;->create()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "acra.user.email"

    const-string v2, ""

    .line 206
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0
.end method

.method protected getMainView()Landroid/view/View;
    .locals 2

    .line 134
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getConfig()Lorg/acra/config/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->resDialogText()I

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0, v1}, Lorg/acra/dialog/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->scrollable:Landroid/widget/LinearLayout;

    .line 47
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->scrollable:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    new-instance v0, Lorg/acra/prefs/SharedPreferencesFactory;

    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getConfig()Lorg/acra/config/ACRAConfiguration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/acra/prefs/SharedPreferencesFactory;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    iput-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->sharedPreferencesFactory:Lorg/acra/prefs/SharedPreferencesFactory;

    .line 49
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->getConfig()Lorg/acra/config/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->resDialogTheme()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lorg/acra/dialog/CrashReportDialog;->setTheme(I)V

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lorg/acra/dialog/CrashReportDialog;->buildAndShowDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 215
    iget-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/acra/dialog/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 219
    :goto_0
    iget-object p2, p0, Lorg/acra/dialog/CrashReportDialog;->sharedPreferencesFactory:Lorg/acra/prefs/SharedPreferencesFactory;

    invoke-virtual {p2}, Lorg/acra/prefs/SharedPreferencesFactory;->create()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 220
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "acra.user.email"

    .line 223
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-static {p2}, Lorg/acra/prefs/PrefUtils;->save(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_1

    :cond_1
    const-string v0, "acra.user.email"

    const-string v1, ""

    .line 226
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/acra/dialog/CrashReportDialog;->sendCrash(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 230
    :cond_2
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->cancelReports()V

    .line 233
    :goto_2
    invoke-virtual {p0}, Lorg/acra/dialog/CrashReportDialog;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 244
    invoke-super {p0, p1}, Lorg/acra/dialog/BaseCrashReportDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 245
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "comment"

    .line 246
    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->userCommentView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/dialog/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "email"

    .line 249
    iget-object v1, p0, Lorg/acra/dialog/CrashReportDialog;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
