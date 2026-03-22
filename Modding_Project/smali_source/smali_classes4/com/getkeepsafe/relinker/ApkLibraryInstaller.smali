.class public Lcom/getkeepsafe/relinker/ApkLibraryInstaller;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x1

    .line 14
    add-int/2addr v1, v2

    .line 15
    new-array v1, v1, [Ljava/lang/String;

    .line 16
    .line 17
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object p1, v1, v3

    .line 21
    .line 22
    array-length p1, v0

    .line 23
    invoke-static {v0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 28
    .line 29
    filled-new-array {p1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "lib"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "([^\\"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "]*)"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-instance v0, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    array-length v1, p1

    .line 53
    const/4 v2, 0x0

    .line 54
    :goto_0
    if-ge v2, v1, :cond_2

    .line 55
    .line 56
    aget-object v3, p1, v2

    .line 57
    .line 58
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    .line 59
    .line 60
    new-instance v5, Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-direct {v4, v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {p2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_0

    .line 98
    .line 99
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    new-array p1, p1, [Ljava/lang/String;

    .line 115
    .line 116
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, [Ljava/lang/String;

    .line 121
    .line 122
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinkerInstance;)Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual/range {p0 .. p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    array-length v3, v2

    .line 9
    const/4 v4, 0x0

    .line 10
    move v5, v4

    .line 11
    :goto_0
    const/4 v6, 0x0

    .line 12
    if-ge v5, v3, :cond_5

    .line 13
    .line 14
    aget-object v7, v2, v5

    .line 15
    .line 16
    move v8, v4

    .line 17
    :goto_1
    add-int/lit8 v9, v8, 0x1

    .line 18
    .line 19
    const/4 v10, 0x5

    .line 20
    if-ge v8, v10, :cond_0

    .line 21
    .line 22
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    .line 23
    .line 24
    new-instance v11, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v8, v11, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    move-object v6, v8

    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move v8, v9

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_2
    if-nez v6, :cond_1

    .line 37
    .line 38
    move-object/from16 v12, p3

    .line 39
    .line 40
    move/from16 v16, v1

    .line 41
    .line 42
    move-object/from16 v1, p4

    .line 43
    .line 44
    goto :goto_5

    .line 45
    :cond_1
    move v8, v4

    .line 46
    :goto_3
    add-int/lit8 v9, v8, 0x1

    .line 47
    .line 48
    if-ge v8, v10, :cond_4

    .line 49
    .line 50
    array-length v8, v0

    .line 51
    move v11, v4

    .line 52
    :goto_4
    if-ge v11, v8, :cond_3

    .line 53
    .line 54
    aget-object v12, v0, v11

    .line 55
    .line 56
    new-instance v13, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v14, "lib"

    .line 62
    .line 63
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    sget-char v14, Ljava/io/File;->separatorChar:C

    .line 67
    .line 68
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-object/from16 v12, p3

    .line 78
    .line 79
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    const-string v14, "Looking for %s in APK %s..."

    .line 87
    .line 88
    const/4 v15, 0x2

    .line 89
    new-array v15, v15, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object v13, v15, v4

    .line 92
    .line 93
    aput-object v7, v15, v1

    .line 94
    .line 95
    move/from16 v16, v1

    .line 96
    .line 97
    move-object/from16 v1, p4

    .line 98
    .line 99
    invoke-virtual {v1, v14, v15}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    if-eqz v13, :cond_2

    .line 107
    .line 108
    new-instance v0, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;

    .line 109
    .line 110
    invoke-direct {v0, v6, v13}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    .line 111
    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 115
    .line 116
    move/from16 v1, v16

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_3
    move-object/from16 v12, p3

    .line 120
    .line 121
    move/from16 v16, v1

    .line 122
    .line 123
    move-object/from16 v1, p4

    .line 124
    .line 125
    move v8, v9

    .line 126
    move/from16 v1, v16

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_4
    move-object/from16 v12, p3

    .line 130
    .line 131
    move/from16 v16, v1

    .line 132
    .line 133
    move-object/from16 v1, p4

    .line 134
    .line 135
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .line 137
    .line 138
    :catch_1
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    move/from16 v1, v16

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_5
    return-object v6
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, -0x1

    .line 12
    if-ne v3, v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 15
    .line 16
    .line 17
    return-wide v1

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 20
    .line 21
    .line 22
    int-to-long v3, v3

    .line 23
    add-long/2addr v1, v3

    .line 24
    goto :goto_0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/getkeepsafe/relinker/ReLinkerInstance;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetWorldReadable"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinkerInstance;)Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;

    .line 5
    .line 6
    .line 7
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 8
    if-eqz v3, :cond_4

    .line 9
    .line 10
    move p1, v0

    .line 11
    :goto_0
    add-int/lit8 p2, p1, 0x1

    .line 12
    .line 13
    const/4 v4, 0x5

    .line 14
    if-ge p1, v4, :cond_2

    .line 15
    .line 16
    :try_start_1
    const-string p1, "Found %s! Extracting..."

    .line 17
    .line 18
    new-array v4, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object p3, v4, v0

    .line 21
    .line 22
    invoke-virtual {p5, p1, v4}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z

    .line 32
    .line 33
    .line 34
    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    goto/16 :goto_7

    .line 38
    .line 39
    :catchall_0
    move-exception p1

    .line 40
    move-object v2, v3

    .line 41
    goto/16 :goto_a

    .line 42
    .line 43
    :cond_0
    :try_start_3
    iget-object p1, v3, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/ZipFile;

    .line 44
    .line 45
    iget-object v4, v3, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/ZipEntry;

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 51
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    .line 52
    .line 53
    invoke-direct {v4, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 54
    .line 55
    .line 56
    :try_start_5
    invoke-virtual {p0, p1, v4}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p4}, Ljava/io/File;->length()J

    .line 68
    .line 69
    .line 70
    move-result-wide v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 71
    cmp-long v5, v5, v7

    .line 72
    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-virtual {p0, v4}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 79
    .line 80
    .line 81
    goto :goto_7

    .line 82
    :cond_1
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v4}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p4, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {p4, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 95
    .line 96
    .line 97
    :try_start_7
    iget-object p1, v3, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/ZipFile;

    .line 98
    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    :goto_2
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 102
    .line 103
    .line 104
    goto :goto_8

    .line 105
    :catchall_1
    move-exception p2

    .line 106
    :goto_3
    move-object v2, p1

    .line 107
    goto :goto_4

    .line 108
    :catchall_2
    move-exception p2

    .line 109
    move-object v4, v2

    .line 110
    goto :goto_3

    .line 111
    :catch_0
    move-object v4, v2

    .line 112
    goto :goto_5

    .line 113
    :catch_1
    move-object v4, v2

    .line 114
    goto :goto_6

    .line 115
    :catchall_3
    move-exception p2

    .line 116
    move-object v4, v2

    .line 117
    goto :goto_4

    .line 118
    :catch_2
    move-object p1, v2

    .line 119
    move-object v4, p1

    .line 120
    goto :goto_5

    .line 121
    :catch_3
    move-object p1, v2

    .line 122
    move-object v4, p1

    .line 123
    goto :goto_6

    .line 124
    :goto_4
    :try_start_8
    invoke-virtual {p0, v2}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v4}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 128
    .line 129
    .line 130
    throw p2

    .line 131
    :catch_4
    :goto_5
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catch_5
    :goto_6
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catch_6
    :goto_7
    move p1, p2

    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_2
    const-string p1, "FATAL! Couldn\'t extract the library from the APK!"

    .line 143
    .line 144
    invoke-virtual {p5, p1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 145
    .line 146
    .line 147
    :try_start_9
    iget-object p1, v3, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/ZipFile;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 148
    .line 149
    if-eqz p1, :cond_3

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catch_7
    :cond_3
    :goto_8
    return-void

    .line 153
    :cond_4
    :try_start_a
    invoke-virtual {p0, p1, p3}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 157
    goto :goto_9

    .line 158
    :catch_8
    move-exception p1

    .line 159
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    filled-new-array {p1}, [Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    :goto_9
    new-instance p4, Lcom/getkeepsafe/relinker/MissingLibraryException;

    .line 168
    .line 169
    invoke-direct {p4, p3, p2, p1}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 173
    :catchall_4
    move-exception p1

    .line 174
    :goto_a
    if-eqz v2, :cond_5

    .line 175
    .line 176
    :try_start_c
    iget-object p2, v2, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/ZipFile;

    .line 177
    .line 178
    if-eqz p2, :cond_5

    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 181
    .line 182
    .line 183
    :catch_9
    :cond_5
    throw p1
.end method
