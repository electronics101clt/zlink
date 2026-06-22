.class public Lcom/wrapper/proxyapplication/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static CPUABI:Ljava/lang/String; = null

.field static final ERROR_EXCEPTION:I = -0x2

.field static final ERROR_FALSE:I = 0x0

.field static final ERROR_FILE_EXIST:I = 0x2

.field static final ERROR_FILE_NOT_FOUND:I = -0x1

.field static final ERROR_FILE_NOT_FOUND_INZIP:I = -0x3

.field static final ERROR_SUCCESS:I = 0x1

.field public static MAX_DEX_NUM:I

.field public static TAG:Ljava/lang/String;

.field public static dexname:Ljava/lang/String;

.field public static ifoverwrite:Z

.field public static libname:Ljava/lang/String;

.field public static securename0:Ljava/lang/String;

.field public static securename1:Ljava/lang/String;

.field public static securename11:Ljava/lang/String;

.field public static securename14:Ljava/lang/String;

.field public static securename15:Ljava/lang/String;

.field public static securename2:Ljava/lang/String;

.field public static securename3:Ljava/lang/String;

.field public static securename4:Ljava/lang/String;

.field public static securename5:Ljava/lang/String;

.field public static securename6:Ljava/lang/String;

.field public static securename7:Ljava/lang/String;

.field public static securename8:Ljava/lang/String;

.field public static securename9:Ljava/lang/String;

.field public static simplelibname:Ljava/lang/String;

.field public static versionname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    const/16 v0, 0x12c

    sput v0, Lcom/wrapper/proxyapplication/Util;->MAX_DEX_NUM:I

    .line 44
    const-string v0, "Util"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/wrapper/proxyapplication/Util;->simplelibname:Ljava/lang/String;

    .line 48
    const-string v0, "00O000ll111l.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;

    .line 49
    const-string v0, "00O000ll111l.jar"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename1:Ljava/lang/String;

    .line 50
    const-string v0, "000O00ll111l.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename2:Ljava/lang/String;

    .line 51
    const-string v0, "0000000lllll.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename3:Ljava/lang/String;

    .line 52
    const-string v0, "000000olllll.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename4:Ljava/lang/String;

    .line 55
    const-string v0, "0OO00l111l1l"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    .line 56
    const-string v0, "o0oooOO0ooOo.dat"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    .line 60
    const-string v0, "exportService.txt"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    .line 61
    const-string v0, ".flag00O000ll111l.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename8:Ljava/lang/String;

    .line 62
    const-string v0, ".updateIV.dat"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename9:Ljava/lang/String;

    .line 63
    const-string v0, "tosversion"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->versionname:Ljava/lang/String;

    .line 65
    const-string v0, ".flag00O000ll111l.vdex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename11:Ljava/lang/String;

    .line 68
    const-string v0, "00O000ll111l.vdex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename14:Ljava/lang/String;

    .line 69
    const-string v0, "00O000ll111l.odex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->securename15:Ljava/lang/String;

    .line 71
    const-string v0, "classes.dex"

    sput-object v0, Lcom/wrapper/proxyapplication/Util;->dexname:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wrapper/proxyapplication/Util;->ifoverwrite:Z

    .line 77
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 78
    .local v0, "tid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/exe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wrapper/proxyapplication/Util;->getelffilearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    .line 79
    sget-object v1, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    const-string v2, ".so"

    const-string v3, "lib"

    const-string v4, "86"

    if-eq v1, v4, :cond_0

    const-string v4, "86_64"

    if-eq v1, v4, :cond_0

    .line 80
    const-string v1, "shell-super.com.zjinnova.zlink"

    sput-object v1, Lcom/wrapper/proxyapplication/Util;->simplelibname:Ljava/lang/String;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/wrapper/proxyapplication/Util;->simplelibname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_0
    const-string v1, "shellx-super.com.zjinnova.zlink"

    sput-object v1, Lcom/wrapper/proxyapplication/Util;->simplelibname:Ljava/lang/String;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/wrapper/proxyapplication/Util;->simplelibname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    .line 87
    .end local v0    # "tid":I
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Comparetxtinzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)I
    .locals 12
    .param p0, "apkzf"    # Ljava/util/zip/ZipFile;
    .param p1, "filepathinzip"    # Ljava/lang/String;
    .param p2, "fileinfiledir"    # Ljava/io/File;

    .line 254
    const/4 v0, -0x1

    .line 256
    .local v0, "result":I
    const/4 v1, 0x0

    .line 258
    .local v1, "cookie_entry":Ljava/util/zip/ZipEntry;
    const/4 v2, 0x0

    .line 260
    .local v2, "checkzbr":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 262
    .local v3, "checkfbr":Ljava/io/BufferedInputStream;
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 265
    const/4 v4, -0x2

    if-nez v1, :cond_3

    .line 267
    const/4 v5, -0x3

    .line 293
    if-eqz v2, :cond_2

    .line 295
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    if-eqz v3, :cond_2

    .line 303
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    goto :goto_3

    .line 304
    :catch_0
    move-exception v5

    .line 306
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .line 301
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 296
    :catch_1
    move-exception v5

    .line 298
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    nop

    .line 301
    if-eqz v3, :cond_0

    .line 303
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 308
    goto :goto_0

    .line 304
    :catch_2
    move-exception v6

    .line 306
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .line 299
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return v4

    .line 301
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v3, :cond_1

    .line 303
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 308
    goto :goto_2

    .line 304
    :catch_3
    move-exception v5

    .line 306
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    throw v5

    .line 267
    :cond_2
    :goto_3
    return v5

    .line 270
    :cond_3
    const/16 v5, 0x400

    :try_start_5
    new-array v6, v5, [B

    .line 271
    .local v6, "checkzipbuf":[B
    new-array v5, v5, [B

    .line 272
    .local v5, "checkfilebuf":[B
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v7

    .line 273
    invoke-virtual {v2, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 274
    .local v7, "readziplen":I
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, "tmpzipstr":Ljava/lang/String;
    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v10

    .line 278
    invoke-virtual {v3, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    .line 279
    .local v10, "readfilelen":I
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 282
    .local v9, "tmpfilestr":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v11, :cond_4

    .line 283
    const/4 v0, 0x1

    goto :goto_4

    .line 285
    :cond_4
    const/4 v0, 0x0

    .line 293
    .end local v5    # "checkfilebuf":[B
    .end local v6    # "checkzipbuf":[B
    .end local v7    # "readziplen":I
    .end local v8    # "tmpzipstr":Ljava/lang/String;
    .end local v9    # "tmpfilestr":Ljava/lang/String;
    .end local v10    # "readfilelen":I
    :goto_4
    nop

    .line 295
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 301
    nop

    .line 303
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 308
    nop

    .line 307
    nop

    .line 313
    return v0

    .line 304
    :catch_4
    move-exception v5

    .line 306
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .line 301
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    goto :goto_5

    .line 296
    :catch_5
    move-exception v5

    .line 298
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 299
    nop

    .line 301
    nop

    .line 303
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 308
    nop

    .line 299
    return v4

    .line 304
    :catch_6
    move-exception v6

    .line 306
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .line 303
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 308
    nop

    .line 307
    throw v5

    .line 304
    :catch_7
    move-exception v5

    .line 306
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .line 293
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    goto :goto_a

    .line 288
    :catch_8
    move-exception v5

    .line 290
    .local v5, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 291
    nop

    .line 293
    if-eqz v2, :cond_7

    .line 295
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 301
    if-eqz v3, :cond_7

    .line 303
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 308
    goto :goto_9

    .line 304
    :catch_9
    move-exception v6

    .line 306
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .line 301
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v6

    goto :goto_7

    .line 296
    :catch_a
    move-exception v6

    .line 298
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 299
    nop

    .line 301
    if-eqz v3, :cond_5

    .line 303
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 308
    goto :goto_6

    .line 304
    :catch_b
    move-exception v7

    .line 306
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .line 299
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    return v4

    .line 301
    .end local v6    # "e":Ljava/io/IOException;
    :goto_7
    if-eqz v3, :cond_6

    .line 303
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 308
    goto :goto_8

    .line 304
    :catch_c
    move-exception v6

    .line 306
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    :goto_8
    throw v6

    .line 291
    :cond_7
    :goto_9
    return v4

    .line 293
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_a
    if-eqz v2, :cond_a

    .line 295
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 301
    if-eqz v3, :cond_a

    .line 303
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 308
    goto :goto_e

    .line 304
    :catch_d
    move-exception v5

    .line 306
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .line 301
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v5

    goto :goto_c

    .line 296
    :catch_e
    move-exception v5

    .line 298
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 299
    nop

    .line 301
    if-eqz v3, :cond_8

    .line 303
    :try_start_14
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    .line 308
    goto :goto_b

    .line 304
    :catch_f
    move-exception v6

    .line 306
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .line 299
    .end local v6    # "e":Ljava/io/IOException;
    :cond_8
    :goto_b
    return v4

    .line 301
    .end local v5    # "e":Ljava/io/IOException;
    :goto_c
    if-eqz v3, :cond_9

    .line 303
    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    .line 308
    goto :goto_d

    .line 304
    :catch_10
    move-exception v5

    .line 306
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    return v4

    .end local v5    # "e":Ljava/io/IOException;
    :cond_9
    :goto_d
    throw v5

    :cond_a
    :goto_e
    throw v5
.end method

.method public static CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "Oldfilename"    # Ljava/lang/String;
    .param p1, "SplitString"    # Ljava/lang/String;
    .param p2, "InsertString"    # Ljava/lang/String;

    .line 691
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 692
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 695
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static DeleteFile(Ljava/lang/String;)I
    .locals 2
    .param p0, "filepath"    # Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "tmpfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const/4 v1, -0x2

    return v1

    .line 181
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 183
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static PrepareSecurefiles(Landroid/content/Context;Ljava/util/zip/ZipFile;)I
    .locals 32
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "apkzf"    # Ljava/util/zip/ZipFile;

    .line 338
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 340
    .local v2, "Cookiefile":Ljava/io/File;
    const/4 v3, 0x0

    .line 341
    .local v3, "file_channel":Ljava/nio/channels/FileChannel;
    const/4 v4, 0x0

    .line 343
    .local v4, "file_lock":Ljava/nio/channels/FileLock;
    const/4 v5, 0x0

    .line 345
    .local v5, "raf":Ljava/io/RandomAccessFile;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/prodexdir"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "Appfiledir":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v7, "Appprofiledir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 350
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 354
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->versionname:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 355
    .local v8, "Cookiefilepath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/backUp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 356
    .local v10, "backupfilepath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/firstLoad"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 357
    .local v11, "firstloadfilepath":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "assets/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->versionname:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 358
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/wrapper/proxyapplication/Util;->CPUABI:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 362
    .local v14, "Libnameinapk":Ljava/lang/String;
    :try_start_0
    new-instance v15, Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_37
    .catchall {:try_start_0 .. :try_end_0} :catchall_25

    move-object/from16 v16, v2

    .end local v2    # "Cookiefile":Ljava/io/File;
    .local v16, "Cookiefile":Ljava/io/File;
    :try_start_1
    const-string v2, "rw"

    invoke-direct {v15, v8, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_36
    .catchall {:try_start_1 .. :try_end_1} :catchall_24

    move-object v5, v15

    .line 364
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_35
    .catchall {:try_start_2 .. :try_end_2} :catchall_23

    move-object v3, v2

    .line 366
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_34
    .catchall {:try_start_3 .. :try_end_3} :catchall_22

    move-object v4, v2

    .line 373
    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_33
    .catchall {:try_start_4 .. :try_end_4} :catchall_21

    .line 375
    .end local v16    # "Cookiefile":Ljava/io/File;
    .restart local v2    # "Cookiefile":Ljava/io/File;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_32
    .catchall {:try_start_5 .. :try_end_5} :catchall_20

    const-wide/16 v18, 0x0

    cmp-long v20, v16, v18

    if-eqz v20, :cond_f

    .line 379
    :try_start_6
    invoke-static {v1, v12, v2}, Lcom/wrapper/proxyapplication/Util;->Comparetxtinzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)I

    move-result v16
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    move/from16 v17, v16

    .line 381
    .local v17, "compareResult":I
    const/4 v15, 0x1

    move-object/from16 v18, v2

    move/from16 v2, v17

    .end local v17    # "compareResult":I
    .local v2, "compareResult":I
    .local v18, "Cookiefile":Ljava/io/File;
    if-ne v2, v15, :cond_d

    :try_start_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object/from16 v17, v7

    .end local v7    # "Appprofiledir":Ljava/io/File;
    .local v17, "Appprofiledir":Ljava/io/File;
    :try_start_8
    sget-object v7, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v15, Ljava/io/File;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object/from16 v19, v11

    .end local v11    # "firstloadfilepath":Ljava/lang/String;
    .local v19, "firstloadfilepath":Ljava/lang/String;
    :try_start_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v20, v10

    .end local v10    # "backupfilepath":Ljava/lang/String;
    .local v20, "backupfilepath":Ljava/lang/String;
    :try_start_a
    sget-object v10, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v15, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-static {v1, v7, v15}, Lcom/wrapper/proxyapplication/Util;->checkCopiedFileCrc(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-static {v1, v7, v10}, Lcom/wrapper/proxyapplication/Util;->checkCopiedFileCrc(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    move-result v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v7, :cond_b

    .line 386
    nop

    .line 533
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 534
    .local v10, "fileUnzip":Ljava/util/zip/ZipEntry;
    if-eqz v10, :cond_2

    .line 535
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v15, v8

    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v15, "Cookiefilepath":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    invoke-static {v11, v7, v8}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v7

    if-nez v7, :cond_1

    .line 536
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v10

    .end local v10    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .local v21, "fileUnzip":Ljava/util/zip/ZipEntry;
    sget-object v10, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v8}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_0

    .line 535
    .end local v21    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .restart local v10    # "fileUnzip":Ljava/util/zip/ZipEntry;
    :cond_1
    move-object/from16 v21, v10

    .end local v10    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .restart local v21    # "fileUnzip":Ljava/util/zip/ZipEntry;
    goto :goto_0

    .line 534
    .end local v15    # "Cookiefilepath":Ljava/lang/String;
    .end local v21    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "fileUnzip":Ljava/util/zip/ZipEntry;
    :cond_2
    move-object v15, v8

    move-object/from16 v21, v10

    .line 539
    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .end local v10    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .restart local v15    # "Cookiefilepath":Ljava/lang/String;
    .restart local v21    # "fileUnzip":Ljava/util/zip/ZipEntry;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 540
    .end local v21    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .local v7, "fileUnzip":Ljava/util/zip/ZipEntry;
    if-eqz v7, :cond_4

    .line 541
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v8

    if-nez v8, :cond_3

    .line 542
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v7

    .end local v7    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .restart local v21    # "fileUnzip":Ljava/util/zip/ZipEntry;
    sget-object v7, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v8, v10}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_1

    .line 541
    .end local v21    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .restart local v7    # "fileUnzip":Ljava/util/zip/ZipEntry;
    :cond_3
    move-object/from16 v21, v7

    .end local v7    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .restart local v21    # "fileUnzip":Ljava/util/zip/ZipEntry;
    goto :goto_1

    .line 540
    .end local v21    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .restart local v7    # "fileUnzip":Ljava/util/zip/ZipEntry;
    :cond_4
    move-object/from16 v21, v7

    .line 545
    .end local v7    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .restart local v21    # "fileUnzip":Ljava/util/zip/ZipEntry;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 546
    .end local v21    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .restart local v7    # "fileUnzip":Ljava/util/zip/ZipEntry;
    if-eqz v7, :cond_5

    .line 547
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v8

    if-nez v8, :cond_5

    .line 548
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v8, v10}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 551
    :cond_5
    invoke-virtual {v1, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 552
    if-eqz v7, :cond_6

    .line 553
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    move-object v10, v15

    .end local v15    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    invoke-static {v10, v8, v9}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v8

    if-nez v8, :cond_7

    .line 554
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v12, v8}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_2

    .line 552
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v15    # "Cookiefilepath":Ljava/lang/String;
    :cond_6
    move-object v10, v15

    .line 557
    .end local v15    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    :cond_7
    :goto_2
    if-eqz v4, :cond_a

    .line 559
    :try_start_b
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 565
    if-eqz v3, :cond_a

    .line 567
    :try_start_c
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 573
    nop

    .line 575
    :try_start_d
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 580
    nop

    .line 579
    goto/16 :goto_a

    .line 576
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 578
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v9, -0x1

    return v9

    .line 573
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    move-object v8, v0

    goto :goto_4

    .line 568
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 570
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 571
    nop

    .line 573
    nop

    .line 575
    :try_start_f
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 580
    :goto_3
    nop

    .line 571
    const/4 v9, -0x1

    return v9

    .line 576
    :catch_2
    move-exception v0

    const/4 v9, -0x1

    move-object v11, v0

    .line 578
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    return v9

    .line 575
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_10
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    .line 580
    nop

    .line 579
    throw v8

    .line 576
    :catch_3
    move-exception v0

    move-object v8, v0

    .line 578
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v9, -0x1

    return v9

    .line 565
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    move-object v8, v0

    goto :goto_7

    .line 560
    :catch_4
    move-exception v0

    move-object v8, v0

    .line 562
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 563
    nop

    .line 565
    if-eqz v3, :cond_8

    .line 567
    :try_start_12
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 573
    nop

    .line 575
    :try_start_13
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    .line 580
    const/4 v11, -0x1

    goto :goto_6

    .line 576
    :catch_5
    move-exception v0

    move-object v9, v0

    .line 578
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v11, -0x1

    return v11

    .line 573
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v0

    move-object v9, v0

    goto :goto_5

    .line 568
    :catch_6
    move-exception v0

    move-object v9, v0

    .line 570
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 571
    nop

    .line 573
    nop

    .line 575
    :try_start_15
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    .line 580
    nop

    .line 571
    const/4 v11, -0x1

    return v11

    .line 576
    :catch_7
    move-exception v0

    const/4 v11, -0x1

    move-object v13, v0

    .line 578
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    return v11

    .line 575
    .end local v9    # "e":Ljava/io/IOException;
    .end local v13    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_16
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    .line 580
    nop

    .line 579
    throw v9

    .line 576
    :catch_8
    move-exception v0

    move-object v9, v0

    .line 578
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v11, -0x1

    return v11

    .line 565
    .end local v9    # "e":Ljava/io/IOException;
    :cond_8
    const/4 v11, -0x1

    .line 563
    :goto_6
    return v11

    .line 565
    .end local v8    # "e":Ljava/io/IOException;
    :goto_7
    if-eqz v3, :cond_9

    .line 567
    :try_start_17
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 573
    nop

    .line 575
    :try_start_18
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9

    .line 580
    goto :goto_9

    .line 576
    :catch_9
    move-exception v0

    move-object v8, v0

    .line 578
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v9, -0x1

    return v9

    .line 573
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v0

    move-object v8, v0

    goto :goto_8

    .line 568
    :catch_a
    move-exception v0

    move-object v8, v0

    .line 570
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_19
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 571
    nop

    .line 573
    nop

    .line 575
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    goto :goto_3

    .line 576
    :catch_b
    move-exception v0

    const/4 v9, -0x1

    move-object v11, v0

    .line 578
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    return v9

    .line 575
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c

    .line 580
    nop

    .line 579
    throw v8

    .line 576
    :catch_c
    move-exception v0

    move-object v8, v0

    .line 578
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v9, -0x1

    return v9

    .end local v8    # "e":Ljava/io/IOException;
    :cond_9
    :goto_9
    throw v8

    .line 386
    .end local v7    # "fileUnzip":Ljava/util/zip/ZipEntry;
    :cond_a
    :goto_a
    const/4 v7, 0x2

    return v7

    .line 383
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    :cond_b
    move-object v10, v8

    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_b

    .line 382
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    :cond_c
    move-object v10, v8

    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_b

    .line 533
    .end local v2    # "compareResult":I
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object v7, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    :catch_d
    move-exception v0

    move-object v7, v1

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v20, v10

    move-object v7, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object/from16 v20, v10

    move-object v7, v1

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v20, v10

    move-object v7, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .end local v11    # "firstloadfilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .restart local v11    # "firstloadfilepath":Ljava/lang/String;
    :catch_f
    move-exception v0

    move-object/from16 v20, v10

    move-object v7, v1

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .end local v11    # "firstloadfilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .local v7, "Appprofiledir":Ljava/io/File;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .restart local v11    # "firstloadfilepath":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    move-object v7, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .end local v11    # "firstloadfilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .restart local v11    # "firstloadfilepath":Ljava/lang/String;
    :catch_10
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    move-object v7, v1

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .end local v11    # "firstloadfilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 381
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v2    # "compareResult":I
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .restart local v11    # "firstloadfilepath":Ljava/lang/String;
    :cond_d
    move-object/from16 v17, v7

    move-object/from16 v20, v10

    move-object/from16 v19, v11

    move-object v10, v8

    .line 387
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .end local v11    # "firstloadfilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    :goto_b
    const/4 v7, -0x1

    if-eq v2, v7, :cond_e

    const/4 v7, -0x3

    if-ne v2, v7, :cond_10

    .line 390
    :cond_e
    :try_start_1c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    .line 391
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/System;->exit(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_11
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    goto/16 :goto_c

    .line 533
    .end local v2    # "compareResult":I
    :catchall_8
    move-exception v0

    move-object v7, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object v6, v14

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v10

    move-object/from16 v10, v19

    goto/16 :goto_2d

    .line 528
    :catch_11
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object v6, v14

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v10

    move-object/from16 v10, v19

    goto/16 :goto_1d

    .line 533
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v18    # "Cookiefile":Ljava/io/File;
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .local v2, "Cookiefile":Ljava/io/File;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .restart local v11    # "firstloadfilepath":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    move-object v7, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    .end local v2    # "Cookiefile":Ljava/io/File;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .end local v11    # "firstloadfilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v18    # "Cookiefile":Ljava/io/File;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v18    # "Cookiefile":Ljava/io/File;
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v2    # "Cookiefile":Ljava/io/File;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .restart local v11    # "firstloadfilepath":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    move-object v7, v1

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    .end local v2    # "Cookiefile":Ljava/io/File;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .end local v11    # "firstloadfilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v18    # "Cookiefile":Ljava/io/File;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 375
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v18    # "Cookiefile":Ljava/io/File;
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v2    # "Cookiefile":Ljava/io/File;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .restart local v8    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .restart local v11    # "firstloadfilepath":Ljava/lang/String;
    :cond_f
    move-object/from16 v18, v2

    move-object/from16 v17, v7

    move-object/from16 v20, v10

    move-object/from16 v19, v11

    move-object v10, v8

    .line 402
    .end local v2    # "Cookiefile":Ljava/io/File;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v8    # "Cookiefilepath":Ljava/lang/String;
    .end local v11    # "firstloadfilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v18    # "Cookiefile":Ljava/io/File;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    :cond_10
    :goto_c
    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 408
    const/4 v2, -0x1

    .line 409
    .local v2, "deletedexresult":I
    const/4 v7, -0x1

    .line 410
    .local v7, "deletejarresult":I
    const/4 v8, -0x1

    .line 411
    .local v8, "deleteodexresult":I
    const/4 v11, -0x1

    .line 412
    .local v11, "deleteflagresult":I
    const/4 v15, 0x0

    .line 413
    .local v15, "file_count":I
    const/4 v15, 0x0

    :goto_d
    move/from16 v21, v2

    .end local v2    # "deletedexresult":I
    .local v21, "deletedexresult":I
    sget v2, Lcom/wrapper/proxyapplication/Util;->MAX_DEX_NUM:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_31
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1f

    move/from16 v22, v7

    .end local v7    # "deletejarresult":I
    .local v22, "deletejarresult":I
    const-string v7, "/odexdir/"

    move/from16 v23, v8

    .end local v8    # "deleteodexresult":I
    .local v23, "deleteodexresult":I
    const-string v8, "/oat/arm64/"

    move/from16 v24, v11

    .end local v11    # "deleteflagresult":I
    .local v24, "deleteflagresult":I
    const-string v11, "/oat/arm/"

    move-object/from16 v25, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v25, "raf":Ljava/io/RandomAccessFile;
    const-string v5, "_"

    move-object/from16 v26, v3

    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .local v26, "file_channel":Ljava/nio/channels/FileChannel;
    const-string v3, "."

    if-ge v15, v2, :cond_14

    .line 414
    :try_start_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_17
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    move-object/from16 v27, v4

    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .local v27, "file_lock":Ljava/nio/channels/FileLock;
    :try_start_1f
    sget-object v4, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_16
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    move-object/from16 v28, v14

    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v28, "Libnameinapk":Ljava/lang/String;
    :try_start_20
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v3, v14}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v2

    .line 415
    .end local v21    # "deletedexresult":I
    .restart local v2    # "deletedexresult":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->securename1:Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_15
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    move-object/from16 v29, v12

    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .local v29, "Cookiefileinzip":Ljava/lang/String;
    :try_start_21
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v3, v12}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v4

    .line 416
    .end local v22    # "deletejarresult":I
    .local v4, "deletejarresult":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_14
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    move-object/from16 v30, v10

    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .local v30, "Cookiefilepath":Ljava/lang/String;
    :try_start_22
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 417
    invoke-static {v14, v3, v10}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 416
    invoke-static {v10}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v10

    .line 418
    .end local v23    # "deleteodexresult":I
    .local v10, "deleteodexresult":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->securename8:Ljava/lang/String;

    move-object/from16 v31, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 419
    invoke-static {v14, v3, v7}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 418
    invoke-static {v7}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v7

    .line 420
    .end local v24    # "deleteflagresult":I
    .local v7, "deleteflagresult":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->securename11:Ljava/lang/String;

    move/from16 v21, v7

    .end local v7    # "deleteflagresult":I
    .local v21, "deleteflagresult":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v3, v7}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 421
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename11:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 422
    invoke-static {v12, v3, v14}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 421
    invoke-static {v7}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 423
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename14:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v3, v14}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 424
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename15:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v3, v14}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename14:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 426
    invoke-static {v12, v3, v14}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 425
    invoke-static {v7}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 427
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename15:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 428
    invoke-static {v12, v3, v14}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 427
    invoke-static {v7}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 429
    const/4 v7, -0x1

    if-ne v7, v2, :cond_11

    if-ne v7, v4, :cond_11

    if-ne v7, v10, :cond_11

    .line 432
    move/from16 v23, v10

    goto/16 :goto_e

    .line 433
    :cond_11
    const/4 v3, -0x2

    if-eq v3, v2, :cond_12

    if-eq v3, v4, :cond_12

    if-ne v3, v10, :cond_13

    .line 435
    :cond_12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 436
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_13
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 413
    :cond_13
    add-int/lit8 v15, v15, 0x1

    move v7, v4

    move v8, v10

    move/from16 v11, v21

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v14, v28

    move-object/from16 v12, v29

    move-object/from16 v10, v30

    goto/16 :goto_d

    .line 533
    .end local v2    # "deletedexresult":I
    .end local v4    # "deletejarresult":I
    .end local v10    # "deleteodexresult":I
    .end local v15    # "file_count":I
    .end local v21    # "deleteflagresult":I
    :catchall_a
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object v1, v0

    goto/16 :goto_2d

    .line 528
    :catch_13
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object v1, v0

    goto/16 :goto_1d

    .line 533
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v12, v10

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object v1, v0

    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    :catch_14
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v12, v10

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object v1, v0

    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object/from16 v6, v28

    move-object v1, v0

    move-object v12, v10

    move-object/from16 v10, v19

    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    :catch_15
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object v1, v0

    move-object v12, v10

    move-object/from16 v10, v19

    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object v6, v14

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v10

    move-object/from16 v10, v19

    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .restart local v28    # "Libnameinapk":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catch_16
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object v6, v14

    move-object/from16 v22, v20

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object v1, v0

    move-object v12, v10

    move-object/from16 v10, v19

    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .restart local v28    # "Libnameinapk":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .local v4, "file_lock":Ljava/nio/channels/FileLock;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move-object/from16 v27, v4

    move-object v7, v1

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object v6, v14

    move-object/from16 v22, v20

    move-object v1, v0

    move-object v12, v10

    move-object/from16 v10, v19

    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .restart local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v28    # "Libnameinapk":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catch_17
    move-exception v0

    move-object/from16 v27, v4

    move-object v7, v1

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object v6, v14

    move-object/from16 v22, v20

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object v1, v0

    move-object v12, v10

    move-object/from16 v10, v19

    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .restart local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v28    # "Libnameinapk":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 413
    .end local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    .restart local v15    # "file_count":I
    .local v21, "deletedexresult":I
    .restart local v22    # "deletejarresult":I
    .restart local v23    # "deleteodexresult":I
    .restart local v24    # "deleteflagresult":I
    :cond_14
    move-object/from16 v27, v4

    move-object/from16 v31, v7

    move-object/from16 v30, v10

    move-object/from16 v29, v12

    move-object/from16 v28, v14

    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .restart local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v28    # "Libnameinapk":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    move/from16 v2, v21

    move/from16 v4, v22

    move/from16 v21, v24

    .line 442
    .end local v22    # "deletejarresult":I
    .end local v24    # "deleteflagresult":I
    .restart local v2    # "deletedexresult":I
    .local v4, "deletejarresult":I
    .local v21, "deleteflagresult":I
    :goto_e
    :try_start_23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->securename9:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 443
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 451
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->securename5:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v10}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 453
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v10}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v10}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 455
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v10}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 459
    new-instance v7, Ljava/io/File;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_30
    .catchall {:try_start_23 .. :try_end_23} :catchall_1e

    move-object/from16 v10, v30

    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    :try_start_24
    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2f
    .catchall {:try_start_24 .. :try_end_24} :catchall_1d

    move-object/from16 v12, v29

    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    :try_start_25
    invoke-static {v1, v12, v7}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_2e
    .catchall {:try_start_25 .. :try_end_25} :catchall_1c

    .line 460
    const/4 v7, 0x0

    .local v7, "file_count2":I
    :goto_f
    if-ge v7, v15, :cond_18

    .line 461
    :try_start_26
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1d
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    move/from16 v22, v2

    move-object/from16 v2, v20

    .end local v20    # "backupfilepath":Ljava/lang/String;
    .local v2, "backupfilepath":Ljava/lang/String;
    .local v22, "deletedexresult":I
    :try_start_27
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v20, v4

    .end local v4    # "deletejarresult":I
    .local v20, "deletejarresult":I
    sget-object v4, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1c
    .catchall {:try_start_27 .. :try_end_27} :catchall_13

    move-object/from16 v30, v10

    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    :try_start_28
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 462
    invoke-static {v4, v3, v10}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 461
    invoke-static {v4}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v4

    .line 463
    .end local v22    # "deletedexresult":I
    .local v4, "deletedexresult":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->securename1:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1b
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    move-object/from16 v29, v12

    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    :try_start_29
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 464
    invoke-static {v14, v3, v12}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 463
    invoke-static {v10}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v10

    .line 465
    .end local v20    # "deletejarresult":I
    .local v10, "deletejarresult":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v31

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1a
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    move-object/from16 v24, v6

    .end local v6    # "Appfiledir":Ljava/lang/String;
    .local v24, "Appfiledir":Ljava/lang/String;
    :try_start_2a
    sget-object v6, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-static {v6, v3, v1}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {v1}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v1

    .line 467
    .end local v23    # "deleteodexresult":I
    .local v1, "deleteodexresult":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename8:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_19
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    move-object/from16 v31, v13

    :try_start_2b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 468
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 467
    invoke-static {v6}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v6

    move/from16 v21, v6

    .line 469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename11:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 470
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 469
    invoke-static {v6}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 471
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename11:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 472
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 471
    invoke-static {v6}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 473
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename14:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 474
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 473
    invoke-static {v6}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename15:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 476
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 475
    invoke-static {v6}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename14:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 478
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 477
    invoke-static {v6}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 479
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename15:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 480
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-static {v6}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 481
    const/4 v6, -0x1

    if-ne v6, v4, :cond_15

    if-ne v6, v10, :cond_15

    if-ne v6, v1, :cond_15

    .line 484
    move/from16 v20, v10

    goto/16 :goto_10

    .line 485
    :cond_15
    const/4 v6, -0x2

    if-eq v6, v4, :cond_16

    if-eq v6, v10, :cond_16

    if-ne v6, v1, :cond_17

    .line 487
    :cond_16
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 488
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/System;->exit(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_18
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    .line 460
    :cond_17
    add-int/lit8 v7, v7, 0x1

    move/from16 v23, v1

    move-object/from16 v20, v2

    move v2, v4

    move v4, v10

    move-object/from16 v6, v24

    move-object/from16 v12, v29

    move-object/from16 v10, v30

    move-object/from16 v13, v31

    move-object/from16 v1, p1

    move-object/from16 v31, v14

    goto/16 :goto_f

    .line 533
    .end local v1    # "deleteodexresult":I
    .end local v4    # "deletedexresult":I
    .end local v7    # "file_count2":I
    .end local v10    # "deletejarresult":I
    .end local v15    # "file_count":I
    .end local v21    # "deleteflagresult":I
    :catchall_f
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v22, v2

    move-object/from16 v10, v19

    move-object/from16 v8, v24

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v2, v31

    goto/16 :goto_2d

    .line 528
    :catch_18
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v22, v2

    move-object/from16 v10, v19

    move-object/from16 v8, v24

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v2, v31

    goto/16 :goto_1d

    .line 533
    :catchall_10
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v22, v2

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v8, v24

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_2d

    .line 528
    :catch_19
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v22, v2

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v8, v24

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_1d

    .line 533
    .end local v24    # "Appfiledir":Ljava/lang/String;
    .restart local v6    # "Appfiledir":Ljava/lang/String;
    :catchall_11
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v22, v2

    move-object v8, v6

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    .end local v6    # "Appfiledir":Ljava/lang/String;
    .restart local v24    # "Appfiledir":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v24    # "Appfiledir":Ljava/lang/String;
    .restart local v6    # "Appfiledir":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v22, v2

    move-object v8, v6

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    .end local v6    # "Appfiledir":Ljava/lang/String;
    .restart local v24    # "Appfiledir":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v24    # "Appfiledir":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v6    # "Appfiledir":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    :catchall_12
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v22, v2

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v6, v28

    move-object/from16 v12, v30

    .end local v6    # "Appfiledir":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v24    # "Appfiledir":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v24    # "Appfiledir":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v6    # "Appfiledir":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    :catch_1b
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v22, v2

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object/from16 v12, v30

    .end local v6    # "Appfiledir":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v24    # "Appfiledir":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v24    # "Appfiledir":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v6    # "Appfiledir":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    :catchall_13
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v22, v2

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v6, v28

    move-object v12, v10

    move-object/from16 v10, v19

    .end local v6    # "Appfiledir":Ljava/lang/String;
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v24    # "Appfiledir":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v24    # "Appfiledir":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v6    # "Appfiledir":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    :catch_1c
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v22, v2

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object v12, v10

    move-object/from16 v10, v19

    .end local v6    # "Appfiledir":Ljava/lang/String;
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v24    # "Appfiledir":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v2    # "backupfilepath":Ljava/lang/String;
    .end local v24    # "Appfiledir":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v6    # "Appfiledir":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    .local v20, "backupfilepath":Ljava/lang/String;
    :catchall_14
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object/from16 v6, v28

    move-object v12, v10

    move-object/from16 v10, v19

    .end local v6    # "Appfiledir":Ljava/lang/String;
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v2    # "backupfilepath":Ljava/lang/String;
    .restart local v24    # "Appfiledir":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v2    # "backupfilepath":Ljava/lang/String;
    .end local v24    # "Appfiledir":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v6    # "Appfiledir":Ljava/lang/String;
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    :catch_1d
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object v12, v10

    move-object/from16 v10, v19

    .end local v6    # "Appfiledir":Ljava/lang/String;
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v2    # "backupfilepath":Ljava/lang/String;
    .restart local v24    # "Appfiledir":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 460
    .end local v24    # "Appfiledir":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .local v2, "deletedexresult":I
    .local v4, "deletejarresult":I
    .restart local v6    # "Appfiledir":Ljava/lang/String;
    .restart local v7    # "file_count2":I
    .restart local v10    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v15    # "file_count":I
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v21    # "deleteflagresult":I
    .restart local v23    # "deleteodexresult":I
    :cond_18
    move/from16 v22, v2

    move-object/from16 v24, v6

    move-object/from16 v30, v10

    move-object/from16 v29, v12

    move-object/from16 v2, v20

    move-object/from16 v14, v31

    move/from16 v20, v4

    move-object/from16 v31, v13

    .end local v4    # "deletejarresult":I
    .end local v6    # "Appfiledir":Ljava/lang/String;
    .end local v10    # "Cookiefilepath":Ljava/lang/String;
    .end local v12    # "Cookiefileinzip":Ljava/lang/String;
    .local v2, "backupfilepath":Ljava/lang/String;
    .local v20, "deletejarresult":I
    .restart local v22    # "deletedexresult":I
    .restart local v24    # "Appfiledir":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    move/from16 v4, v22

    move/from16 v1, v23

    .line 493
    .end local v7    # "file_count2":I
    .end local v22    # "deletedexresult":I
    .end local v23    # "deleteodexresult":I
    .restart local v1    # "deleteodexresult":I
    .local v4, "deletedexresult":I
    :goto_10
    const/4 v6, 0x0

    .local v6, "file_count3":I
    :goto_11
    if-ge v6, v15, :cond_1c

    .line 494
    :try_start_2c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_20
    .catchall {:try_start_2c .. :try_end_2c} :catchall_17

    move-object/from16 v10, v19

    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    :try_start_2d
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 495
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 494
    invoke-static {v7}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename1:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 497
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 496
    invoke-static {v7}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v7

    .line 498
    .end local v20    # "deletejarresult":I
    .local v7, "deletejarresult":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/wrapper/proxyapplication/Util;->securename0:Ljava/lang/String;

    move/from16 v19, v1

    .end local v1    # "deleteodexresult":I
    .local v19, "deleteodexresult":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {v13, v3, v1}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v1}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v1

    .line 500
    .end local v19    # "deleteodexresult":I
    .restart local v1    # "deleteodexresult":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/wrapper/proxyapplication/Util;->securename8:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_1f
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    move-object/from16 v22, v2

    .end local v2    # "backupfilepath":Ljava/lang/String;
    .local v22, "backupfilepath":Ljava/lang/String;
    :try_start_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-static {v13, v3, v2}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-static {v2}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename11:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 503
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-static {v2}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename11:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 505
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-static {v2}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename14:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 507
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    invoke-static {v2}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename15:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 509
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-static {v2}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename14:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 511
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-static {v2}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/wrapper/proxyapplication/Util;->securename15:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 513
    invoke-static {v12, v3, v13}, Lcom/wrapper/proxyapplication/Util;->CreatenewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-static {v2}, Lcom/wrapper/proxyapplication/Util;->DeleteFile(Ljava/lang/String;)I

    .line 514
    const/4 v2, -0x1

    if-ne v2, v4, :cond_19

    if-ne v2, v7, :cond_19

    if-ne v2, v1, :cond_19

    .line 517
    goto/16 :goto_12

    .line 518
    :cond_19
    const/4 v2, -0x2

    if-eq v2, v4, :cond_1a

    if-eq v2, v7, :cond_1a

    if-ne v2, v1, :cond_1b

    .line 520
    :cond_1a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {v12}, Landroid/os/Process;->killProcess(I)V

    .line 521
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/System;->exit(I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_1e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_15

    .line 493
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    move/from16 v20, v7

    move-object/from16 v19, v10

    move-object/from16 v2, v22

    goto/16 :goto_11

    .line 533
    .end local v1    # "deleteodexresult":I
    .end local v4    # "deletedexresult":I
    .end local v6    # "file_count3":I
    .end local v7    # "deletejarresult":I
    .end local v15    # "file_count":I
    .end local v21    # "deleteflagresult":I
    :catchall_15
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v8, v24

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v2, v31

    goto/16 :goto_2d

    .line 528
    :catch_1e
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v8, v24

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v2, v31

    goto/16 :goto_1d

    .line 533
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v2    # "backupfilepath":Ljava/lang/String;
    :catchall_16
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v8, v24

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v2, v31

    .end local v2    # "backupfilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v2    # "backupfilepath":Ljava/lang/String;
    :catch_1f
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v8, v24

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v2, v31

    .end local v2    # "backupfilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v10    # "firstloadfilepath":Ljava/lang/String;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v2    # "backupfilepath":Ljava/lang/String;
    .local v19, "firstloadfilepath":Ljava/lang/String;
    :catchall_17
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v10, v19

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v8, v24

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v2, v31

    .end local v2    # "backupfilepath":Ljava/lang/String;
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v10    # "firstloadfilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v10    # "firstloadfilepath":Ljava/lang/String;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v2    # "backupfilepath":Ljava/lang/String;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    :catch_20
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v10, v19

    move-object/from16 v7, p1

    move-object v1, v0

    move-object/from16 v8, v24

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v2, v31

    .end local v2    # "backupfilepath":Ljava/lang/String;
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v10    # "firstloadfilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 493
    .end local v10    # "firstloadfilepath":Ljava/lang/String;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v1    # "deleteodexresult":I
    .restart local v2    # "backupfilepath":Ljava/lang/String;
    .restart local v4    # "deletedexresult":I
    .restart local v6    # "file_count3":I
    .restart local v15    # "file_count":I
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "deletejarresult":I
    .restart local v21    # "deleteflagresult":I
    :cond_1c
    move-object/from16 v22, v2

    move-object/from16 v10, v19

    move/from16 v19, v1

    .line 533
    .end local v1    # "deleteodexresult":I
    .end local v2    # "backupfilepath":Ljava/lang/String;
    .end local v4    # "deletedexresult":I
    .end local v6    # "file_count3":I
    .end local v15    # "file_count":I
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "deletejarresult":I
    .end local v21    # "deleteflagresult":I
    .restart local v10    # "firstloadfilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v28

    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, p1

    invoke-virtual {v7, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 534
    .local v1, "fileUnzip":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_1d

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v24

    .end local v24    # "Appfiledir":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v3, v4}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_13

    .line 534
    .end local v8    # "Appfiledir":Ljava/lang/String;
    .restart local v24    # "Appfiledir":Ljava/lang/String;
    :cond_1d
    move-object/from16 v8, v24

    .line 539
    .end local v24    # "Appfiledir":Ljava/lang/String;
    .restart local v8    # "Appfiledir":Ljava/lang/String;
    :cond_1e
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 540
    if-eqz v1, :cond_1f

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v3, v4}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 545
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 546
    if-eqz v1, :cond_20

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_20

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v2, v3}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 551
    :cond_20
    move-object/from16 v11, v29

    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 552
    if-eqz v1, :cond_21

    .line 553
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    move-object/from16 v12, v30

    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    invoke-static {v12, v2, v3}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_22

    .line 554
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v11, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_14

    .line 552
    .end local v12    # "Cookiefilepath":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    :cond_21
    move-object/from16 v12, v30

    .line 557
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .restart local v12    # "Cookiefilepath":Ljava/lang/String;
    :cond_22
    :goto_14
    if-eqz v27, :cond_25

    .line 559
    :try_start_2f
    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_25
    .catchall {:try_start_2f .. :try_end_2f} :catchall_19

    .line 565
    if-eqz v26, :cond_25

    .line 567
    :try_start_30
    invoke-virtual/range {v26 .. v26}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_22
    .catchall {:try_start_30 .. :try_end_30} :catchall_18

    .line 573
    nop

    .line 575
    :try_start_31
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_21

    .line 580
    nop

    .line 579
    goto/16 :goto_1c

    .line 576
    :catch_21
    move-exception v0

    move-object v2, v0

    .line 578
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .line 573
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_18
    move-exception v0

    move-object v2, v0

    goto :goto_16

    .line 568
    :catch_22
    move-exception v0

    move-object v2, v0

    .line 570
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_32
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_18

    .line 571
    nop

    .line 573
    nop

    .line 575
    :try_start_33
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_23

    .line 580
    :goto_15
    nop

    .line 571
    const/4 v3, -0x1

    return v3

    .line 576
    :catch_23
    move-exception v0

    const/4 v3, -0x1

    move-object v4, v0

    .line 578
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    return v3

    .line 575
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_16
    :try_start_34
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_24

    .line 580
    nop

    .line 579
    throw v2

    .line 576
    :catch_24
    move-exception v0

    move-object v2, v0

    .line 578
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .line 565
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_19
    move-exception v0

    move-object v2, v0

    goto :goto_19

    .line 560
    :catch_25
    move-exception v0

    move-object v2, v0

    .line 562
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_35
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_19

    .line 563
    nop

    .line 565
    if-eqz v26, :cond_23

    .line 567
    :try_start_36
    invoke-virtual/range {v26 .. v26}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_27
    .catchall {:try_start_36 .. :try_end_36} :catchall_1a

    .line 573
    nop

    .line 575
    :try_start_37
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_26

    .line 580
    const/4 v4, -0x1

    goto :goto_18

    .line 576
    :catch_26
    move-exception v0

    move-object v3, v0

    .line 578
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v4, -0x1

    return v4

    .line 573
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1a
    move-exception v0

    move-object v3, v0

    goto :goto_17

    .line 568
    :catch_27
    move-exception v0

    move-object v3, v0

    .line 570
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_38
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1a

    .line 571
    nop

    .line 573
    nop

    .line 575
    :try_start_39
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_28

    .line 580
    nop

    .line 571
    const/4 v4, -0x1

    return v4

    .line 576
    :catch_28
    move-exception v0

    const/4 v4, -0x1

    move-object v5, v0

    .line 578
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    return v4

    .line 575
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_17
    :try_start_3a
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_29

    .line 580
    nop

    .line 579
    throw v3

    .line 576
    :catch_29
    move-exception v0

    move-object v3, v0

    .line 578
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v4, -0x1

    return v4

    .line 565
    .end local v3    # "e":Ljava/io/IOException;
    :cond_23
    const/4 v4, -0x1

    .line 563
    :goto_18
    return v4

    .line 565
    .end local v2    # "e":Ljava/io/IOException;
    :goto_19
    if-eqz v26, :cond_24

    .line 567
    :try_start_3b
    invoke-virtual/range {v26 .. v26}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_2b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1b

    .line 573
    nop

    .line 575
    :try_start_3c
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_2a

    .line 580
    goto :goto_1b

    .line 576
    :catch_2a
    move-exception v0

    move-object v2, v0

    .line 578
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .line 573
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1b
    move-exception v0

    move-object v2, v0

    goto :goto_1a

    .line 568
    :catch_2b
    move-exception v0

    move-object v2, v0

    .line 570
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1b

    .line 571
    nop

    .line 573
    nop

    .line 575
    :try_start_3e
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_2c

    goto :goto_15

    .line 576
    :catch_2c
    move-exception v0

    const/4 v3, -0x1

    move-object v4, v0

    .line 578
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    return v3

    .line 575
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1a
    :try_start_3f
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_2d

    .line 580
    nop

    .line 579
    throw v2

    .line 576
    :catch_2d
    move-exception v0

    move-object v2, v0

    .line 578
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .end local v2    # "e":Ljava/io/IOException;
    :cond_24
    :goto_1b
    throw v2

    .line 586
    .end local v1    # "fileUnzip":Ljava/util/zip/ZipEntry;
    :cond_25
    :goto_1c
    nop

    .line 587
    const/4 v1, 0x0

    return v1

    .line 533
    .end local v8    # "Appfiledir":Ljava/lang/String;
    .end local v11    # "Cookiefileinzip":Ljava/lang/String;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .local v6, "Appfiledir":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .local v20, "backupfilepath":Ljava/lang/String;
    .restart local v28    # "Libnameinapk":Ljava/lang/String;
    :catchall_1c
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object/from16 v6, v28

    move-object v12, v10

    move-object/from16 v10, v19

    move-object v1, v0

    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .restart local v8    # "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .restart local v11    # "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v8    # "Appfiledir":Ljava/lang/String;
    .end local v11    # "Cookiefileinzip":Ljava/lang/String;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .local v6, "Appfiledir":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v28    # "Libnameinapk":Ljava/lang/String;
    :catch_2e
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object/from16 v22, v20

    move-object/from16 v6, v28

    move-object v12, v10

    move-object/from16 v10, v19

    move-object v1, v0

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .restart local v8    # "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .restart local v11    # "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v8    # "Appfiledir":Ljava/lang/String;
    .end local v11    # "Cookiefileinzip":Ljava/lang/String;
    .end local v12    # "Cookiefilepath":Ljava/lang/String;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .local v6, "Appfiledir":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v28    # "Libnameinapk":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    :catchall_1d
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v12, v10

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object v1, v0

    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .restart local v8    # "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .restart local v11    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v12    # "Cookiefilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v8    # "Appfiledir":Ljava/lang/String;
    .end local v11    # "Cookiefileinzip":Ljava/lang/String;
    .end local v12    # "Cookiefilepath":Ljava/lang/String;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .local v6, "Appfiledir":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v28    # "Libnameinapk":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    :catch_2f
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v12, v10

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object v1, v0

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .restart local v8    # "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .restart local v11    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v12    # "Cookiefilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v8    # "Appfiledir":Ljava/lang/String;
    .end local v10    # "firstloadfilepath":Ljava/lang/String;
    .end local v11    # "Cookiefileinzip":Ljava/lang/String;
    .end local v12    # "Cookiefilepath":Ljava/lang/String;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v28    # "Libnameinapk":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    :catchall_1e
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object v1, v0

    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .restart local v8    # "Appfiledir":Ljava/lang/String;
    .restart local v10    # "firstloadfilepath":Ljava/lang/String;
    .restart local v11    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v12    # "Cookiefilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v8    # "Appfiledir":Ljava/lang/String;
    .end local v10    # "firstloadfilepath":Ljava/lang/String;
    .end local v11    # "Cookiefileinzip":Ljava/lang/String;
    .end local v12    # "Cookiefilepath":Ljava/lang/String;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    .restart local v28    # "Libnameinapk":Ljava/lang/String;
    .restart local v29    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v30    # "Cookiefilepath":Ljava/lang/String;
    :catch_30
    move-exception v0

    move-object v7, v1

    move-object v8, v6

    move-object v2, v13

    move-object/from16 v10, v19

    move-object/from16 v22, v20

    move-object/from16 v6, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object v1, v0

    move-object/from16 v5, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .end local v28    # "Libnameinapk":Ljava/lang/String;
    .end local v29    # "Cookiefileinzip":Ljava/lang/String;
    .end local v30    # "Cookiefilepath":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .restart local v8    # "Appfiledir":Ljava/lang/String;
    .restart local v10    # "firstloadfilepath":Ljava/lang/String;
    .restart local v11    # "Cookiefileinzip":Ljava/lang/String;
    .restart local v12    # "Cookiefilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_1d

    .line 533
    .end local v8    # "Appfiledir":Ljava/lang/String;
    .end local v11    # "Cookiefileinzip":Ljava/lang/String;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .end local v25    # "raf":Ljava/io/RandomAccessFile;
    .end local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .local v3, "file_channel":Ljava/nio/channels/FileChannel;
    .local v4, "file_lock":Ljava/nio/channels/FileLock;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    .local v6, "Appfiledir":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    :catchall_1f
    move-exception v0

    move-object v7, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object v6, v14

    move-object/from16 v22, v20

    move-object v12, v10

    move-object/from16 v10, v19

    move-object v1, v0

    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .restart local v8    # "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .restart local v11    # "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v25    # "raf":Ljava/io/RandomAccessFile;
    .restart local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v27    # "file_lock":Ljava/nio/channels/FileLock;
    goto/16 :goto_2d

    .line 528
    .end local v8    # "Appfiledir":Ljava/lang/String;
    .end local v11    # "Cookiefileinzip":Ljava/lang/String;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .end local v25    # "raf":Ljava/io/RandomAccessFile;
    .end local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "Appfiledir":Ljava/lang/String;
    .local v10, "Cookiefilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    .restart local v19    # "firstloadfilepath":Ljava/lang/String;
    .restart local v20    # "backupfilepath":Ljava/lang/String;
    :catch_31
    move-exception v0

    move-object v7, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object v8, v6

    move-object v11, v12

    move-object v2, v13

    move-object v6, v14

    move-object/from16 v22, v20

    move-object v12, v10

    move-object/from16 v10, v19

    move-object v1, v0

    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .end local v19    # "firstloadfilepath":Ljava/lang/String;
    .end local v20    # "backupfilepath":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .restart local v8    # "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .restart local v11    # "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v25    # "raf":Ljava/io/RandomAccessFile;
    .restart local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v27    # "file_lock":Ljava/nio/channels/FileLock;
    goto/16 :goto_1d

    .line 533
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v18    # "Cookiefile":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .end local v25    # "raf":Ljava/io/RandomAccessFile;
    .end local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .local v2, "Cookiefile":Ljava/io/File;
    .restart local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "Appfiledir":Ljava/lang/String;
    .local v7, "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catchall_20
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    .end local v2    # "Cookiefile":Ljava/io/File;
    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v18    # "Cookiefile":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v25    # "raf":Ljava/io/RandomAccessFile;
    .restart local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v27    # "file_lock":Ljava/nio/channels/FileLock;
    goto/16 :goto_2d

    .line 528
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v18    # "Cookiefile":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .end local v25    # "raf":Ljava/io/RandomAccessFile;
    .end local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v2    # "Cookiefile":Ljava/io/File;
    .restart local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catch_32
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    .end local v2    # "Cookiefile":Ljava/io/File;
    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v18    # "Cookiefile":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v25    # "raf":Ljava/io/RandomAccessFile;
    .restart local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v27    # "file_lock":Ljava/nio/channels/FileLock;
    goto/16 :goto_1d

    .line 533
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v18    # "Cookiefile":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .end local v25    # "raf":Ljava/io/RandomAccessFile;
    .end local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    .restart local v16    # "Cookiefile":Ljava/io/File;
    :catchall_21
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    move-object/from16 v18, v16

    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v25    # "raf":Ljava/io/RandomAccessFile;
    .restart local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v27    # "file_lock":Ljava/nio/channels/FileLock;
    goto/16 :goto_2d

    .line 528
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .end local v25    # "raf":Ljava/io/RandomAccessFile;
    .end local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catch_33
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    move-object/from16 v18, v16

    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v25    # "raf":Ljava/io/RandomAccessFile;
    .restart local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v27    # "file_lock":Ljava/nio/channels/FileLock;
    goto/16 :goto_1d

    .line 533
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .end local v25    # "raf":Ljava/io/RandomAccessFile;
    .end local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v27    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catchall_22
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v25, v5

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    move-object/from16 v27, v4

    move-object/from16 v18, v16

    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v25    # "raf":Ljava/io/RandomAccessFile;
    .restart local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    goto/16 :goto_2d

    .line 528
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .end local v25    # "raf":Ljava/io/RandomAccessFile;
    .end local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catch_34
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v25, v5

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    move-object/from16 v18, v16

    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v25    # "raf":Ljava/io/RandomAccessFile;
    .restart local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    goto/16 :goto_1d

    .line 533
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .end local v25    # "raf":Ljava/io/RandomAccessFile;
    .end local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catchall_23
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v18, v16

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v25    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_2d

    .line 528
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .end local v25    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catch_35
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    move-object/from16 v18, v16

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v25    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_1d

    .line 533
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .end local v25    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catchall_24
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v18, v16

    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catch_36
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    move-object/from16 v18, v16

    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto :goto_1d

    .line 533
    .end local v16    # "Cookiefile":Ljava/io/File;
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v2    # "Cookiefile":Ljava/io/File;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catchall_25
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v18, v16

    .end local v2    # "Cookiefile":Ljava/io/File;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v16    # "Cookiefile":Ljava/io/File;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    goto/16 :goto_2d

    .line 528
    .end local v16    # "Cookiefile":Ljava/io/File;
    .end local v17    # "Appprofiledir":Ljava/io/File;
    .end local v22    # "backupfilepath":Ljava/lang/String;
    .restart local v2    # "Cookiefile":Ljava/io/File;
    .local v6, "Appfiledir":Ljava/lang/String;
    .restart local v7    # "Appprofiledir":Ljava/io/File;
    .local v8, "Cookiefilepath":Ljava/lang/String;
    .local v10, "backupfilepath":Ljava/lang/String;
    .local v11, "firstloadfilepath":Ljava/lang/String;
    .local v12, "Cookiefileinzip":Ljava/lang/String;
    .restart local v14    # "Libnameinapk":Ljava/lang/String;
    :catch_37
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object v2, v13

    move-object v7, v1

    move-object v12, v8

    move-object v8, v6

    move-object v6, v14

    move-object v1, v0

    move-object/from16 v18, v16

    .line 530
    .end local v2    # "Cookiefile":Ljava/io/File;
    .end local v7    # "Appprofiledir":Ljava/io/File;
    .end local v14    # "Libnameinapk":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .local v6, "Libnameinapk":Ljava/lang/String;
    .local v8, "Appfiledir":Ljava/lang/String;
    .local v10, "firstloadfilepath":Ljava/lang/String;
    .local v11, "Cookiefileinzip":Ljava/lang/String;
    .local v12, "Cookiefilepath":Ljava/lang/String;
    .restart local v17    # "Appprofiledir":Ljava/io/File;
    .restart local v18    # "Cookiefile":Ljava/io/File;
    .restart local v22    # "backupfilepath":Ljava/lang/String;
    :goto_1d
    :try_start_40
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_2a

    .line 531
    nop

    .line 533
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v13

    .line 534
    .local v13, "fileUnzip":Ljava/util/zip/ZipEntry;
    if-eqz v13, :cond_27

    .line 535
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v3

    move-object v15, v4

    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .local v15, "file_lock":Ljava/nio/channels/FileLock;
    .local v16, "file_channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    invoke-static {v14, v3, v4}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_26

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v1

    .end local v1    # "e":Ljava/lang/Exception;
    .local v19, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v3, v4}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_1e

    .line 535
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_26
    move-object/from16 v19, v1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v19    # "e":Ljava/lang/Exception;
    goto :goto_1e

    .line 534
    .end local v15    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v16    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "file_lock":Ljava/nio/channels/FileLock;
    :cond_27
    move-object/from16 v19, v1

    move-object/from16 v16, v3

    move-object v15, v4

    .line 539
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v15    # "file_lock":Ljava/nio/channels/FileLock;
    .restart local v16    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v19    # "e":Ljava/lang/Exception;
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 540
    .end local v13    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .local v1, "fileUnzip":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_28

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    invoke-static {v3, v13, v14}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_28

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v3, v4}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 545
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 546
    if-eqz v1, :cond_29

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    invoke-static {v3, v13, v14}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_29

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v2, v3}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 551
    :cond_29
    invoke-virtual {v7, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 552
    if-eqz v1, :cond_2a

    .line 553
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-static {v12, v2, v3}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 554
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v11, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 557
    :cond_2a
    if-eqz v15, :cond_35

    .line 559
    :try_start_41
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_3c
    .catchall {:try_start_41 .. :try_end_41} :catchall_27

    .line 565
    if-eqz v16, :cond_35

    .line 567
    :try_start_42
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_39
    .catchall {:try_start_42 .. :try_end_42} :catchall_26

    .line 573
    if-eqz v5, :cond_2b

    .line 575
    :try_start_43
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_38

    .line 580
    goto :goto_1f

    .line 576
    :catch_38
    move-exception v0

    move-object v2, v0

    .line 578
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .end local v2    # "e":Ljava/io/IOException;
    :cond_2b
    :goto_1f
    goto/16 :goto_2c

    .line 573
    :catchall_26
    move-exception v0

    move-object v2, v0

    goto :goto_21

    .line 568
    :catch_39
    move-exception v0

    move-object v2, v0

    .line 570
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_44
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_26

    .line 571
    nop

    .line 573
    if-eqz v5, :cond_2c

    .line 575
    :try_start_45
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_3a

    .line 580
    const/4 v4, -0x1

    goto :goto_20

    .line 576
    :catch_3a
    move-exception v0

    move-object v3, v0

    .line 578
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v4, -0x1

    return v4

    .line 573
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2c
    const/4 v4, -0x1

    .line 571
    :goto_20
    return v4

    .line 573
    .end local v2    # "e":Ljava/io/IOException;
    :goto_21
    if-eqz v5, :cond_2d

    .line 575
    :try_start_46
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_3b

    .line 580
    goto :goto_22

    .line 576
    :catch_3b
    move-exception v0

    move-object v2, v0

    .line 578
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .end local v2    # "e":Ljava/io/IOException;
    :cond_2d
    :goto_22
    throw v2

    .line 565
    :catchall_27
    move-exception v0

    move-object v2, v0

    goto :goto_27

    .line 560
    :catch_3c
    move-exception v0

    move-object v2, v0

    .line 562
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_47
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_27

    .line 563
    nop

    .line 565
    if-eqz v16, :cond_31

    .line 567
    :try_start_48
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_3e
    .catchall {:try_start_48 .. :try_end_48} :catchall_28

    .line 573
    if-eqz v5, :cond_2e

    .line 575
    :try_start_49
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_3d

    .line 580
    const/4 v4, -0x1

    goto :goto_26

    .line 576
    :catch_3d
    move-exception v0

    move-object v3, v0

    .line 578
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v4, -0x1

    return v4

    .line 573
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2e
    const/4 v4, -0x1

    goto :goto_26

    :catchall_28
    move-exception v0

    move-object v3, v0

    goto :goto_24

    .line 568
    :catch_3e
    move-exception v0

    move-object v3, v0

    .line 570
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_28

    .line 571
    nop

    .line 573
    if-eqz v5, :cond_2f

    .line 575
    :try_start_4b
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_3f

    .line 580
    const/4 v9, -0x1

    goto :goto_23

    .line 576
    :catch_3f
    move-exception v0

    move-object v4, v0

    .line 578
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v9, -0x1

    return v9

    .line 573
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2f
    const/4 v9, -0x1

    .line 571
    :goto_23
    return v9

    .line 573
    .end local v3    # "e":Ljava/io/IOException;
    :goto_24
    if-eqz v5, :cond_30

    .line 575
    :try_start_4c
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4c} :catch_40

    .line 580
    goto :goto_25

    .line 576
    :catch_40
    move-exception v0

    move-object v3, v0

    .line 578
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v4, -0x1

    return v4

    .end local v3    # "e":Ljava/io/IOException;
    :cond_30
    :goto_25
    throw v3

    .line 565
    :cond_31
    const/4 v4, -0x1

    .line 563
    :goto_26
    return v4

    .line 565
    .end local v2    # "e":Ljava/io/IOException;
    :goto_27
    if-eqz v16, :cond_34

    .line 567
    :try_start_4d
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_42
    .catchall {:try_start_4d .. :try_end_4d} :catchall_29

    .line 573
    if-eqz v5, :cond_34

    .line 575
    :try_start_4e
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4e} :catch_41

    .line 580
    goto :goto_2b

    .line 576
    :catch_41
    move-exception v0

    move-object v2, v0

    .line 578
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .line 573
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_29
    move-exception v0

    move-object v2, v0

    goto :goto_29

    .line 568
    :catch_42
    move-exception v0

    move-object v2, v0

    .line 570
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_29

    .line 571
    nop

    .line 573
    if-eqz v5, :cond_32

    .line 575
    :try_start_50
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_43

    .line 580
    const/4 v4, -0x1

    goto :goto_28

    .line 576
    :catch_43
    move-exception v0

    move-object v3, v0

    .line 578
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v4, -0x1

    return v4

    .line 573
    .end local v3    # "e":Ljava/io/IOException;
    :cond_32
    const/4 v4, -0x1

    .line 571
    :goto_28
    return v4

    .line 573
    .end local v2    # "e":Ljava/io/IOException;
    :goto_29
    if-eqz v5, :cond_33

    .line 575
    :try_start_51
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_44

    .line 580
    goto :goto_2a

    .line 576
    :catch_44
    move-exception v0

    move-object v2, v0

    .line 578
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .end local v2    # "e":Ljava/io/IOException;
    :cond_33
    :goto_2a
    throw v2

    :cond_34
    :goto_2b
    throw v2

    .line 531
    .end local v1    # "fileUnzip":Ljava/util/zip/ZipEntry;
    :cond_35
    :goto_2c
    const/4 v1, -0x1

    return v1

    .line 533
    .end local v15    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v16    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v19    # "e":Ljava/lang/Exception;
    .local v3, "file_channel":Ljava/nio/channels/FileChannel;
    .local v4, "file_lock":Ljava/nio/channels/FileLock;
    :catchall_2a
    move-exception v0

    move-object/from16 v16, v3

    move-object v15, v4

    move-object v1, v0

    move-object/from16 v25, v5

    move-object/from16 v27, v15

    move-object/from16 v26, v16

    .end local v3    # "file_channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "file_lock":Ljava/nio/channels/FileLock;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v25    # "raf":Ljava/io/RandomAccessFile;
    .restart local v26    # "file_channel":Ljava/nio/channels/FileChannel;
    .restart local v27    # "file_lock":Ljava/nio/channels/FileLock;
    :goto_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 534
    .local v3, "fileUnzip":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_36

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    invoke-static {v4, v13, v14}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_36

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->libname:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v4, v5}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 539
    :cond_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 540
    if-eqz v3, :cond_37

    .line 541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    invoke-static {v4, v13, v14}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_37

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/wrapper/proxyapplication/Util;->securename6:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v4, v5}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 545
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 546
    if-eqz v3, :cond_38

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    invoke-static {v4, v13, v14}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_38

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/wrapper/proxyapplication/Util;->securename7:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v2, v4}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 551
    :cond_38
    invoke-virtual {v7, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 552
    .end local v3    # "fileUnzip":Ljava/util/zip/ZipEntry;
    .local v2, "fileUnzip":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_39

    .line 553
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    invoke-static {v12, v3, v4}, Lcom/wrapper/proxyapplication/Util;->isFileValid(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_39

    .line 554
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v11, v3}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    .line 557
    :cond_39
    if-eqz v27, :cond_44

    .line 559
    :try_start_52
    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileLock;->release()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_52} :catch_49
    .catchall {:try_start_52 .. :try_end_52} :catchall_2c

    .line 565
    if-eqz v26, :cond_44

    .line 567
    :try_start_53
    invoke-virtual/range {v26 .. v26}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_53} :catch_46
    .catchall {:try_start_53 .. :try_end_53} :catchall_2b

    .line 573
    if-eqz v25, :cond_3a

    .line 575
    :try_start_54
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_54} :catch_45

    .line 580
    goto :goto_2e

    .line 576
    :catch_45
    move-exception v0

    move-object v1, v0

    .line 578
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .end local v1    # "e":Ljava/io/IOException;
    :cond_3a
    :goto_2e
    goto/16 :goto_3b

    .line 573
    :catchall_2b
    move-exception v0

    move-object v1, v0

    goto :goto_30

    .line 568
    :catch_46
    move-exception v0

    move-object v1, v0

    .line 570
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_55
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_2b

    .line 571
    nop

    .line 573
    if-eqz v25, :cond_3b

    .line 575
    :try_start_56
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_56} :catch_47

    .line 580
    const/4 v4, -0x1

    goto :goto_2f

    .line 576
    :catch_47
    move-exception v0

    move-object v3, v0

    .line 578
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v4, -0x1

    return v4

    .line 573
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3b
    const/4 v4, -0x1

    .line 571
    :goto_2f
    return v4

    .line 573
    .end local v1    # "e":Ljava/io/IOException;
    :goto_30
    if-eqz v25, :cond_3c

    .line 575
    :try_start_57
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_57} :catch_48

    .line 580
    goto :goto_31

    .line 576
    :catch_48
    move-exception v0

    move-object v1, v0

    .line 578
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .end local v1    # "e":Ljava/io/IOException;
    :cond_3c
    :goto_31
    throw v1

    .line 565
    :catchall_2c
    move-exception v0

    move-object v1, v0

    goto :goto_36

    .line 560
    :catch_49
    move-exception v0

    move-object v1, v0

    .line 562
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_58
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_2c

    .line 563
    nop

    .line 565
    if-eqz v26, :cond_40

    .line 567
    :try_start_59
    invoke-virtual/range {v26 .. v26}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_59} :catch_4b
    .catchall {:try_start_59 .. :try_end_59} :catchall_2d

    .line 573
    if-eqz v25, :cond_3d

    .line 575
    :try_start_5a
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5a} :catch_4a

    .line 580
    const/4 v4, -0x1

    goto :goto_35

    .line 576
    :catch_4a
    move-exception v0

    move-object v3, v0

    .line 578
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v4, -0x1

    return v4

    .line 573
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3d
    const/4 v4, -0x1

    goto :goto_35

    :catchall_2d
    move-exception v0

    move-object v3, v0

    goto :goto_33

    .line 568
    :catch_4b
    move-exception v0

    move-object v3, v0

    .line 570
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_2d

    .line 571
    nop

    .line 573
    if-eqz v25, :cond_3e

    .line 575
    :try_start_5c
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5c} :catch_4c

    .line 580
    const/4 v5, -0x1

    goto :goto_32

    .line 576
    :catch_4c
    move-exception v0

    move-object v4, v0

    .line 578
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v5, -0x1

    return v5

    .line 573
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3e
    const/4 v5, -0x1

    .line 571
    :goto_32
    return v5

    .line 573
    .end local v3    # "e":Ljava/io/IOException;
    :goto_33
    if-eqz v25, :cond_3f

    .line 575
    :try_start_5d
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5d} :catch_4d

    .line 580
    goto :goto_34

    .line 576
    :catch_4d
    move-exception v0

    move-object v3, v0

    .line 578
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v4, -0x1

    return v4

    .end local v3    # "e":Ljava/io/IOException;
    :cond_3f
    :goto_34
    throw v3

    .line 565
    :cond_40
    const/4 v4, -0x1

    .line 563
    :goto_35
    return v4

    .line 565
    .end local v1    # "e":Ljava/io/IOException;
    :goto_36
    if-eqz v26, :cond_43

    .line 567
    :try_start_5e
    invoke-virtual/range {v26 .. v26}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_5e} :catch_4f
    .catchall {:try_start_5e .. :try_end_5e} :catchall_2e

    .line 573
    if-eqz v25, :cond_43

    .line 575
    :try_start_5f
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_5f} :catch_4e

    .line 580
    goto :goto_3a

    .line 576
    :catch_4e
    move-exception v0

    move-object v1, v0

    .line 578
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .line 573
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2e
    move-exception v0

    move-object v1, v0

    goto :goto_38

    .line 568
    :catch_4f
    move-exception v0

    move-object v1, v0

    .line 570
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_60
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_2e

    .line 571
    nop

    .line 573
    if-eqz v25, :cond_41

    .line 575
    :try_start_61
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_61} :catch_50

    .line 580
    const/4 v4, -0x1

    goto :goto_37

    .line 576
    :catch_50
    move-exception v0

    move-object v3, v0

    .line 578
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v4, -0x1

    return v4

    .line 573
    .end local v3    # "e":Ljava/io/IOException;
    :cond_41
    const/4 v4, -0x1

    .line 571
    :goto_37
    return v4

    .line 573
    .end local v1    # "e":Ljava/io/IOException;
    :goto_38
    if-eqz v25, :cond_42

    .line 575
    :try_start_62
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_62} :catch_51

    .line 580
    goto :goto_39

    .line 576
    :catch_51
    move-exception v0

    move-object v1, v0

    .line 578
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    const/4 v3, -0x1

    return v3

    .end local v1    # "e":Ljava/io/IOException;
    :cond_42
    :goto_39
    throw v1

    :cond_43
    :goto_3a
    throw v1

    .line 586
    .end local v2    # "fileUnzip":Ljava/util/zip/ZipEntry;
    :cond_44
    :goto_3b
    throw v1
.end method

.method public static SafeUnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    .locals 2
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "filepathinzip"    # Ljava/lang/String;
    .param p2, "fileinfiledir"    # Ljava/io/File;

    .line 701
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/wrapper/proxyapplication/Util;->SafeUnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static SafeUnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;J)Z
    .locals 10
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "filepathinzip"    # Ljava/lang/String;
    .param p2, "fileinfiledir"    # Ljava/io/File;
    .param p3, "crc"    # J

    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, "Output_fos":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 707
    .local v1, "bufbr":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 708
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 709
    .local v3, "buf":[B
    const/4 v4, 0x0

    .line 712
    .local v4, "ifoverwrite":Z
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v2, v6

    .line 714
    if-nez v2, :cond_3

    .line 716
    nop

    .line 744
    if-eqz v0, :cond_2

    .line 746
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    if-eqz v1, :cond_2

    .line 754
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 759
    goto :goto_3

    .line 755
    :catch_0
    move-exception v6

    .line 757
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .line 752
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 747
    :catch_1
    move-exception v6

    .line 749
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 750
    nop

    .line 752
    if-eqz v1, :cond_0

    .line 754
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 759
    goto :goto_0

    .line 755
    :catch_2
    move-exception v7

    .line 757
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .line 750
    .end local v7    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return v5

    .line 752
    .end local v6    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v1, :cond_1

    .line 754
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 759
    goto :goto_2

    .line 755
    :catch_3
    move-exception v6

    .line 757
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    throw v6

    .line 716
    :cond_2
    :goto_3
    return v5

    .line 718
    :cond_3
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    cmp-long v9, p3, v6

    if-eqz v9, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    cmp-long v9, v6, p3

    if-nez v9, :cond_7

    .line 720
    nop

    .line 744
    if-eqz v0, :cond_6

    .line 746
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 752
    if-eqz v1, :cond_6

    .line 754
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 759
    goto :goto_7

    .line 755
    :catch_4
    move-exception v6

    .line 757
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .line 752
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    goto :goto_5

    .line 747
    :catch_5
    move-exception v6

    .line 749
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 750
    nop

    .line 752
    if-eqz v1, :cond_4

    .line 754
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 759
    goto :goto_4

    .line 755
    :catch_6
    move-exception v7

    .line 757
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .line 750
    .end local v7    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    return v5

    .line 752
    .end local v6    # "e":Ljava/io/IOException;
    :goto_5
    if-eqz v1, :cond_5

    .line 754
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 759
    goto :goto_6

    .line 755
    :catch_7
    move-exception v6

    .line 757
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    throw v6

    .line 720
    :cond_6
    :goto_7
    return v8

    .line 722
    :cond_7
    const/4 v4, 0x1

    .line 723
    :try_start_c
    invoke-static {p0, v2}, Lcom/wrapper/proxyapplication/Util;->UnzipFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B

    move-result-object v6

    move-object v3, v6

    .line 732
    if-eqz v4, :cond_8

    .line 733
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v6

    .line 734
    array-length v6, v3

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 737
    :cond_8
    nop

    .line 744
    if-eqz v0, :cond_b

    .line 746
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 752
    if-eqz v1, :cond_b

    .line 754
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 759
    goto :goto_b

    .line 755
    :catch_8
    move-exception v6

    .line 757
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .line 752
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v6

    goto :goto_9

    .line 747
    :catch_9
    move-exception v6

    .line 749
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 750
    nop

    .line 752
    if-eqz v1, :cond_9

    .line 754
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 759
    goto :goto_8

    .line 755
    :catch_a
    move-exception v7

    .line 757
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .line 750
    .end local v7    # "e":Ljava/io/IOException;
    :cond_9
    :goto_8
    return v5

    .line 752
    .end local v6    # "e":Ljava/io/IOException;
    :goto_9
    if-eqz v1, :cond_a

    .line 754
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 759
    goto :goto_a

    .line 755
    :catch_b
    move-exception v6

    .line 757
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .end local v6    # "e":Ljava/io/IOException;
    :cond_a
    :goto_a
    throw v6

    .line 737
    :cond_b
    :goto_b
    return v8

    .line 744
    :catchall_3
    move-exception v6

    goto :goto_10

    .line 739
    :catch_c
    move-exception v6

    .line 741
    .local v6, "e":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 742
    nop

    .line 744
    if-eqz v0, :cond_e

    .line 746
    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 752
    if-eqz v1, :cond_e

    .line 754
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 759
    goto :goto_f

    .line 755
    :catch_d
    move-exception v7

    .line 757
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .line 752
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v7

    goto :goto_d

    .line 747
    :catch_e
    move-exception v7

    .line 749
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 750
    nop

    .line 752
    if-eqz v1, :cond_c

    .line 754
    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    .line 759
    goto :goto_c

    .line 755
    :catch_f
    move-exception v8

    .line 757
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .line 750
    .end local v8    # "e":Ljava/io/IOException;
    :cond_c
    :goto_c
    return v5

    .line 752
    .end local v7    # "e":Ljava/io/IOException;
    :goto_d
    if-eqz v1, :cond_d

    .line 754
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    .line 759
    goto :goto_e

    .line 755
    :catch_10
    move-exception v7

    .line 757
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .end local v7    # "e":Ljava/io/IOException;
    :cond_d
    :goto_e
    throw v7

    .line 742
    :cond_e
    :goto_f
    return v5

    .line 744
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_10
    if-eqz v0, :cond_11

    .line 746
    :try_start_18
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_12
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 752
    if-eqz v1, :cond_11

    .line 754
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    .line 759
    goto :goto_14

    .line 755
    :catch_11
    move-exception v6

    .line 757
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .line 752
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v6

    goto :goto_12

    .line 747
    :catch_12
    move-exception v6

    .line 749
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 750
    nop

    .line 752
    if-eqz v1, :cond_f

    .line 754
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_13

    .line 759
    goto :goto_11

    .line 755
    :catch_13
    move-exception v7

    .line 757
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .line 750
    .end local v7    # "e":Ljava/io/IOException;
    :cond_f
    :goto_11
    return v5

    .line 752
    .end local v6    # "e":Ljava/io/IOException;
    :goto_12
    if-eqz v1, :cond_10

    .line 754
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_14

    .line 759
    goto :goto_13

    .line 755
    :catch_14
    move-exception v6

    .line 757
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    return v5

    .end local v6    # "e":Ljava/io/IOException;
    :cond_10
    :goto_13
    throw v6

    :cond_11
    :goto_14
    throw v6
.end method

.method public static UnzipFile(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    .locals 7
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "filepathinzip"    # Ljava/lang/String;
    .param p2, "fileinfiledir"    # Ljava/io/File;

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "Output_fos":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 194
    .local v1, "bufbr":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 198
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v2, v4

    .line 200
    if-nez v2, :cond_3

    .line 202
    nop

    .line 228
    if-eqz v0, :cond_2

    .line 231
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    if-eqz v1, :cond_2

    .line 239
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    goto :goto_3

    .line 240
    :catch_0
    move-exception v4

    .line 242
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 232
    :catch_1
    move-exception v4

    .line 234
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    nop

    .line 237
    if-eqz v1, :cond_0

    .line 239
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 244
    goto :goto_0

    .line 240
    :catch_2
    move-exception v5

    .line 242
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .line 235
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return v3

    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v1, :cond_1

    .line 239
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 244
    goto :goto_2

    .line 240
    :catch_3
    move-exception v4

    .line 242
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    throw v4

    .line 202
    :cond_2
    :goto_3
    return v3

    .line 205
    :cond_3
    :try_start_6
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v4

    .line 206
    const/high16 v4, 0x10000

    new-array v4, v4, [B

    .line 208
    .local v4, "buf":[B
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v5

    .line 211
    :goto_4
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 212
    .local v5, "readlen":I
    if-gez v5, :cond_4

    .line 213
    nop

    .line 228
    .end local v4    # "buf":[B
    .end local v5    # "readlen":I
    nop

    .line 231
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 237
    nop

    .line 239
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 244
    nop

    .line 243
    nop

    .line 249
    const/4 v3, 0x1

    return v3

    .line 240
    :catch_4
    move-exception v4

    .line 242
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    goto :goto_5

    .line 232
    :catch_5
    move-exception v4

    .line 234
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 235
    nop

    .line 237
    nop

    .line 239
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 244
    nop

    .line 235
    return v3

    .line 240
    :catch_6
    move-exception v5

    .line 242
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .line 239
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 244
    nop

    .line 243
    throw v4

    .line 240
    :catch_7
    move-exception v4

    .line 242
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .line 216
    .local v4, "buf":[B
    .local v5, "readlen":I
    :cond_4
    :try_start_c
    invoke-virtual {v0, v4, v3, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 218
    .end local v5    # "readlen":I
    goto :goto_4

    .line 228
    .end local v4    # "buf":[B
    :catchall_2
    move-exception v4

    goto :goto_a

    .line 220
    :catch_8
    move-exception v4

    .line 222
    .local v4, "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 223
    nop

    .line 228
    if-eqz v0, :cond_7

    .line 231
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 237
    if-eqz v1, :cond_7

    .line 239
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 244
    goto :goto_9

    .line 240
    :catch_9
    move-exception v5

    .line 242
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .line 237
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v5

    goto :goto_7

    .line 232
    :catch_a
    move-exception v5

    .line 234
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 235
    nop

    .line 237
    if-eqz v1, :cond_5

    .line 239
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 244
    goto :goto_6

    .line 240
    :catch_b
    move-exception v6

    .line 242
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .line 235
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    return v3

    .line 237
    .end local v5    # "e":Ljava/io/IOException;
    :goto_7
    if-eqz v1, :cond_6

    .line 239
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 244
    goto :goto_8

    .line 240
    :catch_c
    move-exception v5

    .line 242
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_8
    throw v5

    .line 223
    :cond_7
    :goto_9
    return v3

    .line 228
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_a
    if-eqz v0, :cond_a

    .line 231
    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 237
    if-eqz v1, :cond_a

    .line 239
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 244
    goto :goto_e

    .line 240
    :catch_d
    move-exception v4

    .line 242
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v4

    goto :goto_c

    .line 232
    :catch_e
    move-exception v4

    .line 234
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 235
    nop

    .line 237
    if-eqz v1, :cond_8

    .line 239
    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    .line 244
    goto :goto_b

    .line 240
    :catch_f
    move-exception v5

    .line 242
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .line 235
    .end local v5    # "e":Ljava/io/IOException;
    :cond_8
    :goto_b
    return v3

    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    :goto_c
    if-eqz v1, :cond_9

    .line 239
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    .line 244
    goto :goto_d

    .line 240
    :catch_10
    move-exception v4

    .line 242
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    return v3

    .end local v4    # "e":Ljava/io/IOException;
    :cond_9
    :goto_d
    throw v4

    :cond_a
    :goto_e
    throw v4
.end method

.method public static UnzipFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B
    .locals 9
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 770
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    .line 771
    .local v0, "buf":[B
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 773
    .local v1, "bufbr":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 775
    .local v2, "totallen":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    long-to-int v4, v3

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 776
    .local v3, "readlen":I
    if-gez v3, :cond_0

    .line 777
    goto :goto_1

    .line 779
    :cond_0
    add-int/2addr v2, v3

    .line 780
    int-to-long v4, v2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 781
    nop

    .line 786
    .end local v3    # "readlen":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    long-to-int v4, v3

    if-ne v2, v4, :cond_1

    .line 790
    return-object v0

    .line 788
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "incorrect zip file size"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 785
    :cond_2
    goto :goto_0
.end method

.method private static checkCopiedFileCrc(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    .locals 7
    .param p0, "zf"    # Ljava/util/zip/ZipFile;
    .param p1, "filepathinzip"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 837
    invoke-static {p2}, Lcom/wrapper/proxyapplication/Util;->getFileCRC32(Ljava/io/File;)J

    move-result-wide v0

    .line 839
    .local v0, "crc":J
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 840
    return v2

    .line 841
    :cond_0
    const/4 v3, 0x0

    .line 844
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    move-object v3, v4

    .line 846
    if-nez v3, :cond_1

    .line 848
    return v2

    .line 850
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v4, v0

    if-nez v6, :cond_2

    .line 853
    const/4 v2, 0x1

    return v2

    .line 858
    :cond_2
    nop

    .line 859
    return v2

    .line 856
    :catch_0
    move-exception v4

    .line 857
    .local v4, "e":Ljava/lang/Exception;
    return v2
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .line 317
    const/4 v0, 0x1

    .line 318
    .local v0, "result":Z
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 322
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/wrapper/proxyapplication/Util;->deleteDir(Ljava/io/File;)Z

    move-result v3

    .line 323
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 324
    const/4 v4, 0x0

    return v4

    .line 321
    .end local v3    # "success":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 333
    :cond_2
    return v0
.end method

.method public static getCRC32(Ljava/io/File;)J
    .locals 8
    .param p0, "fileUri"    # Ljava/io/File;

    .line 652
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 654
    .local v0, "crc32":Ljava/util/zip/CRC32;
    const/4 v1, 0x0

    .line 655
    .local v1, "bufbr":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 656
    .local v2, "checkedinputstream":Ljava/util/zip/CheckedInputStream;
    const-wide/16 v3, 0x0

    .line 659
    .local v3, "crc":J
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v5

    .line 660
    new-instance v5, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v5, v1, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object v2, v5

    .line 661
    const/high16 v5, 0x10000

    new-array v5, v5, [B

    .line 662
    .local v5, "buf":[B
    :goto_0
    invoke-virtual {v2, v5}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v6

    move-wide v3, v6

    .line 666
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "buf":[B
    goto :goto_1

    .line 671
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 669
    :catch_0
    move-exception v5

    .line 670
    .local v5, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 667
    :catch_1
    move-exception v5

    .line 668
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    nop

    .line 687
    return-wide v3

    .line 671
    :goto_2
    throw v5
.end method

.method private static getFileCRC32(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .line 795
    const-wide/16 v0, -0x1

    .line 796
    .local v0, "result":J
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [B

    .line 797
    .local v2, "filebuf":[B
    const/4 v3, 0x0

    .line 798
    .local v3, "filebr":Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 800
    .local v4, "crc32":Ljava/util/zip/CRC32;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    .line 801
    const/4 v5, 0x0

    .line 803
    .local v5, "totallen":I
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .line 804
    .local v6, "readlen":I
    if-gez v6, :cond_0

    .line 805
    nop

    .line 814
    .end local v6    # "readlen":I
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v6

    .line 822
    .end local v5    # "totallen":I
    nop

    .line 824
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 828
    :goto_1
    goto :goto_2

    .line 825
    :catch_0
    move-exception v5

    .line 827
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 807
    .local v5, "totallen":I
    .restart local v6    # "readlen":I
    :cond_0
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 808
    add-int/2addr v5, v6

    .line 812
    .end local v6    # "readlen":I
    goto :goto_0

    .line 822
    .end local v5    # "totallen":I
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 818
    :catch_1
    move-exception v5

    .line 820
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 822
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1

    .line 824
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 815
    :catch_2
    move-exception v5

    .line 817
    .local v5, "e1":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 822
    .end local v5    # "e1":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1

    .line 824
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 832
    :cond_1
    :goto_2
    return-wide v0

    .line 822
    :goto_3
    if-eqz v3, :cond_2

    .line 824
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 828
    goto :goto_4

    .line 825
    :catch_3
    move-exception v6

    .line 827
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 828
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v5
.end method

.method public static getelffilearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "elffile"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    .line 130
    .local v0, "file_arch":Ljava/lang/String;
    invoke-static {p0}, Lcom/wrapper/proxyapplication/Util;->readelfarch(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, "archcode":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/16 v2, 0x28

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb7

    if-eq v1, v2, :cond_0

    .line 156
    const-string v0, "unknown"

    goto :goto_0

    .line 152
    :cond_0
    const-string v0, "arm64-v8a"

    .line 154
    goto :goto_0

    .line 147
    :cond_1
    const-string v0, "86_64"

    .line 149
    goto :goto_0

    .line 141
    :cond_2
    const-string v0, "armeabi"

    .line 143
    goto :goto_0

    .line 137
    :cond_3
    const-string v0, "86"

    .line 139
    nop

    .line 166
    :goto_0
    return-object v0
.end method

.method private static isFileValid(Ljava/lang/String;J)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # J

    .line 591
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, "tmpfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 594
    const/4 v1, 0x1

    return v1

    .line 597
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static readelfarch(Ljava/lang/String;)I
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "c":I
    const/4 v1, 0x0

    .line 96
    .local v1, "rf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 97
    const-wide/16 v2, 0x12

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 98
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 108
    nop

    .line 109
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :cond_0
    :goto_0
    goto :goto_1

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 103
    :catch_1
    move-exception v2

    .line 104
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 109
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 100
    :catch_2
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_0

    .line 109
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 117
    :goto_1
    return v0

    .line 108
    :goto_2
    if-eqz v1, :cond_1

    .line 109
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 111
    :catch_3
    move-exception v3

    .line 112
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 114
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    :goto_4
    throw v2
.end method
