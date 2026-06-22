.class public Lcom/wrapper/proxyapplication/CustomerClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "CustomerClassLoader.java"


# static fields
.field private static final VERBOSE_DEBUG:Z


# instance fields
.field private initialized:Z

.field private final libPath:Ljava/lang/String;

.field private final mDexOutputPath:Ljava/lang/String;

.field private mDexs:[Ldalvik/system/DexFile;

.field private mFiles:[Ljava/io/File;

.field private mLibPaths:[Ljava/lang/String;

.field private mPaths:[Ljava/lang/String;

.field private mZips:[Ljava/util/zip/ZipFile;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/lang/String;
    .param p3, "libPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, p3, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 76
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 79
    iput-object p1, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->path:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->libPath:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexOutputPath:Ljava/lang/String;

    .line 83
    :try_start_0
    const-string v0, "parent"

    invoke-static {p4, v0}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 84
    .local v0, "parentLoader":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p4, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ensureInit()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "parentLoader":Ljava/lang/reflect/Field;
    nop

    .line 93
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e2":Ljava/io/IOException;
    throw v0

    .line 86
    .end local v0    # "e2":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    throw v0

    .line 77
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private native ShowLogs(Ljava/lang/String;I)I
.end method

.method private declared-synchronized ensureInit()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 97
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->initialized:Z

    .line 102
    iget-object v0, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->path:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    array-length v0, v0

    .line 106
    .local v0, "length":I
    new-array v1, v0, [Ljava/io/File;

    iput-object v1, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mFiles:[Ljava/io/File;

    .line 107
    new-array v1, v0, [Ljava/util/zip/ZipFile;

    iput-object v1, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    .line 108
    new-array v1, v0, [Ldalvik/system/DexFile;

    iput-object v1, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexs:[Ldalvik/system/DexFile;

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 113
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "pathFile":Ljava/io/File;
    iget-object v3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mFiles:[Ljava/io/File;

    aput-object v2, v3, v1

    .line 115
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-le v3, v4, :cond_1

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->setReadOnly()Z

    .line 118
    .end local p0    # "this":Lcom/wrapper/proxyapplication/CustomerClassLoader;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 120
    :try_start_2
    iget-object v3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v4, v3, v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    goto :goto_1

    .line 121
    :catch_0
    move-exception v3

    .line 129
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexOutputPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexOutputPath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "outputName":Ljava/lang/String;
    iget-object v4, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexs:[Ldalvik/system/DexFile;

    iget-object v5, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    .end local v3    # "outputName":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 136
    :catch_1
    move-exception v3

    .line 138
    .local v3, "ioex":Ljava/lang/RuntimeException;
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "load dex fail"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    .end local v3    # "ioex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v3

    .line 135
    .local v3, "ioex":Ljava/io/IOException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "load dex fail"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    .end local v2    # "pathFile":Ljava/io/File;
    .end local v3    # "ioex":Ljava/io/IOException;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_4
    const-string v1, "java.library.path"

    const-string v2, "."

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "pathList":Ljava/lang/String;
    const-string v2, "path.separator"

    const-string v3, ":"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "pathSep":Ljava/lang/String;
    const-string v3, "file.separator"

    const-string v4, "/"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "fileSep":Ljava/lang/String;
    iget-object v4, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->libPath:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 152
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->libPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "tmpPathList":Ljava/lang/String;
    move-object v1, v4

    .line 156
    .end local v4    # "tmpPathList":Ljava/lang/String;
    goto :goto_3

    .line 157
    :cond_5
    iget-object v4, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->libPath:Ljava/lang/String;

    move-object v1, v4

    .line 161
    :cond_6
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    .line 162
    iget-object v4, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v4, v4

    move v0, v4

    .line 166
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_8

    .line 167
    iget-object v5, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v7, v6, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 172
    .end local v4    # "i":I
    :cond_8
    monitor-exit p0

    return-void

    .line 95
    .end local v0    # "length":I
    .end local v1    # "pathList":Ljava/lang/String;
    .end local v2    # "pathSep":Ljava/lang/String;
    .end local v3    # "fileSep":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 500
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 502
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_0
    return-object v1

    .line 507
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 498
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 512
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "sourcePathName"    # Ljava/lang/String;
    .param p1, "outputDir"    # Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v0, "newStr":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 189
    .local v1, "lastSlash":I
    if-gez v1, :cond_1

    .line 190
    move-object v2, p0

    .local v2, "sourceFileName":Ljava/lang/String;
    goto :goto_0

    .line 192
    .end local v2    # "sourceFileName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    .restart local v2    # "sourceFileName":Ljava/lang/String;
    :goto_0
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 203
    .local v3, "lastDot":I
    if-gez v3, :cond_2

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 206
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 207
    :goto_1
    const-string v4, ".dex"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isInArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .locals 1
    .param p1, "zip"    # Ljava/util/zip/ZipFile;
    .param p2, "name"    # Ljava/lang/String;

    .line 417
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    .locals 7
    .param p1, "zip"    # Ljava/util/zip/ZipFile;
    .param p2, "name"    # Ljava/lang/String;

    .line 383
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 384
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 385
    return-object v1

    .line 397
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 398
    .local v2, "stream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 399
    .local v3, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 400
    .local v4, "buf":[B
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "count":I
    if-lez v5, :cond_1

    .line 401
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v4    # "buf":[B
    nop

    .line 410
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 404
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "count":I
    :catch_0
    move-exception v2

    .line 406
    .local v2, "ioex":Ljava/io/IOException;
    return-object v1
.end method

.method private loadFromDirectory(Ljava/lang/String;)[B
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 355
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 359
    .local v0, "raf":Ljava/io/RandomAccessFile;
    nop

    .line 362
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int v2, v1

    new-array v1, v2, [B

    .line 363
    .local v1, "fileData":[B
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 364
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    goto :goto_0

    .line 365
    .end local v1    # "fileData":[B
    :catch_0
    move-exception v1

    .line 368
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 371
    .local v1, "fileData":[B
    :goto_0
    return-object v1

    .line 356
    .end local v0    # "raf":Ljava/io/RandomAccessFile;
    .end local v1    # "fileData":[B
    :catch_1
    move-exception v0

    .line 358
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 226
    :try_start_0
    invoke-direct {p0}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ensureInit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    .line 235
    .local v0, "data":[B
    iget-object v1, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    array-length v1, v1

    .line 237
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 239
    iget-object v3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v3, v3, v2

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    if-eqz v3, :cond_2

    .line 240
    invoke-direct {p0, p1, v2}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ShowLogs(Ljava/lang/String;I)I

    .line 241
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "slashName":Ljava/lang/String;
    iget-object v4, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 243
    .local v4, "clazz":Ljava/lang/Class;
    if-eqz v4, :cond_0

    .line 244
    return-object v4

    .line 249
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    .local v5, "cla":Ljava/lang/Class;
    if-eqz v5, :cond_1

    .line 253
    return-object v5

    .line 257
    .end local v5    # "cla":Ljava/lang/Class;
    :cond_1
    goto :goto_2

    .line 255
    :catch_1
    move-exception v5

    .line 260
    .end local v3    # "slashName":Ljava/lang/String;
    .end local v4    # "clazz":Ljava/lang/Class;
    :goto_2
    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v3, v3, v2

    const-string v6, ".class"

    if-eqz v3, :cond_3

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v4, v4, v2

    invoke-direct {p0, v4, v3}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    move-result-object v0

    .line 263
    .end local v3    # "fileName":Ljava/lang/String;
    goto :goto_3

    .line 264
    :cond_3
    iget-object v3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mFiles:[Ljava/io/File;

    aget-object v3, v3, v2

    .line 265
    .local v3, "pathFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "fileName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->loadFromDirectory(Ljava/lang/String;)[B

    move-result-object v0

    .line 237
    .end local v3    # "pathFile":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    .end local v2    # "i":I
    :cond_5
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in loader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "libname"    # Ljava/lang/String;

    .line 430
    :try_start_0
    invoke-direct {p0}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ensureInit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 436
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "pathName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .local v3, "test":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    return-object v2

    .line 444
    :cond_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, "path":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 448
    return-object v4

    .line 437
    .end local v2    # "pathName":Ljava/lang/String;
    .end local v3    # "test":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 453
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 307
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 308
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_0

    .line 311
    return-object v0

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    array-length v1, v1

    .line 315
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 316
    iget-object v3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mFiles:[Ljava/io/File;

    aget-object v3, v3, v2

    .line 317
    .local v3, "pathFile":Ljava/io/File;
    iget-object v4, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v4, v4, v2

    .line 318
    .local v4, "zip":Ljava/util/zip/ZipFile;
    iget-object v5, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, ".dex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 319
    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 327
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jar:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "!/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 328
    :catch_0
    move-exception v5

    .line 329
    .local v5, "e":Ljava/net/MalformedURLException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 315
    .end local v3    # "pathFile":Ljava/io/File;
    .end local v4    # "zip":Ljava/util/zip/ZipFile;
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 480
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    monitor-enter p0

    .line 482
    :try_start_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    .line 484
    .local v0, "pack":Ljava/lang/Package;
    if-nez v0, :cond_0

    .line 485
    const-string v3, "Unknown"

    const-string v4, "0.0"

    const-string v5, "Unknown"

    const-string v6, "Unknown"

    const-string v7, "0.0"

    const-string v8, "Unknown"

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v1

    move-object v0, v1

    .line 488
    :cond_0
    monitor-exit p0

    return-object v0

    .line 489
    .end local v0    # "pack":Ljava/lang/Package;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 492
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
