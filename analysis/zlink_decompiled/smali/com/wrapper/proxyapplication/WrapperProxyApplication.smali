.class public abstract Lcom/wrapper/proxyapplication/WrapperProxyApplication;
.super Landroid/app/Application;
.source "WrapperProxyApplication.java"


# static fields
.field static baseContext:Landroid/content/Context;

.field static className:Ljava/lang/String;

.field static counter:I

.field static dynconfclass:Ljava/lang/String;

.field static dynconfmethod:Ljava/lang/String;

.field static errormsg:Ljava/lang/String;

.field static mLoader:Ljava/lang/ClassLoader;

.field static mtoast:Landroid/widget/Toast;

.field static pkgName:Ljava/lang/String;

.field static protectlib:Ljava/lang/String;

.field static protectlibx86:Ljava/lang/String;

.field static reportapiclass:Ljava/lang/String;

.field static reportapimethod:Ljava/lang/String;

.field static shellApp:Landroid/app/Application;

.field static shellsuperversion:Ljava/lang/String;

.field static tinkerApp:Ljava/lang/String;

.field static waringmsg:Ljava/lang/String;

.field static yaqdate:I


# instance fields
.field actiontimer:Ljava/util/Timer;

.field errortoasttask:Ljava/util/TimerTask;

.field mHandler:Landroid/os/Handler;

.field timer:Ljava/util/Timer;

.field toasttask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->shellApp:Landroid/app/Application;

    .line 40
    const-string v1, "com.zjinnova.zlink"

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->pkgName:Ljava/lang/String;

    .line 41
    const-string v1, "com.zjinnova.android.zlink.ZlinkApp"

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;

    .line 42
    const-string v1, "tinker not support"

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->tinkerApp:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->mLoader:Ljava/lang/ClassLoader;

    .line 44
    const-string v1, "libshell-super.com.zjinnova.zlink.so"

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->protectlib:Ljava/lang/String;

    .line 45
    const-string v1, "libshellx-super.com.zjinnova.zlink.so"

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->protectlibx86:Ljava/lang/String;

    .line 46
    const-string v1, "4.6.2.2"

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->shellsuperversion:Ljava/lang/String;

    .line 48
    const-string v1, "Your protected app is trial version"

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->waringmsg:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->errormsg:Ljava/lang/String;

    .line 50
    const-string v1, "xxxx1"

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->reportapiclass:Ljava/lang/String;

    .line 51
    const-string v1, "xxxx2"

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->reportapimethod:Ljava/lang/String;

    .line 52
    const-string v1, "xxxx3"

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->dynconfclass:Ljava/lang/String;

    .line 53
    const-string v1, "xxxx4"

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->dynconfmethod:Ljava/lang/String;

    .line 54
    const v1, 0x0

    sput v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->yaqdate:I

    .line 55
    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->mtoast:Landroid/widget/Toast;

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->counter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 56
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->timer:Ljava/util/Timer;

    .line 57
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->actiontimer:Ljava/util/Timer;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication$1;

    invoke-direct {v0, p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication$1;-><init>(Lcom/wrapper/proxyapplication/WrapperProxyApplication;)V

    iput-object v0, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->toasttask:Ljava/util/TimerTask;

    .line 84
    new-instance v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication$2;

    invoke-direct {v0, p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication$2;-><init>(Lcom/wrapper/proxyapplication/WrapperProxyApplication;)V

    iput-object v0, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->errortoasttask:Ljava/util/TimerTask;

    return-void
.end method

.method private declared-synchronized Fixappname()Z
    .locals 2

    monitor-enter p0

    .line 118
    :try_start_0
    sget-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;

    goto :goto_0

    .line 121
    .end local p0    # "this":Lcom/wrapper/proxyapplication/WrapperProxyApplication;
    :cond_0
    sget-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->className:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static fixAndroid(Landroid/content/Context;Landroid/app/Application;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "application"    # Landroid/app/Application;

    .line 494
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 496
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 499
    .local v0, "mClassLoader":Ljava/lang/ClassLoader;
    invoke-static {v0, p1}, Lcom/wrapper/proxyapplication/AndroidNClassLoader;->inject(Ljava/lang/ClassLoader;Landroid/app/Application;)Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->mLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v0    # "mClassLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 506
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 510
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 511
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 514
    const-string v1, "0"

    return-object v1
.end method

.method static getWrapperProxyAppBaseContext()Landroid/content/Context;
    .locals 1

    .line 112
    sget-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->baseContext:Landroid/content/Context;

    return-object v0
.end method

.method static native unsetenv(Ljava/lang/String;)V
.end method


# virtual methods
.method native Ooo0ooO0oO()V
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 520
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 521
    invoke-virtual {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->baseContext:Landroid/content/Context;

    .line 522
    sget-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->shellApp:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 523
    sput-object p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->shellApp:Landroid/app/Application;

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->Fixappname()Z

    .line 537
    invoke-virtual {p0, p1}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->initProxyApplication(Landroid/content/Context;)V

    .line 538
    return-void
.end method

.method protected abstract initProxyApplication(Landroid/content/Context;)V
.end method

.method public onCreate()V
    .locals 13

    .line 552
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 553
    invoke-virtual {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->Ooo0ooO0oO()V

    .line 554
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->mHandler:Landroid/os/Handler;

    .line 555
    sget v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->yaqdate:I

    if-eqz v0, :cond_0

    .line 557
    iget-object v1, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->toasttask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xbb8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 563
    :cond_0
    iget-object v7, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->actiontimer:Ljava/util/Timer;

    iget-object v8, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->errortoasttask:Ljava/util/TimerTask;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0xbb8

    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 581
    return-void
.end method
