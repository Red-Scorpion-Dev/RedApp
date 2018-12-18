.class public Lorg/h2/tools/Console;
.super Lorg/h2/util/Tool;
.source "Console.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Ljava/awt/event/MouseListener;
.implements Ljava/awt/event/WindowListener;
.implements Lorg/h2/server/ShutdownHandler;


# instance fields
.field private font:Ljava/awt/Font;

.field private frame:Ljava/awt/Frame;

.field private isWindows:Z

.field private lastOpen:J

.field private pg:Lorg/h2/tools/Server;

.field private startBrowser:Ljava/awt/Button;

.field private tcp:Lorg/h2/tools/Server;

.field private tray:Ljava/lang/Object;

.field private trayIcon:Ljava/lang/Object;

.field private trayIconUsed:Z

.field private urlText:Ljava/awt/TextField;

.field private web:Lorg/h2/tools/Server;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method private createTrayIcon()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.awt.SystemTray.isSupported"

    .line 371
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 376
    :cond_0
    new-instance v1, Ljava/awt/PopupMenu;

    invoke-direct {v1}, Ljava/awt/PopupMenu;-><init>()V

    .line 377
    new-instance v2, Ljava/awt/MenuItem;

    const-string v3, "H2 Console"

    invoke-direct {v2, v3}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    const-string v3, "console"

    .line 378
    invoke-virtual {v2, v3}, Ljava/awt/MenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v2, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 380
    iget-object v3, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v2, v3}, Ljava/awt/MenuItem;->setFont(Ljava/awt/Font;)V

    .line 381
    invoke-virtual {v1, v2}, Ljava/awt/PopupMenu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 382
    new-instance v2, Ljava/awt/MenuItem;

    const-string v3, "Status"

    invoke-direct {v2, v3}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    .line 383
    invoke-virtual {v2, v3}, Ljava/awt/MenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v2, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 385
    iget-object v3, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v2, v3}, Ljava/awt/MenuItem;->setFont(Ljava/awt/Font;)V

    .line 386
    invoke-virtual {v1, v2}, Ljava/awt/PopupMenu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 387
    new-instance v2, Ljava/awt/MenuItem;

    const-string v3, "Exit"

    invoke-direct {v2, v3}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 388
    iget-object v3, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v2, v3}, Ljava/awt/MenuItem;->setFont(Ljava/awt/Font;)V

    const-string v3, "exit"

    .line 389
    invoke-virtual {v2, v3}, Ljava/awt/MenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v2, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 391
    invoke-virtual {v1, v2}, Ljava/awt/PopupMenu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    const-string v2, "java.awt.SystemTray.getSystemTray"

    .line 394
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/tools/Console;->tray:Ljava/lang/Object;

    .line 397
    iget-object v2, p0, Lorg/h2/tools/Console;->tray:Ljava/lang/Object;

    const-string v3, "getTrayIconSize"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/Dimension;

    .line 399
    iget v3, v2, Ljava/awt/Dimension;->width:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    iget v3, v2, Ljava/awt/Dimension;->height:I

    if-lt v3, v4, :cond_1

    const-string v2, "/org/h2/res/h2-24.png"

    goto :goto_0

    .line 401
    :cond_1
    iget v3, v2, Ljava/awt/Dimension;->width:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_2

    iget v2, v2, Ljava/awt/Dimension;->height:I

    if-lt v2, v4, :cond_2

    const-string v2, "/org/h2/res/h2-64-t.png"

    goto :goto_0

    :cond_2
    const-string v2, "/org/h2/res/h2.png"

    .line 410
    :goto_0
    invoke-static {v2}, Lorg/h2/tools/Console;->loadImage(Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v2

    const-string v3, "java.awt.TrayIcon"

    const/4 v4, 0x3

    .line 414
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v2, "H2 Database Engine"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lorg/h2/util/Utils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/tools/Console;->trayIcon:Ljava/lang/Object;

    .line 418
    iget-object v1, p0, Lorg/h2/tools/Console;->trayIcon:Ljava/lang/Object;

    const-string v2, "addMouseListener"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-static {v1, v2, v3}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v1, p0, Lorg/h2/tools/Console;->tray:Ljava/lang/Object;

    const-string v2, "add"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/h2/tools/Console;->trayIcon:Ljava/lang/Object;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iput-boolean v5, p0, Lorg/h2/tools/Console;->trayIconUsed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    return v0
.end method

.method private loadFont()V
    .locals 4

    .line 361
    iget-boolean v0, p0, Lorg/h2/tools/Console;->isWindows:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/awt/Font;

    const-string v2, "Dialog"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v1, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    goto :goto_0

    .line 364
    :cond_0
    new-instance v0, Ljava/awt/Font;

    const-string v2, "Dialog"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v1, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    :goto_0
    return-void
.end method

.method private static loadImage(Ljava/lang/String;)Ljava/awt/Image;
    .locals 2

    const/4 v0, 0x0

    .line 308
    :try_start_0
    invoke-static {p0}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 312
    :cond_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/awt/Toolkit;->createImage([B)Ljava/awt/Image;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 314
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 99
    new-instance v0, Lorg/h2/tools/Console;

    invoke-direct {v0}, Lorg/h2/tools/Console;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/Console;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private openBrowser(Ljava/lang/String;)V
    .locals 1

    .line 535
    :try_start_0
    invoke-static {p1}, Lorg/h2/tools/Server;->openBrowser(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 537
    iget-object v0, p0, Lorg/h2/tools/Console;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private printProblem(Ljava/lang/Exception;Lorg/h2/tools/Server;)V
    .locals 2

    if-nez p2, :cond_0

    .line 299
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/h2/tools/Console;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    iget-object p2, p0, Lorg/h2/tools/Console;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Root cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showWindow()V
    .locals 10

    .line 432
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    new-instance v0, Ljava/awt/Frame;

    const-string v1, "H2 Console"

    invoke-direct {v0, v1}, Ljava/awt/Frame;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    .line 436
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v0, p0}, Ljava/awt/Frame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    const-string v0, "/org/h2/res/h2.png"

    .line 437
    invoke-static {v0}, Lorg/h2/tools/Console;->loadImage(Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v1, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v1, v0}, Ljava/awt/Frame;->setIconImage(Ljava/awt/Image;)V

    .line 441
    :cond_1
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/awt/Frame;->setResizable(Z)V

    .line 442
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    sget-object v2, Ljava/awt/SystemColor;->control:Ljava/awt/SystemColor;

    invoke-virtual {v0, v2}, Ljava/awt/Frame;->setBackground(Ljava/awt/Color;)V

    .line 444
    new-instance v0, Ljava/awt/GridBagLayout;

    invoke-direct {v0}, Ljava/awt/GridBagLayout;-><init>()V

    .line 445
    iget-object v2, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v2, v0}, Ljava/awt/Frame;->setLayout(Ljava/awt/LayoutManager;)V

    .line 448
    new-instance v2, Ljava/awt/Panel;

    invoke-direct {v2, v0}, Ljava/awt/Panel;-><init>(Ljava/awt/LayoutManager;)V

    .line 450
    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 451
    iput v1, v0, Ljava/awt/GridBagConstraints;->gridx:I

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 452
    iput-wide v3, v0, Ljava/awt/GridBagConstraints;->weightx:D

    .line 453
    iput-wide v3, v0, Ljava/awt/GridBagConstraints;->weighty:D

    const/4 v5, 0x1

    .line 454
    iput v5, v0, Ljava/awt/GridBagConstraints;->fill:I

    .line 455
    new-instance v6, Ljava/awt/Insets;

    const/16 v7, 0xa

    invoke-direct {v6, v1, v7, v1, v7}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v6, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 456
    iput v1, v0, Ljava/awt/GridBagConstraints;->gridy:I

    .line 458
    new-instance v6, Ljava/awt/GridBagConstraints;

    invoke-direct {v6}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 459
    iput v1, v6, Ljava/awt/GridBagConstraints;->gridx:I

    const/4 v8, 0x2

    .line 460
    iput v8, v6, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 461
    new-instance v9, Ljava/awt/Insets;

    invoke-direct {v9, v7, v1, v1, v1}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v9, v6, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 462
    iput v5, v6, Ljava/awt/GridBagConstraints;->gridy:I

    const/16 v7, 0xd

    .line 463
    iput v7, v6, Ljava/awt/GridBagConstraints;->anchor:I

    .line 465
    new-instance v7, Ljava/awt/GridBagConstraints;

    invoke-direct {v7}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 466
    iput v8, v7, Ljava/awt/GridBagConstraints;->fill:I

    .line 467
    iput v1, v7, Ljava/awt/GridBagConstraints;->gridy:I

    .line 468
    iput-wide v3, v7, Ljava/awt/GridBagConstraints;->weightx:D

    .line 469
    new-instance v3, Ljava/awt/Insets;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4, v1, v1}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v3, v7, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 470
    iput v5, v7, Ljava/awt/GridBagConstraints;->gridx:I

    .line 472
    new-instance v3, Ljava/awt/GridBagConstraints;

    invoke-direct {v3}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 473
    iput v1, v3, Ljava/awt/GridBagConstraints;->gridx:I

    .line 474
    iput v1, v3, Ljava/awt/GridBagConstraints;->gridy:I

    .line 476
    new-instance v4, Ljava/awt/Label;

    const-string v9, "H2 Console URL:"

    invoke-direct {v4, v9, v1}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    .line 477
    iget-object v9, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v4, v9}, Ljava/awt/Label;->setFont(Ljava/awt/Font;)V

    .line 478
    invoke-virtual {v2, v4, v3}, Ljava/awt/Panel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 480
    new-instance v3, Ljava/awt/TextField;

    invoke-direct {v3}, Ljava/awt/TextField;-><init>()V

    iput-object v3, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    .line 481
    iget-object v3, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    invoke-virtual {v3, v1}, Ljava/awt/TextField;->setEditable(Z)V

    .line 482
    iget-object v3, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    iget-object v4, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v3, v4}, Ljava/awt/TextField;->setFont(Ljava/awt/Font;)V

    .line 483
    iget-object v3, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    iget-object v4, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v4}, Lorg/h2/tools/Server;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/awt/TextField;->setText(Ljava/lang/String;)V

    .line 484
    iget-boolean v3, p0, Lorg/h2/tools/Console;->isWindows:Z

    if-eqz v3, :cond_2

    .line 485
    iget-object v3, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    invoke-virtual {v3, v1}, Ljava/awt/TextField;->setFocusable(Z)V

    .line 487
    :cond_2
    iget-object v3, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    invoke-virtual {v2, v3, v7}, Ljava/awt/Panel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 489
    new-instance v3, Ljava/awt/Button;

    const-string v4, "Start Browser"

    invoke-direct {v3, v4}, Ljava/awt/Button;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    .line 490
    iget-object v3, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    invoke-virtual {v3, v1}, Ljava/awt/Button;->setFocusable(Z)V

    .line 491
    iget-object v3, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    const-string v4, "console"

    invoke-virtual {v3, v4}, Ljava/awt/Button;->setActionCommand(Ljava/lang/String;)V

    .line 492
    iget-object v3, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    invoke-virtual {v3, p0}, Ljava/awt/Button;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 493
    iget-object v3, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    iget-object v4, p0, Lorg/h2/tools/Console;->font:Ljava/awt/Font;

    invoke-virtual {v3, v4}, Ljava/awt/Button;->setFont(Ljava/awt/Font;)V

    .line 494
    iget-object v3, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    invoke-virtual {v2, v3, v6}, Ljava/awt/Panel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 495
    iget-object v3, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v3, v2, v0}, Ljava/awt/Frame;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    const/16 v0, 0x12c

    const/16 v2, 0x78

    .line 498
    iget-object v3, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v3, v0, v2}, Ljava/awt/Frame;->setSize(II)V

    .line 499
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v3

    .line 500
    iget-object v4, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    iget v6, v3, Ljava/awt/Dimension;->width:I

    sub-int/2addr v6, v0

    div-int/2addr v6, v8

    iget v0, v3, Ljava/awt/Dimension;->height:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v8

    invoke-virtual {v4, v6, v0}, Ljava/awt/Frame;->setLocation(II)V

    .line 503
    :try_start_0
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v0, v5}, Ljava/awt/Frame;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v0, v5}, Ljava/awt/Frame;->setAlwaysOnTop(Z)V

    .line 512
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v0, v1}, Ljava/awt/Frame;->setAlwaysOnTop(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method private startBrowser()V
    .locals 8

    .line 519
    iget-object v0, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lorg/h2/tools/Console;->urlText:Ljava/awt/TextField;

    invoke-virtual {v1, v0}, Ljava/awt/TextField;->setText(Ljava/lang/String;)V

    .line 524
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 525
    iget-wide v3, p0, Lorg/h2/tools/Console;->lastOpen:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, p0, Lorg/h2/tools/Console;->lastOpen:J

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_2

    .line 526
    :cond_1
    iput-wide v1, p0, Lorg/h2/tools/Console;->lastOpen:J

    .line 527
    invoke-direct {p0, v0}, Lorg/h2/tools/Console;->openBrowser(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    .line 547
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit"

    .line 548
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {p0}, Lorg/h2/tools/Console;->shutdown()V

    goto :goto_0

    :cond_0
    const-string v1, "console"

    .line 550
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    invoke-direct {p0}, Lorg/h2/tools/Console;->startBrowser()V

    goto :goto_0

    :cond_1
    const-string v1, "status"

    .line 552
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    invoke-direct {p0}, Lorg/h2/tools/Console;->showWindow()V

    goto :goto_0

    .line 554
    :cond_2
    iget-object v0, p0, Lorg/h2/tools/Console;->startBrowser:Ljava/awt/Button;

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_3

    .line 556
    invoke-direct {p0}, Lorg/h2/tools/Console;->startBrowser()V

    :cond_3
    :goto_0
    return-void
.end method

.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 1

    .line 567
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getButton()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 568
    invoke-direct {p0}, Lorg/h2/tools/Console;->startBrowser()V

    :cond_0
    return-void
.end method

.method public mouseEntered(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public mouseExited(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public mousePressed(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "os.name"

    const-string v3, ""

    .line 111
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Windows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lorg/h2/tools/Console;->isWindows:Z

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    .line 115
    array-length v4, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, ""

    const-string v6, ""

    move-object v10, v5

    move-object v9, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1
    if-eqz v2, :cond_22

    .line 120
    array-length v7, v2

    if-ge v5, v7, :cond_22

    .line 121
    aget-object v7, v2, v5

    if-nez v7, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v3, "-?"

    .line 124
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "-help"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v3, "-url"

    .line 127
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 129
    aget-object v3, v2, v5

    move-object v12, v3

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_3
    const-string v3, "-driver"

    .line 130
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 131
    aget-object v3, v2, v5

    move-object v13, v3

    goto/16 :goto_2

    :cond_4
    const-string v3, "-user"

    .line 132
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v5, v5, 0x1

    .line 133
    aget-object v3, v2, v5

    move-object v14, v3

    goto/16 :goto_2

    :cond_5
    const-string v3, "-password"

    .line 134
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 135
    aget-object v3, v2, v5

    move-object v15, v3

    goto/16 :goto_2

    :cond_6
    const-string v3, "-web"

    .line 136
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "-web"

    .line 137
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v6, 0x0

    const/16 v16, 0x1

    goto/16 :goto_2

    :cond_7
    const-string v3, "-webAllowOthers"

    .line 140
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v3, "-webDaemon"

    .line 142
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_2

    :cond_9
    const-string v3, "-webSSL"

    .line 144
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_2

    :cond_a
    const-string v3, "-webPort"

    .line 146
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 149
    :cond_b
    invoke-virtual {v1, v7}, Lorg/h2/tools/Console;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto/16 :goto_2

    :cond_c
    const-string v3, "-tool"

    .line 151
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_d
    const-string v3, "-browser"

    .line 155
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_e
    const-string v3, "-tcp"

    .line 159
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "-tcp"

    .line 160
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v6, 0x0

    const/16 v17, 0x1

    goto/16 :goto_2

    :cond_f
    const-string v3, "-tcpAllowOthers"

    .line 163
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_2

    :cond_10
    const-string v3, "-tcpDaemon"

    .line 165
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_2

    :cond_11
    const-string v3, "-tcpSSL"

    .line 167
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_2

    :cond_12
    const-string v3, "-tcpPort"

    .line 169
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_13
    const-string v3, "-tcpPassword"

    .line 171
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    add-int/lit8 v5, v5, 0x1

    .line 172
    aget-object v3, v2, v5

    move-object v10, v3

    goto/16 :goto_2

    :cond_14
    const-string v3, "-tcpShutdown"

    .line 173
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    add-int/lit8 v5, v5, 0x1

    .line 176
    aget-object v3, v2, v5

    move-object v9, v3

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_15
    const-string v3, "-tcpShutdownForce"

    .line 177
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v11, 0x1

    goto/16 :goto_2

    .line 180
    :cond_16
    invoke-virtual {v1, v7}, Lorg/h2/tools/Console;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto :goto_2

    :cond_17
    const-string v3, "-pg"

    .line 182
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "-pg"

    .line 183
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v6, 0x0

    const/16 v20, 0x1

    goto :goto_2

    :cond_18
    const-string v3, "-pgAllowOthers"

    .line 186
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_2

    :cond_19
    const-string v3, "-pgDaemon"

    .line 188
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_2

    :cond_1a
    const-string v3, "-pgPort"

    .line 190
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 193
    :cond_1b
    invoke-virtual {v1, v7}, Lorg/h2/tools/Console;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    goto :goto_2

    :cond_1c
    const-string v3, "-properties"

    .line 195
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1d
    const-string v3, "-trace"

    .line 197
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_2

    :cond_1e
    const-string v3, "-ifExists"

    .line 199
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_2

    :cond_1f
    const-string v3, "-baseDir"

    .line 201
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 204
    :cond_20
    invoke-virtual {v1, v7}, Lorg/h2/tools/Console;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_2
    add-int/2addr v5, v0

    goto/16 :goto_1

    .line 125
    :cond_21
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/h2/tools/Console;->showUsage()V

    return-void

    :cond_22
    if-eqz v6, :cond_23

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    :cond_23
    if-eqz v8, :cond_24

    .line 215
    iget-object v3, v1, Lorg/h2/tools/Console;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shutting down TCP Server at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 216
    invoke-static {v9, v10, v11, v3}, Lorg/h2/tools/Server;->shutdownTcpServer(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    :cond_24
    const/4 v3, 0x0

    :goto_4
    if-eqz v12, :cond_25

    .line 223
    invoke-static {v13, v12, v14, v15}, Lorg/h2/util/JdbcUtils;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v5

    .line 224
    invoke-static {v5}, Lorg/h2/tools/Server;->startWebServer(Ljava/sql/Connection;)V

    :cond_25
    if-eqz v16, :cond_27

    .line 229
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/h2/tools/Server;->createWebServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v5

    iput-object v5, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    .line 230
    iget-object v5, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v5, v1}, Lorg/h2/tools/Server;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V

    .line 231
    iget-object v5, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v5}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    if-eqz v4, :cond_26

    .line 233
    iget-object v5, v1, Lorg/h2/tools/Console;->out:Ljava/io/PrintStream;

    iget-object v6, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v6}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_26
    const/4 v3, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 237
    iget-object v0, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-direct {v1, v7, v0}, Lorg/h2/tools/Console;->printProblem(Ljava/lang/Exception;Lorg/h2/tools/Server;)V

    move-object/from16 v21, v7

    goto :goto_6

    :cond_27
    :goto_5
    const/16 v21, 0x0

    :goto_6
    if-eqz v18, :cond_28

    if-eqz v3, :cond_28

    .line 243
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_28

    .line 244
    invoke-direct/range {p0 .. p0}, Lorg/h2/tools/Console;->loadFont()V

    .line 246
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/h2/tools/Console;->createTrayIcon()Z

    move-result v0

    if-nez v0, :cond_28

    .line 247
    invoke-direct/range {p0 .. p0}, Lorg/h2/tools/Console;->showWindow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_28
    :goto_7
    if-eqz v19, :cond_29

    .line 258
    iget-object v0, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    if-eqz v0, :cond_29

    .line 259
    iget-object v0, v1, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/h2/tools/Console;->openBrowser(Ljava/lang/String;)V

    :cond_29
    if-eqz v17, :cond_2b

    .line 264
    :try_start_2
    invoke-static/range {p1 .. p1}, Lorg/h2/tools/Server;->createTcpServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    .line 265
    iget-object v0, v1, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    if-eqz v4, :cond_2a

    .line 267
    iget-object v0, v1, Lorg/h2/tools/Console;->out:Ljava/io/PrintStream;

    iget-object v3, v1, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v3}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    :cond_2a
    iget-object v0, v1, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v0, v1}, Lorg/h2/tools/Server;->setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 271
    iget-object v3, v1, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    invoke-direct {v1, v0, v3}, Lorg/h2/tools/Console;->printProblem(Ljava/lang/Exception;Lorg/h2/tools/Server;)V

    if-nez v21, :cond_2b

    move-object/from16 v21, v0

    :cond_2b
    :goto_8
    if-eqz v20, :cond_2c

    .line 279
    :try_start_3
    invoke-static/range {p1 .. p1}, Lorg/h2/tools/Server;->createPgServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    .line 280
    iget-object v0, v1, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;

    if-eqz v4, :cond_2c

    .line 282
    iget-object v0, v1, Lorg/h2/tools/Console;->out:Ljava/io/PrintStream;

    iget-object v2, v1, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    invoke-virtual {v2}, Lorg/h2/tools/Server;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    .line 285
    iget-object v2, v1, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    invoke-direct {v1, v0, v2}, Lorg/h2/tools/Console;->printProblem(Ljava/lang/Exception;Lorg/h2/tools/Server;)V

    if-nez v21, :cond_2c

    goto :goto_a

    :cond_2c
    :goto_9
    move-object/from16 v0, v21

    :goto_a
    if-nez v0, :cond_2d

    return-void

    .line 292
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lorg/h2/tools/Console;->shutdown()V

    .line 293
    throw v0
.end method

.method public shutdown()V
    .locals 6

    .line 325
    iget-object v0, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v0, v1}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    .line 327
    iput-object v2, p0, Lorg/h2/tools/Console;->web:Lorg/h2/tools/Server;

    .line 329
    :cond_0
    iget-object v0, p0, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v0, v1}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    .line 331
    iput-object v2, p0, Lorg/h2/tools/Console;->tcp:Lorg/h2/tools/Server;

    .line 333
    :cond_1
    iget-object v0, p0, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    invoke-virtual {v0, v1}, Lorg/h2/tools/Server;->isRunning(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    .line 335
    iput-object v2, p0, Lorg/h2/tools/Console;->pg:Lorg/h2/tools/Server;

    .line 338
    :cond_2
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {v0}, Ljava/awt/Frame;->dispose()V

    .line 340
    iput-object v2, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    .line 342
    :cond_3
    iget-boolean v0, p0, Lorg/h2/tools/Console;->trayIconUsed:Z

    if-eqz v0, :cond_4

    .line 345
    :try_start_0
    iget-object v0, p0, Lorg/h2/tools/Console;->tray:Ljava/lang/Object;

    const-string v3, "remove"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/h2/tools/Console;->trayIcon:Ljava/lang/Object;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 349
    iput-object v2, p0, Lorg/h2/tools/Console;->trayIcon:Ljava/lang/Object;

    .line 350
    iput-object v2, p0, Lorg/h2/tools/Console;->tray:Ljava/lang/Object;

    .line 351
    iput-boolean v1, p0, Lorg/h2/tools/Console;->trayIconUsed:Z

    throw v0

    .line 349
    :catch_0
    :goto_0
    iput-object v2, p0, Lorg/h2/tools/Console;->trayIcon:Ljava/lang/Object;

    .line 350
    iput-object v2, p0, Lorg/h2/tools/Console;->tray:Ljava/lang/Object;

    .line 351
    iput-boolean v1, p0, Lorg/h2/tools/Console;->trayIconUsed:Z

    .line 353
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_4
    return-void
.end method

.method public windowActivated(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowClosed(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 619
    iget-boolean p1, p0, Lorg/h2/tools/Console;->trayIconUsed:Z

    if-eqz p1, :cond_0

    .line 620
    iget-object p1, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    invoke-virtual {p1}, Ljava/awt/Frame;->dispose()V

    const/4 p1, 0x0

    .line 621
    iput-object p1, p0, Lorg/h2/tools/Console;->frame:Ljava/awt/Frame;

    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {p0}, Lorg/h2/tools/Console;->shutdown()V

    :goto_0
    return-void
.end method

.method public windowDeactivated(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowDeiconified(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowIconified(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method

.method public windowOpened(Ljava/awt/event/WindowEvent;)V
    .locals 0

    return-void
.end method
