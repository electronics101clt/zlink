.class public Lcom/zjinnova/zlink/MyWrapperProxyApplication;
.super Lcom/wrapper/proxyapplication/WrapperProxyApplication;
.source "MyWrapperProxyApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected initProxyApplication(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 20
    .local v0, "apkdir":Ljava/lang/String;
    const/4 v1, 0x0

    .line 22
    .local v1, "apkzf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 26
    goto :goto_0

    .line 23
    :catch_0
    move-exception v2

    .line 25
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    if-nez v1, :cond_0

    .line 29
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 30
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 33
    :cond_0
    invoke-static {p1, v1}, Lcom/wrapper/proxyapplication/Util;->PrepareSecurefiles(Landroid/content/Context;Ljava/util/zip/ZipFile;)I

    .line 36
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    goto :goto_1

    .line 37
    :catch_1
    move-exception v2

    .line 39
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    sget-object v2, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    const-string v3, "86"

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    const-string v3, "86_64"

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 45
    :cond_1
    sget-object v2, Lcom/wrapper/proxyapplication/Util;->simplelibname:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_3

    .line 43
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/prodexdir/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 52
    :goto_3
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->onCreate()V

    .line 14
    return-void
.end method
